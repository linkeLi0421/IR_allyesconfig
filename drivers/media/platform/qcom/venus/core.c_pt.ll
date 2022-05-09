; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/core.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hfi_core_ops = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.venus_resources = type { i64, ptr, i32, ptr, i32, ptr, i32, ptr, i32, [4 x ptr], i32, [2 x ptr], [2 x ptr], i32, [3 x ptr], i32, ptr, i32, [2 x ptr], i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.freq_tbl = type { i32, i32 }
%struct.reg_val = type { i32, i32 }
%struct.bw_tbl = type { i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.venus_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x ptr], [2 x ptr], [2 x ptr], ptr, ptr, i8, [3 x ptr], ptr, ptr, [2 x ptr], ptr, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, i32, %struct.video_firmware, %struct.mutex, %struct.list_head, %struct.atomic_t, i32, %struct.completion, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.mutex, i32, i32, i32, ptr, ptr, %struct.delayed_work, [32 x %struct.hfi_plat_caps], i32, i32, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_firmware = type { ptr, ptr, i32, i32, i32 }
%struct.hfi_plat_caps = type { i32, i32, i8, i32, [32 x %struct.hfi_capability], i32, [16 x %struct.hfi_profile_level], i32, [32 x %struct.raw_formats], i8 }
%struct.hfi_capability = type { i32, i32, i32, i32 }
%struct.hfi_profile_level = type { i32, i32 }
%struct.raw_formats = type { i32, i32 }
%struct.venus_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hfi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hfi_inst_ops = type { ptr, ptr, ptr }
%struct.venus_inst = type { %struct.list_head, %struct.mutex, ptr, %struct.clock_data, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i8, %struct.v4l2_ctrl_handler, %union.anon.120, %struct.v4l2_fh, i32, i32, i32, i32, %struct.v4l2_rect, i32, i32, i32, i32, i8, i8, i8, i32, %struct.wait_queue_head, i32, i32, [32 x %struct.venus_ts_metadata], [32 x i32], i64, %struct.v4l2_fract, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, i32, %struct.completion, i32, i8, ptr, i32, %union.hfi_get_property, i8, i32, i32, i8, i8, i32, %struct.ida }
%struct.clock_data = type { i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%union.anon.120 = type { %struct.vdec_controls, [224 x i8] }
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

@__initcall__kmod_venus_core__299_884_qcom_venus_driver_init6 = internal global ptr @qcom_venus_driver_init, section ".initcall6.init", align 4
@qcom_venus_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @venus_probe, ptr @venus_remove, ptr @venus_core_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @venus_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venus_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_venus_driver_exit = internal global ptr @qcom_venus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias300 = internal constant [37 x i8] c"venus_core.alias=platform:qcom-venus\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [71 x i8] c"venus_core.description=Qualcomm Venus video encoder and decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [61 x i8] c"venus_core.file=drivers/media/platform/qcom/venus/venus-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [26 x i8] c"venus_core.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom-venus\00", [21 x i8] zeroinitializer }, align 32
@venus_dt_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8916-venus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8916_res }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-venus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8996_res }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm660-venus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm660_res }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-venus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_res }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-venus-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_res_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-venus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7180_res }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-venus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7280_res }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-venus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_res }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@venus_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venus_runtime_suspend, ptr @venus_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"video-mem\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpu-cfg\00", [24 x i8] zeroinitializer }, align 32
@venus_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&core->pm_lock\00", [17 x i8] zeroinitializer }, align 32
@venus_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&core->lock\00", [20 x i8] zeroinitializer }, align 32
@venus_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&core->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@venus_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&core->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@venus_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&core->sys_err_done\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"venus\00", [26 x i8] zeroinitializer }, align 32
@venus_core_ops = internal constant { %struct.hfi_core_ops, [28 x i8] } { %struct.hfi_core_ops { ptr @venus_event_notify }, [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"resume runtime PM\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"boot Venus\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"resume HFI\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init HFI\00", [23 x i8] zeroinitializer }, align 32
@venus_sys_error_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.venus_sys_error_handler = private unnamed_addr constant [24 x i8] c"venus_sys_error_handler\00", align 1
@venus_sys_error_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.venus_sys_error_handler, ptr @.str.20, i32 157, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"System error has occurred, recovery failed to %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/platform/qcom/venus/core.c\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@venus_sys_error_handler._entry_ptr = internal global ptr @venus_sys_error_handler._entry, section ".printk_index", align 4
@venus_sys_error_handler._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.venus_sys_error_handler, ptr @.str.20, i32 162, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"system error has occurred (recovered)\0A\00", [57 x i8] zeroinitializer }, align 32
@venus_sys_error_handler._entry_ptr.25 = internal global ptr @venus_sys_error_handler._entry.23, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@venus_enumerate_codecs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&inst->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@msm8916_res = internal constant { %struct.venus_resources, [32 x i8] } { %struct.venus_resources { i64 3720347647, ptr @msm8916_freq_table, i32 3, ptr null, i32 0, ptr null, i32 0, ptr @msm8916_reg_preset, i32 3, [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr null], i32 3, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, i32 0, [3 x ptr] zeroinitializer, i32 0, ptr null, i32 0, [2 x ptr] zeroinitializer, i32 0, i32 0, i8 0, i32 352800, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.str.30 }, [32 x i8] zeroinitializer }, align 32
@msm8996_res = internal constant { %struct.venus_resources, [32 x i8] } { %struct.venus_resources { i64 3720347647, ptr @msm8996_freq_table, i32 5, ptr null, i32 0, ptr null, i32 0, ptr @msm8996_reg_preset, i32 3, [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31], i32 4, [2 x ptr] [ptr @.str.27, ptr null], [2 x ptr] [ptr @.str.27, ptr null], i32 1, [3 x ptr] zeroinitializer, i32 0, ptr null, i32 0, [2 x ptr] zeroinitializer, i32 0, i32 1, i8 0, i32 2563200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.str.32 }, [32 x i8] zeroinitializer }, align 32
@sdm660_res = internal constant { %struct.venus_resources, [32 x i8] } { %struct.venus_resources { i64 3640655871, ptr @sdm660_freq_table, i32 6, ptr @sdm660_bw_table_enc, i32 7, ptr @sdm660_bw_table_dec, i32 7, ptr @sdm660_reg_preset, i32 3, [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.33], i32 4, [2 x ptr] [ptr @.str.34, ptr null], [2 x ptr] [ptr @.str.34, ptr null], i32 1, [3 x ptr] zeroinitializer, i32 0, ptr null, i32 1, [2 x ptr] zeroinitializer, i32 0, i32 1, i8 0, i32 1036800, i32 0, i32 0, i32 0, i32 0, i32 2030043136, i32 16777216, i32 671088640, ptr @.str.35 }, [32 x i8] zeroinitializer }, align 32
@sdm845_res = internal constant { %struct.venus_resources, [32 x i8] } { %struct.venus_resources { i64 3758096383, ptr @sdm845_freq_table, i32 6, ptr @sdm845_bw_table_enc, i32 4, ptr @sdm845_bw_table_dec, i32 4, ptr null, i32 0, [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr null], i32 3, [2 x ptr] [ptr @.str.27, ptr @.str.29], [2 x ptr] [ptr @.str.27, ptr @.str.29], i32 2, [3 x ptr] zeroinitializer, i32 0, ptr null, i32 0, [2 x ptr] zeroinitializer, i32 0, i32 2, i8 0, i32 3110400, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.str.36 }, [32 x i8] zeroinitializer }, align 32
@sdm845_res_v2 = internal constant { %struct.venus_resources, [32 x i8] } { %struct.venus_resources { i64 3758096383, ptr @sdm845_freq_table, i32 6, ptr @sdm845_bw_table_enc, i32 4, ptr @sdm845_bw_table_dec, i32 4, ptr null, i32 0, [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr null], i32 3, [2 x ptr] [ptr @.str.34, ptr @.str.37], [2 x ptr] [ptr @.str.38, ptr @.str.39], i32 2, [3 x ptr] [ptr @.str.12, ptr @.str.40, ptr @.str.41], i32 3, ptr @.compoundliteral, i32 2, [2 x ptr] zeroinitializer, i32 0, i32 2, i8 0, i32 3110400, i32 0, i32 0, i32 0, i32 0, i32 1887436800, i32 16777216, i32 612368384, ptr @.str.36 }, [32 x i8] zeroinitializer }, align 32
@sc7180_res = internal constant { %struct.venus_resources, [32 x i8] } { %struct.venus_resources { i64 3758096383, ptr @sc7180_freq_table, i32 5, ptr @sc7180_bw_table_enc, i32 3, ptr @sc7180_bw_table_dec, i32 3, ptr null, i32 0, [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr null], i32 3, [2 x ptr] [ptr @.str.34, ptr @.str.37], [2 x ptr] zeroinitializer, i32 2, [3 x ptr] [ptr @.str.12, ptr @.str.40, ptr null], i32 2, ptr @.compoundliteral.43, i32 1, [2 x ptr] zeroinitializer, i32 0, i32 2, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.str.44 }, [32 x i8] zeroinitializer }, align 32
@sc7280_res = internal constant { %struct.venus_resources, [32 x i8] } { %struct.venus_resources { i64 3758096383, ptr @sc7280_freq_table, i32 5, ptr @sc7280_bw_table_enc, i32 4, ptr @sc7280_bw_table_dec, i32 4, ptr @sm7280_reg_preset, i32 1, [4 x ptr] [ptr @.str.27, ptr @.str.29, ptr @.str.28, ptr null], i32 3, [2 x ptr] [ptr @.str.45, ptr @.str.46], [2 x ptr] zeroinitializer, i32 2, [3 x ptr] [ptr @.str.12, ptr @.str.40, ptr null], i32 2, ptr @.compoundliteral.47, i32 1, [2 x ptr] zeroinitializer, i32 0, i32 3, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.str.48 }, [32 x i8] zeroinitializer }, align 32
@sm8250_res = internal constant { %struct.venus_resources, [32 x i8] } { %struct.venus_resources { i64 3758096383, ptr @sm8250_freq_table, i32 4, ptr @sm8250_bw_table_enc, i32 4, ptr @sm8250_bw_table_dec, i32 4, ptr @sm8250_reg_preset, i32 1, [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr null, ptr null], i32 2, [2 x ptr] [ptr @.str.34, ptr null], [2 x ptr] zeroinitializer, i32 1, [3 x ptr] [ptr @.str.12, ptr @.str.40, ptr null], i32 2, ptr @.compoundliteral.50, i32 1, [2 x ptr] [ptr @.str.29, ptr @.str.27], i32 2, i32 3, i8 4, i32 7833600, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.str.51 }, [32 x i8] zeroinitializer }, align 32
@msm8916_freq_table = internal constant { [3 x %struct.freq_tbl], [40 x i8] } { [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 352800, i32 228570000 }, %struct.freq_tbl { i32 244800, i32 160000000 }, %struct.freq_tbl { i32 108000, i32 100000000 }], [40 x i8] zeroinitializer }, align 32
@msm8916_reg_preset = internal constant { [3 x %struct.reg_val], [40 x i8] } { [3 x %struct.reg_val] [%struct.reg_val { i32 917536, i32 89478486 }, %struct.reg_val { i32 917540, i32 89478486 }, %struct.reg_val { i32 524580, i32 3 }], [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom/venus-1.8/venus.mdt\00", [39 x i8] zeroinitializer }, align 32
@msm8996_freq_table = internal constant { [5 x %struct.freq_tbl], [56 x i8] } { [5 x %struct.freq_tbl] [%struct.freq_tbl { i32 1944000, i32 520000000 }, %struct.freq_tbl { i32 972000, i32 520000000 }, %struct.freq_tbl { i32 489600, i32 346666667 }, %struct.freq_tbl { i32 244800, i32 150000000 }, %struct.freq_tbl { i32 108000, i32 75000000 }], [56 x i8] zeroinitializer }, align 32
@msm8996_reg_preset = internal constant { [3 x %struct.reg_val], [40 x i8] } { [3 x %struct.reg_val] [%struct.reg_val { i32 524304, i32 -1 }, %struct.reg_val { i32 524312, i32 5462 }, %struct.reg_val { i32 524316, i32 5462 }], [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mbus\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom/venus-4.2/venus.mdt\00", [39 x i8] zeroinitializer }, align 32
@sdm660_freq_table = internal constant { [6 x %struct.freq_tbl], [48 x i8] } { [6 x %struct.freq_tbl] [%struct.freq_tbl { i32 979200, i32 518400000 }, %struct.freq_tbl { i32 489600, i32 441600000 }, %struct.freq_tbl { i32 432000, i32 404000000 }, %struct.freq_tbl { i32 244800, i32 320000000 }, %struct.freq_tbl { i32 216000, i32 269330000 }, %struct.freq_tbl { i32 108000, i32 133330000 }], [48 x i8] zeroinitializer }, align 32
@sdm660_bw_table_enc = internal constant { [7 x %struct.bw_tbl], [52 x i8] } { [7 x %struct.bw_tbl] [%struct.bw_tbl { i32 979200, i32 1044000, i32 0, i32 2446336, i32 0 }, %struct.bw_tbl { i32 864000, i32 887000, i32 0, i32 2108416, i32 0 }, %struct.bw_tbl { i32 489600, i32 666000, i32 0, i32 1207296, i32 0 }, %struct.bw_tbl { i32 432000, i32 578000, i32 0, i32 1058816, i32 0 }, %struct.bw_tbl { i32 244800, i32 346000, i32 0, i32 616448, i32 0 }, %struct.bw_tbl { i32 216000, i32 293000, i32 0, i32 534528, i32 0 }, %struct.bw_tbl { i32 108000, i32 151000, i32 0, i32 271360, i32 0 }], [52 x i8] zeroinitializer }, align 32
@sdm660_bw_table_dec = internal constant { [7 x %struct.bw_tbl], [52 x i8] } { [7 x %struct.bw_tbl] [%struct.bw_tbl { i32 979200, i32 2365000, i32 0, i32 1892000, i32 0 }, %struct.bw_tbl { i32 864000, i32 1978000, i32 0, i32 1554000, i32 0 }, %struct.bw_tbl { i32 489600, i32 1133000, i32 0, i32 895000, i32 0 }, %struct.bw_tbl { i32 432000, i32 994000, i32 0, i32 781000, i32 0 }, %struct.bw_tbl { i32 244800, i32 580000, i32 0, i32 460000, i32 0 }, %struct.bw_tbl { i32 216000, i32 501000, i32 0, i32 301000, i32 0 }, %struct.bw_tbl { i32 108000, i32 255000, i32 0, i32 202000, i32 0 }], [52 x i8] zeroinitializer }, align 32
@sdm660_reg_preset = internal constant { [3 x %struct.reg_val], [40 x i8] } { [3 x %struct.reg_val] [%struct.reg_val { i32 524304, i32 2031647 }, %struct.reg_val { i32 524312, i32 342 }, %struct.reg_val { i32 524316, i32 342 }], [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bus_throttle\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vcodec0_core\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom/venus-4.4/venus.mdt\00", [39 x i8] zeroinitializer }, align 32
@sdm845_freq_table = internal constant { [6 x %struct.freq_tbl], [48 x i8] } { [6 x %struct.freq_tbl] [%struct.freq_tbl { i32 3110400, i32 533000000 }, %struct.freq_tbl { i32 2073600, i32 444000000 }, %struct.freq_tbl { i32 1944000, i32 404000000 }, %struct.freq_tbl { i32 972000, i32 330000000 }, %struct.freq_tbl { i32 489600, i32 200000000 }, %struct.freq_tbl { i32 244800, i32 100000000 }], [48 x i8] zeroinitializer }, align 32
@sdm845_bw_table_enc = internal constant { [4 x %struct.bw_tbl], [48 x i8] } { [4 x %struct.bw_tbl] [%struct.bw_tbl { i32 1944000, i32 1612000, i32 0, i32 2416000, i32 0 }, %struct.bw_tbl { i32 972000, i32 951000, i32 0, i32 1434000, i32 0 }, %struct.bw_tbl { i32 489600, i32 723000, i32 0, i32 973000, i32 0 }, %struct.bw_tbl { i32 244800, i32 370000, i32 0, i32 495000, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sdm845_bw_table_dec = internal constant { [4 x %struct.bw_tbl], [48 x i8] } { [4 x %struct.bw_tbl] [%struct.bw_tbl { i32 2073600, i32 3929000, i32 0, i32 5551000, i32 0 }, %struct.bw_tbl { i32 1036800, i32 1987000, i32 0, i32 2797000, i32 0 }, %struct.bw_tbl { i32 489600, i32 1040000, i32 0, i32 1298000, i32 0 }, %struct.bw_tbl { i32 244800, i32 530000, i32 0, i32 659000, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom/venus-5.2/venus.mdt\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vcodec0_bus\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vcodec1_core\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vcodec1_bus\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vcodec0\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vcodec1\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cx\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.42, ptr null], [24 x i8] zeroinitializer }, align 32
@sc7180_freq_table = internal constant { [5 x %struct.freq_tbl], [56 x i8] } { [5 x %struct.freq_tbl] [%struct.freq_tbl { i32 0, i32 500000000 }, %struct.freq_tbl { i32 0, i32 434000000 }, %struct.freq_tbl { i32 0, i32 340000000 }, %struct.freq_tbl { i32 0, i32 270000000 }, %struct.freq_tbl { i32 0, i32 150000000 }], [56 x i8] zeroinitializer }, align 32
@sc7180_bw_table_enc = internal constant { [3 x %struct.bw_tbl], [36 x i8] } { [3 x %struct.bw_tbl] [%struct.bw_tbl { i32 972000, i32 750000, i32 0, i32 0, i32 0 }, %struct.bw_tbl { i32 489600, i32 451000, i32 0, i32 0, i32 0 }, %struct.bw_tbl { i32 244800, i32 234000, i32 0, i32 0, i32 0 }], [36 x i8] zeroinitializer }, align 32
@sc7180_bw_table_dec = internal constant { [3 x %struct.bw_tbl], [36 x i8] } { [3 x %struct.bw_tbl] [%struct.bw_tbl { i32 1036800, i32 1386000, i32 0, i32 1875000, i32 0 }, %struct.bw_tbl { i32 489600, i32 865000, i32 0, i32 1146000, i32 0 }, %struct.bw_tbl { i32 244800, i32 530000, i32 0, i32 583000, i32 0 }], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.42, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom/venus-5.4/venus.mdt\00", [39 x i8] zeroinitializer }, align 32
@sc7280_freq_table = internal constant { [5 x %struct.freq_tbl], [56 x i8] } { [5 x %struct.freq_tbl] [%struct.freq_tbl { i32 0, i32 460000000 }, %struct.freq_tbl { i32 0, i32 424000000 }, %struct.freq_tbl { i32 0, i32 335000000 }, %struct.freq_tbl { i32 0, i32 240000000 }, %struct.freq_tbl { i32 0, i32 133333333 }], [56 x i8] zeroinitializer }, align 32
@sc7280_bw_table_enc = internal constant { [4 x %struct.bw_tbl], [48 x i8] } { [4 x %struct.bw_tbl] [%struct.bw_tbl { i32 1944000, i32 1896000, i32 0, i32 3657000, i32 0 }, %struct.bw_tbl { i32 972000, i32 968000, i32 0, i32 1848000, i32 0 }, %struct.bw_tbl { i32 489600, i32 618000, i32 0, i32 941000, i32 0 }, %struct.bw_tbl { i32 244800, i32 318000, i32 0, i32 480000, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sc7280_bw_table_dec = internal constant { [4 x %struct.bw_tbl], [48 x i8] } { [4 x %struct.bw_tbl] [%struct.bw_tbl { i32 2073600, i32 2128000, i32 0, i32 3831000, i32 0 }, %struct.bw_tbl { i32 1036800, i32 1085000, i32 0, i32 1937000, i32 0 }, %struct.bw_tbl { i32 489600, i32 779000, i32 0, i32 998000, i32 0 }, %struct.bw_tbl { i32 244800, i32 400000, i32 0, i32 509000, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sm7280_reg_preset = internal constant { [1 x %struct.reg_val], [24 x i8] } { [1 x %struct.reg_val] [%struct.reg_val { i32 721032, i32 0 }], [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vcodec_core\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vcodec_bus\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.42, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom/vpu-2.0/venus.mbn\00", [41 x i8] zeroinitializer }, align 32
@sm8250_freq_table = internal constant { [4 x %struct.freq_tbl], [32 x i8] } { [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 0, i32 444000000 }, %struct.freq_tbl { i32 0, i32 366000000 }, %struct.freq_tbl { i32 0, i32 338000000 }, %struct.freq_tbl { i32 0, i32 240000000 }], [32 x i8] zeroinitializer }, align 32
@sm8250_bw_table_enc = internal constant { [4 x %struct.bw_tbl], [48 x i8] } { [4 x %struct.bw_tbl] [%struct.bw_tbl { i32 1944000, i32 1954000, i32 0, i32 3711000, i32 0 }, %struct.bw_tbl { i32 972000, i32 996000, i32 0, i32 1905000, i32 0 }, %struct.bw_tbl { i32 489600, i32 645000, i32 0, i32 977000, i32 0 }, %struct.bw_tbl { i32 244800, i32 332000, i32 0, i32 498000, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sm8250_bw_table_dec = internal constant { [4 x %struct.bw_tbl], [48 x i8] } { [4 x %struct.bw_tbl] [%struct.bw_tbl { i32 2073600, i32 2403000, i32 0, i32 4113000, i32 0 }, %struct.bw_tbl { i32 1036800, i32 1224000, i32 0, i32 2079000, i32 0 }, %struct.bw_tbl { i32 489600, i32 812000, i32 0, i32 998000, i32 0 }, %struct.bw_tbl { i32 244800, i32 416000, i32 0, i32 509000, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sm8250_reg_preset = internal constant { [1 x %struct.reg_val], [24 x i8] } { [1 x %struct.reg_val] [%struct.reg_val { i32 721032, i32 0 }], [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mx\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.49, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom/vpu-1.0/venus.mdt\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 4096, i64 16384]
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"qcom_venus_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 874, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 878, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"venus_dt_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 861, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"venus_pm_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 509, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 284, i32 42 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 288, i32 43 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 300, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 319, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 320, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 321, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 325, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"venus_core_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 77, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 88, i32 24 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 93, i32 13 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 131, i32 13 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 137, i32 13 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 147, i32 13 }
@___asan_gen_.121 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 155, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 162, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 212, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"msm8916_res\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 527, i32 37 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"msm8996_res\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 557, i32 37 }
@___asan_gen_.160 = private unnamed_addr constant [11 x i8] c"sdm660_res\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 611, i32 37 }
@___asan_gen_.163 = private unnamed_addr constant [11 x i8] c"sdm845_res\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 662, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant [14 x i8] c"sdm845_res_v2\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 683, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant [11 x i8] c"sc7180_res\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 732, i32 37 }
@___asan_gen_.172 = private unnamed_addr constant [11 x i8] c"sc7280_res\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 835, i32 37 }
@___asan_gen_.175 = private unnamed_addr constant [11 x i8] c"sm8250_res\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 780, i32 37 }
@___asan_gen_.178 = private unnamed_addr constant [19 x i8] c"msm8916_freq_table\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 515, i32 30 }
@___asan_gen_.181 = private unnamed_addr constant [19 x i8] c"msm8916_reg_preset\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 521, i32 29 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 532, i32 12 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 532, i32 20 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 532, i32 29 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 540, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"msm8996_freq_table\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 543, i32 30 }
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"msm8996_reg_preset\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 551, i32 29 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 562, i32 35 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 573, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant [18 x i8] c"sdm660_freq_table\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 576, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c"sdm660_bw_table_enc\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 591, i32 28 }
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c"sdm660_bw_table_dec\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 601, i32 28 }
@___asan_gen_.217 = private unnamed_addr constant [18 x i8] c"sdm660_reg_preset\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 585, i32 29 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 620, i32 35 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 622, i32 20 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 636, i32 12 }
@___asan_gen_.229 = private unnamed_addr constant [18 x i8] c"sdm845_freq_table\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 639, i32 30 }
@___asan_gen_.232 = private unnamed_addr constant [20 x i8] c"sdm845_bw_table_enc\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 648, i32 28 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c"sdm845_bw_table_dec\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 655, i32 28 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 680, i32 12 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 692, i32 36 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 693, i32 20 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 693, i32 36 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 695, i32 33 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 695, i32 44 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 697, i32 37 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [18 x i8] c"sc7180_freq_table\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 712, i32 30 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c"sc7180_bw_table_enc\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 720, i32 28 }
@___asan_gen_.266 = private unnamed_addr constant [20 x i8] c"sc7180_bw_table_dec\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 726, i32 28 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 752, i32 12 }
@___asan_gen_.273 = private unnamed_addr constant [18 x i8] c"sc7280_freq_table\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 809, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant [20 x i8] c"sc7280_bw_table_enc\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 817, i32 28 }
@___asan_gen_.279 = private unnamed_addr constant [20 x i8] c"sc7280_bw_table_dec\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 824, i32 28 }
@___asan_gen_.282 = private unnamed_addr constant [18 x i8] c"sm7280_reg_preset\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 831, i32 29 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 846, i32 19 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 846, i32 34 }
@___asan_gen_.291 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 858, i32 12 }
@___asan_gen_.295 = private unnamed_addr constant [18 x i8] c"sm8250_freq_table\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 755, i32 30 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c"sm8250_bw_table_enc\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 762, i32 28 }
@___asan_gen_.301 = private unnamed_addr constant [20 x i8] c"sm8250_bw_table_dec\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 769, i32 28 }
@___asan_gen_.304 = private unnamed_addr constant [18 x i8] c"sm8250_reg_preset\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 776, i32 29 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 797, i32 37 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private constant [44 x i8] c"../drivers/media/platform/qcom/venus/core.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 806, i32 12 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_qcom_venus_driver_exit, ptr @__initcall__kmod_venus_core__299_884_qcom_venus_driver_init6, ptr @qcom_venus_driver_exit, ptr @venus_sys_error_handler._entry, ptr @venus_sys_error_handler._entry.23, ptr @venus_sys_error_handler._entry_ptr, ptr @venus_sys_error_handler._entry_ptr.25, ptr @qcom_venus_driver, ptr @.str, ptr @venus_dt_match, ptr @venus_pm_ops, ptr @.str.1, ptr @.str.2, ptr @venus_probe.__key, ptr @.str.3, ptr @venus_probe.__key.4, ptr @.str.5, ptr @venus_probe.__key.6, ptr @.str.7, ptr @venus_probe.__key.8, ptr @.str.9, ptr @venus_probe.__key.10, ptr @.str.11, ptr @.str.12, ptr @venus_core_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @venus_sys_error_handler._rs, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @venus_enumerate_codecs.__key, ptr @.str.26, ptr @msm8916_res, ptr @msm8996_res, ptr @sdm660_res, ptr @sdm845_res, ptr @sdm845_res_v2, ptr @sc7180_res, ptr @sc7280_res, ptr @sm8250_res, ptr @msm8916_freq_table, ptr @msm8916_reg_preset, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @msm8996_freq_table, ptr @msm8996_reg_preset, ptr @.str.31, ptr @.str.32, ptr @sdm660_freq_table, ptr @sdm660_bw_table_enc, ptr @sdm660_bw_table_dec, ptr @sdm660_reg_preset, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @sdm845_freq_table, ptr @sdm845_bw_table_enc, ptr @sdm845_bw_table_dec, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.compoundliteral, ptr @sc7180_freq_table, ptr @sc7180_bw_table_enc, ptr @sc7180_bw_table_dec, ptr @.compoundliteral.43, ptr @.str.44, ptr @sc7280_freq_table, ptr @sc7280_bw_table_enc, ptr @sc7280_bw_table_dec, ptr @sm7280_reg_preset, ptr @.str.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @sm8250_freq_table, ptr @sm8250_bw_table_enc, ptr @sm8250_bw_table_dec, ptr @sm8250_reg_preset, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_venus_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_dt_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_core_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_sys_error_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_sys_error_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_sys_error_handler._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_enumerate_codecs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_res to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_res to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_res to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_res to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_res_v2 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_res to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_res to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_res to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_freq_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8916_reg_preset to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_freq_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_reg_preset to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_freq_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_bw_table_enc to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_bw_table_dec to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_reg_preset to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_freq_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_bw_table_enc to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_bw_table_dec to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_freq_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_bw_table_enc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_bw_table_dec to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_freq_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_bw_table_enc to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_bw_table_dec to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm7280_reg_preset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_freq_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_bw_table_enc to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_bw_table_dec to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_reg_preset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_venus_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_venus_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_venus_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_venus_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 30312, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 23
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_of_icc_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %video_path = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 12
  %3 = ptrtoint ptr %video_path to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %video_path, align 4
  %cmp.i233 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call17 = tail call ptr @devm_of_icc_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  %cpucfg_path = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 13
  %5 = ptrtoint ptr %cpucfg_path to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call17, ptr %cpucfg_path, align 4
  %cmp.i234 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i234, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call24 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %irq = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call24, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %call29 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %res = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 22
  %8 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call29, ptr %res, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.end28.cleanup_crit_edge, label %do.body

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end28
  %pm_lock = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 38
  tail call void @__mutex_init(ptr noundef %pm_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @venus_probe.__key) #10
  %9 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hfi_version, align 4
  %call35 = tail call ptr @venus_pm_get(i32 noundef %12) #10
  %pm_ops = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 37
  %13 = ptrtoint ptr %pm_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call35, ptr %pm_ops, align 4
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %do.body.cleanup_crit_edge, label %if.end39

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %do.body
  %14 = ptrtoint ptr %call35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call35, align 4
  %tobool41.not = icmp eq ptr %15, null
  br i1 %tobool41.not, label %if.end39.if.end49_crit_edge, label %if.then42

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then42:                                        ; preds = %if.end39
  %call45 = tail call i32 %15(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then42.if.end49_crit_edge, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42.if.end49_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.end49:                                         ; preds = %if.then42.if.end49_crit_edge, %if.end39.if.end49_crit_edge
  %16 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %res, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %call51 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev1, i64 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.err_core_put_crit_edge

if.end49.err_core_put_crit_edge:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_core_put

if.end54:                                         ; preds = %if.end49
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %20 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end54.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end54.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end54.dma_set_max_seg_size.exit_crit_edge
  %instances = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 29
  %23 = ptrtoint ptr %instances to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %instances, ptr %instances, align 4
  %prev.i = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 29, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %instances, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 28
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @venus_probe.__key.4) #10
  %work = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 44
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %25 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 44, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @venus_probe.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry68 = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 44, i32 0, i32 1
  %26 = ptrtoint ptr %entry68 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry68, ptr %entry68, align 4
  %prev.i235 = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 44, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i235 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry68, ptr %prev.i235, align 4
  %func = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 44, i32 0, i32 2
  %28 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @venus_sys_error_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 44, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @venus_probe.__key.8) #10
  %sys_err_done = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 35
  tail call void @__init_waitqueue_head(ptr noundef %sys_err_done, ptr noundef nonnull @.str.11, ptr noundef nonnull @venus_probe.__key.10) #10
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %call83 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %30, ptr noundef nonnull @hfi_isr, ptr noundef nonnull @hfi_isr_thread, i32 noundef 8196, ptr noundef nonnull @.str.12, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %dma_set_max_seg_size.exit.err_core_put_crit_edge

dma_set_max_seg_size.exit.err_core_put_crit_edge: ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_core_put

if.end86:                                         ; preds = %dma_set_max_seg_size.exit
  %call87 = tail call i32 @hfi_create(ptr noundef nonnull %call.i, ptr noundef nonnull @venus_core_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.err_core_put_crit_edge

if.end86.err_core_put_crit_edge:                  ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_core_put

if.end90:                                         ; preds = %if.end86
  %31 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %res, align 4
  %hfi_version.i = getelementptr inbounds %struct.venus_resources, ptr %32, i32 0, i32 20
  %33 = ptrtoint ptr %hfi_version.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hfi_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp.i236 = icmp eq i32 %34, 3
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i236, label %if.then.i237, label %if.else.i

if.then.i237:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr2.i = getelementptr i8, ptr %36, i32 655360
  %add.ptr6.i = getelementptr i8, ptr %36, i32 655672
  %add.ptr8.i = getelementptr i8, ptr %36, i32 720896
  %add.ptr10.i = getelementptr i8, ptr %36, i32 786432
  %add.ptr12.i = getelementptr i8, ptr %36, i32 917504
  br label %venus_assign_register_offsets.exit

if.else.i:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr17.i = getelementptr i8, ptr %36, i32 786432
  %add.ptr20.i = getelementptr i8, ptr %36, i32 860160
  %add.ptr23.i = getelementptr i8, ptr %36, i32 913408
  %add.ptr26.i = getelementptr i8, ptr %36, i32 917504
  br label %venus_assign_register_offsets.exit

venus_assign_register_offsets.exit:               ; preds = %if.else.i, %if.then.i237
  %add.ptr17.sink.i = phi ptr [ %add.ptr2.i, %if.then.i237 ], [ %add.ptr17.i, %if.else.i ]
  %add.ptr20.sink.i = phi ptr [ %add.ptr2.i, %if.then.i237 ], [ %add.ptr20.i, %if.else.i ]
  %add.ptr23.sink.i = phi ptr [ %add.ptr6.i, %if.then.i237 ], [ %add.ptr23.i, %if.else.i ]
  %add.ptr26.sink.i = phi ptr [ %add.ptr8.i, %if.then.i237 ], [ %add.ptr26.i, %if.else.i ]
  %.sink56.i = phi ptr [ %add.ptr10.i, %if.then.i237 ], [ null, %if.else.i ]
  %.sink.i = phi ptr [ %add.ptr12.i, %if.then.i237 ], [ null, %if.else.i ]
  %add.ptr14.sink.i = getelementptr i8, ptr %36, i32 524288
  %37 = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr14.sink.i, ptr %37, align 4
  %39 = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr17.sink.i, ptr %39, align 4
  %41 = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 3
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr20.sink.i, ptr %41, align 4
  %43 = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr23.sink.i, ptr %43, align 4
  %45 = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 5
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr26.sink.i, ptr %45, align 4
  %47 = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 6
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %.sink56.i, ptr %47, align 4
  %49 = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 7
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %.sink.i, ptr %49, align 4
  %v4l2_dev = getelementptr inbounds %struct.venus_core, ptr %call.i, i32 0, i32 21
  %call91 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %venus_assign_register_offsets.exit.err_core_deinit_crit_edge

venus_assign_register_offsets.exit.err_core_deinit_crit_edge: ; preds = %venus_assign_register_offsets.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_core_deinit

if.end94:                                         ; preds = %venus_assign_register_offsets.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #10
  %call.i238 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %cmp96 = icmp slt i32 %call.i238, 0
  br i1 %cmp96, label %if.end94.err_runtime_disable_crit_edge, label %if.end98

if.end94.err_runtime_disable_crit_edge:           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_runtime_disable

if.end98:                                         ; preds = %if.end94
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %52 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %of_node, align 8
  %call99 = tail call i32 @of_platform_populate(ptr noundef %53, ptr noundef null, ptr noundef null, ptr noundef %dev1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end98.err_runtime_disable_crit_edge

if.end98.err_runtime_disable_crit_edge:           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_runtime_disable

if.end102:                                        ; preds = %if.end98
  %call103 = tail call i32 @venus_firmware_init(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.err_of_depopulate_crit_edge

if.end102.err_of_depopulate_crit_edge:            ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_of_depopulate

if.end106:                                        ; preds = %if.end102
  %call107 = tail call i32 @venus_boot(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end106.err_firmware_deinit_crit_edge

if.end106.err_firmware_deinit_crit_edge:          ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_firmware_deinit

if.end110:                                        ; preds = %if.end106
  %call111 = tail call i32 @hfi_core_resume(ptr noundef nonnull %call.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end110.err_venus_shutdown_crit_edge

if.end110.err_venus_shutdown_crit_edge:           ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_venus_shutdown

if.end114:                                        ; preds = %if.end110
  %call115 = tail call i32 @hfi_core_init(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end114.err_venus_shutdown_crit_edge

if.end114.err_venus_shutdown_crit_edge:           ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_venus_shutdown

if.end118:                                        ; preds = %if.end114
  %call119 = tail call fastcc i32 @venus_enumerate_codecs(ptr noundef nonnull %call.i, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end118.err_venus_shutdown_crit_edge

if.end118.err_venus_shutdown_crit_edge:           ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_venus_shutdown

if.end122:                                        ; preds = %if.end118
  %call123 = tail call fastcc i32 @venus_enumerate_codecs(ptr noundef nonnull %call.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end122.err_venus_shutdown_crit_edge

if.end122.err_venus_shutdown_crit_edge:           ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_venus_shutdown

if.end126:                                        ; preds = %if.end122
  %call.i239 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool128.not = icmp eq i32 %call.i239, 0
  br i1 %tobool128.not, label %if.end130, label %if.then129

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !180
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  br label %err_venus_shutdown

if.end130:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @venus_dbgfs_init(ptr noundef nonnull %call.i) #10
  br label %cleanup

err_venus_shutdown:                               ; preds = %if.then129, %if.end122.err_venus_shutdown_crit_edge, %if.end118.err_venus_shutdown_crit_edge, %if.end114.err_venus_shutdown_crit_edge, %if.end110.err_venus_shutdown_crit_edge
  %ret.0 = phi i32 [ %call111, %if.end110.err_venus_shutdown_crit_edge ], [ %call115, %if.end114.err_venus_shutdown_crit_edge ], [ %call119, %if.end118.err_venus_shutdown_crit_edge ], [ %call123, %if.end122.err_venus_shutdown_crit_edge ], [ %call.i239, %if.then129 ]
  %call132 = tail call i32 @venus_shutdown(ptr noundef nonnull %call.i) #10
  br label %err_firmware_deinit

err_firmware_deinit:                              ; preds = %err_venus_shutdown, %if.end106.err_firmware_deinit_crit_edge
  %ret.1 = phi i32 [ %call107, %if.end106.err_firmware_deinit_crit_edge ], [ %ret.0, %err_venus_shutdown ]
  tail call void @venus_firmware_deinit(ptr noundef nonnull %call.i) #10
  br label %err_of_depopulate

err_of_depopulate:                                ; preds = %err_firmware_deinit, %if.end102.err_of_depopulate_crit_edge
  %ret.2 = phi i32 [ %call103, %if.end102.err_of_depopulate_crit_edge ], [ %ret.1, %err_firmware_deinit ]
  tail call void @of_platform_depopulate(ptr noundef %dev1) #10
  br label %err_runtime_disable

err_runtime_disable:                              ; preds = %err_of_depopulate, %if.end98.err_runtime_disable_crit_edge, %if.end94.err_runtime_disable_crit_edge
  %ret.3 = phi i32 [ %call.i238, %if.end94.err_runtime_disable_crit_edge ], [ %call99, %if.end98.err_runtime_disable_crit_edge ], [ %ret.2, %err_of_depopulate ]
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  %call.i240 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #10
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  tail call void @hfi_destroy(ptr noundef nonnull %call.i) #10
  br label %err_core_deinit

err_core_deinit:                                  ; preds = %err_runtime_disable, %venus_assign_register_offsets.exit.err_core_deinit_crit_edge
  %ret.4 = phi i32 [ %call91, %venus_assign_register_offsets.exit.err_core_deinit_crit_edge ], [ %ret.3, %err_runtime_disable ]
  %call134 = tail call i32 @hfi_core_deinit(ptr noundef nonnull %call.i, i1 noundef zeroext false) #10
  br label %err_core_put

err_core_put:                                     ; preds = %err_core_deinit, %if.end86.err_core_put_crit_edge, %dma_set_max_seg_size.exit.err_core_put_crit_edge, %if.end49.err_core_put_crit_edge
  %ret.5 = phi i32 [ %call51, %if.end49.err_core_put_crit_edge ], [ %call83, %dma_set_max_seg_size.exit.err_core_put_crit_edge ], [ %call87, %if.end86.err_core_put_crit_edge ], [ %ret.4, %err_core_deinit ]
  %55 = ptrtoint ptr %pm_ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pm_ops, align 4
  %core_put = getelementptr inbounds %struct.venus_pm_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %core_put to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %core_put, align 4
  %tobool136.not = icmp eq ptr %58, null
  br i1 %tobool136.not, label %err_core_put.cleanup_crit_edge, label %if.then137

err_core_put.cleanup_crit_edge:                   ; preds = %err_core_put
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then137:                                       ; preds = %err_core_put
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %58(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then137, %err_core_put.cleanup_crit_edge, %if.end130, %if.then42.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then20, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %4, %if.then13 ], [ %6, %if.then20 ], [ 0, %if.end130 ], [ -12, %entry.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ -19, %if.end28.cleanup_crit_edge ], [ -19, %do.body.cleanup_crit_edge ], [ %call45, %if.then42.cleanup_crit_edge ], [ %ret.5, %if.then137 ], [ %ret.5, %err_core_put.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_ops1 = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %pm_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm_ops1, align 4
  %dev2 = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !181

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 414, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call22 = tail call i32 @hfi_core_deinit(ptr noundef %1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %if.end.if.end46_crit_edge, label %do.end40, !prof !182

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 417, i32 noundef 9, ptr noundef null) #10
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %if.end.if.end46_crit_edge
  %call54 = tail call i32 @venus_shutdown(ptr noundef %1) #10
  tail call void @of_platform_depopulate(ptr noundef %5) #10
  tail call void @venus_firmware_deinit(ptr noundef %1) #10
  %call.i78 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #10
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #10
  %core_put = getelementptr inbounds %struct.venus_pm_ops, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %core_put to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_put, align 4
  %tobool56.not = icmp eq ptr %7, null
  br i1 %tobool56.not, label %if.end46.if.end59_crit_edge, label %if.then57

if.end46.if.end59_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then57:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %7(ptr noundef %1) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end46.if.end59_crit_edge
  %v4l2_dev = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 21
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  tail call void @hfi_destroy(ptr noundef %1) #10
  %pm_lock = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 38
  tail call void @mutex_destroy(ptr noundef %pm_lock) #10
  %lock = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 28
  tail call void @mutex_destroy(ptr noundef %lock) #10
  tail call void @venus_dbgfs_deinit(ptr noundef %1) #10
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @venus_core_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  %call2 = tail call i32 @venus_shutdown(ptr noundef %1) #10
  tail call void @venus_firmware_deinit(ptr noundef %1) #10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i8 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @venus_pm_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %mask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %mask) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @venus_sys_error_handler(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -628
  %dev = getelementptr i8, ptr %work, i32 -380
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp, i32 0, i32 10
  %ops = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %core_deinit = getelementptr inbounds %struct.hfi_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %core_deinit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core_deinit, align 4
  %call1 = tail call i32 %5(ptr noundef %add.ptr) #10
  %state = getelementptr i8, ptr %work, i32 -240
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  br i1 %cmp, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev_dec = getelementptr i8, ptr %work, i32 -376
  %dev_enc = getelementptr i8, ptr %work, i32 -372
  %umax = call i32 @llvm.umax.i32(i32 %spec.select, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.body.lr.ph
  %i.0145 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end6.for.body_crit_edge ]
  %7 = ptrtoint ptr %dev_dec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_dec, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 18
  %9 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %for.body.if.end6_crit_edge, label %pm_runtime_active.exit

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

pm_runtime_active.exit:                           ; preds = %for.body
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 15
  %11 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.end6_crit_edge, label %land.lhs.true

pm_runtime_active.exit.if.end6_crit_edge:         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %pm_runtime_active.exit
  %12 = ptrtoint ptr %dev_enc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_enc, align 4
  %runtime_status.i126 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 18
  %14 = ptrtoint ptr %runtime_status.i126 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %runtime_status.i126, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i127 = icmp eq i32 %15, 0
  br i1 %cmp.i127, label %land.lhs.true.if.end6_crit_edge, label %pm_runtime_active.exit132

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

pm_runtime_active.exit132:                        ; preds = %land.lhs.true
  %disable_depth.i128 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 15
  %16 = ptrtoint ptr %disable_depth.i128 to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i129 = load i16, ptr %disable_depth.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i129)
  %tobool.i130 = icmp ugt i16 %bf.load.i129, 8191
  br i1 %tobool.i130, label %pm_runtime_active.exit132.if.end6_crit_edge, label %pm_runtime_active.exit132.for.end_crit_edge

pm_runtime_active.exit132.for.end_crit_edge:      ; preds = %pm_runtime_active.exit132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

pm_runtime_active.exit132.if.end6_crit_edge:      ; preds = %pm_runtime_active.exit132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end6:                                          ; preds = %pm_runtime_active.exit132.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %pm_runtime_active.exit.if.end6_crit_edge, %for.body.if.end6_crit_edge
  tail call void @msleep(i32 noundef 10) #10
  %inc = add nuw nsw i32 %i.0145, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %pm_runtime_active.exit132.for.end_crit_edge, %entry.for.end_crit_edge
  %lock = getelementptr i8, ptr %work, i32 -344
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call7 = tail call i32 @venus_shutdown(ptr noundef %add.ptr) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %mem_phys2.i = getelementptr i8, ptr %work, i32 -352
  %19 = ptrtoint ptr %mem_phys2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mem_phys2.i, align 4
  %mem_size4.i = getelementptr i8, ptr %work, i32 -348
  %21 = ptrtoint ptr %mem_size4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mem_size4.i, align 4
  %call.i133 = tail call ptr @memremap(i32 noundef %20, i32 noundef %22, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call.i133, null
  br i1 %tobool.not.i, label %for.end.venus_coredump.exit_crit_edge, label %if.end.i

for.end.venus_coredump.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %venus_coredump.exit

if.end.i:                                         ; preds = %for.end
  %call5.i = tail call noalias ptr @vmalloc(i32 noundef %22) #13
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @memunmap(ptr noundef nonnull %call.i133) #10
  br label %venus_coredump.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = call ptr @memcpy(ptr %call5.i, ptr %call.i133, i32 %22)
  tail call void @memunmap(ptr noundef nonnull %call.i133) #10
  tail call void @dev_coredumpv(ptr noundef %18, ptr noundef nonnull %call5.i, i32 noundef %22, i32 noundef 3264) #10
  br label %venus_coredump.exit

venus_coredump.exit:                              ; preds = %if.end8.i, %if.then7.i, %for.end.venus_coredump.exit_crit_edge
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call.i134 = tail call i32 @__pm_runtime_idle(ptr noundef %25, i32 noundef 4) #10
  %pmdomains = getelementptr i8, ptr %work, i32 -548
  br i1 %cmp, label %venus_coredump.exit.for.end20_crit_edge, label %for.body12.preheader

venus_coredump.exit.for.end20_crit_edge:          ; preds = %venus_coredump.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

for.body12.preheader:                             ; preds = %venus_coredump.exit
  %umax148 = call i32 @llvm.umax.i32(i32 %spec.select, i32 1)
  br label %for.body12

for.body12:                                       ; preds = %if.end17.for.body12_crit_edge, %for.body12.preheader
  %i.1147 = phi i32 [ %inc19, %if.end17.for.body12_crit_edge ], [ 0, %for.body12.preheader ]
  %26 = ptrtoint ptr %pmdomains to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pmdomains, align 4
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %for.body12.for.end20_crit_edge, label %lor.lhs.false

for.body12.for.end20_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

lor.lhs.false:                                    ; preds = %for.body12
  %runtime_status.i135 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 18
  %28 = ptrtoint ptr %runtime_status.i135 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %runtime_status.i135, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i136 = icmp eq i32 %29, 0
  br i1 %cmp.i136, label %lor.lhs.false.if.end17_crit_edge, label %pm_runtime_active.exit141

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

pm_runtime_active.exit141:                        ; preds = %lor.lhs.false
  %disable_depth.i137 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 15
  %30 = ptrtoint ptr %disable_depth.i137 to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i138 = load i16, ptr %disable_depth.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i138)
  %tobool.i139 = icmp ugt i16 %bf.load.i138, 8191
  br i1 %tobool.i139, label %pm_runtime_active.exit141.if.end17_crit_edge, label %pm_runtime_active.exit141.for.end20_crit_edge

pm_runtime_active.exit141.for.end20_crit_edge:    ; preds = %pm_runtime_active.exit141
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

pm_runtime_active.exit141.if.end17_crit_edge:     ; preds = %pm_runtime_active.exit141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %pm_runtime_active.exit141.if.end17_crit_edge, %lor.lhs.false.if.end17_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #10
  %inc19 = add nuw nsw i32 %i.1147, 1
  %exitcond149.not = icmp eq i32 %inc19, %umax148
  br i1 %exitcond149.not, label %if.end17.for.end20_crit_edge, label %if.end17.for.body12_crit_edge

if.end17.for.body12_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12

if.end17.for.end20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

for.end20:                                        ; preds = %if.end17.for.end20_crit_edge, %pm_runtime_active.exit141.for.end20_crit_edge, %for.body12.for.end20_crit_edge, %venus_coredump.exit.for.end20_crit_edge
  tail call void @hfi_reinit(ptr noundef %add.ptr) #10
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %call.i142 = tail call i32 @__pm_runtime_resume(ptr noundef %32, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp23 = icmp slt i32 %call.i142, 0
  %33 = select i1 %cmp23, i1 true, i1 %cmp
  %spec.select118 = select i1 %33, ptr @.str.14, ptr @.str.13
  %call26 = tail call i32 @venus_boot(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %34 = select i1 %tobool27.not, i1 true, i1 %33
  %err_msg.2 = select i1 %34, ptr %spec.select118, ptr @.str.15
  %not.tobool27.not = xor i1 %tobool27.not, true
  %failed.2.off0 = select i1 %not.tobool27.not, i1 true, i1 %33
  %call32 = tail call i32 @hfi_core_resume(ptr noundef %add.ptr, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  %35 = select i1 %tobool33.not, i1 true, i1 %failed.2.off0
  %err_msg.3 = select i1 %35, ptr %err_msg.2, ptr @.str.16
  %not.tobool33.not = xor i1 %tobool33.not, true
  %failed.3.off0 = select i1 %not.tobool33.not, i1 true, i1 %failed.2.off0
  %irq = getelementptr i8, ptr %work, i32 -596
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %37) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %call39 = tail call i32 @hfi_core_init(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  %38 = select i1 %tobool40.not, i1 true, i1 %failed.3.off0
  %err_msg.4 = select i1 %38, ptr %err_msg.3, ptr @.str.17
  %not.tobool40.not = xor i1 %tobool40.not, true
  %failed.4.off0 = select i1 %not.tobool40.not, i1 true, i1 %failed.3.off0
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %call.i143 = tail call i32 @__pm_runtime_idle(ptr noundef %40, i32 noundef 4) #10
  br i1 %failed.4.off0, label %if.then48, label %do.end64

if.then48:                                        ; preds = %for.end20
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %42) #10
  %call50 = tail call i32 @___ratelimit(ptr noundef nonnull @venus_sys_error_handler._rs, ptr noundef nonnull @__func__.venus_sys_error_handler) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then48.do.end57_crit_edge, label %do.end

if.then48.do.end57_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

do.end:                                           ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.19, ptr noundef nonnull %err_msg.4) #14
  br label %do.end57

do.end57:                                         ; preds = %do.end, %if.then48.do.end57_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %45 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %work, i32 noundef 1) #10
  br label %cleanup

do.end64:                                         ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.24) #14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %sys_error = getelementptr i8, ptr %work, i32 -176
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %sys_error) #10
  %sys_err_done = getelementptr i8, ptr %work, i32 -172
  tail call void @__wake_up(ptr noundef %sys_err_done, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %do.end57
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_isr(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_isr_thread(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_firmware_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_boot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_core_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_core_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @venus_enumerate_codecs(ptr noundef %core, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  %dummy_ops = alloca %struct.hfi_inst_ops, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dummy_ops) #10
  %0 = call ptr @memset(ptr %dummy_ops, i32 0, i32 12)
  %res = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hfi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 3208) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @venus_enumerate_codecs.__key) #10
  %core3 = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %core3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %core, ptr %core3, align 4
  %session_type = getelementptr inbounds %struct.venus_inst, ptr %call7.i.i, i32 0, i32 55
  %7 = ptrtoint ptr %session_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type, ptr %session_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp4 = icmp eq i32 %type, 2
  %dec_codecs = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 40
  %enc_codecs = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 39
  %codecs.0.in = select i1 %cmp4, ptr %dec_codecs, ptr %enc_codecs
  %8 = ptrtoint ptr %codecs.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %codecs.0 = load i32, ptr %codecs.0.in, align 4
  %call7 = call i32 @hfi_session_create(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %dummy_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body.for.body_crit_edge, label %do.body.err_crit_edge

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.049
  %and = and i32 %shl, %codecs.0
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default.i [
    i32 0, label %for.body.for.inc_crit_edge
    i32 2, label %for.body.to_v4l2_codec_type.exit_crit_edge
    i32 4, label %sw.bb1.i
    i32 8, label %sw.bb2.i
    i32 16, label %sw.bb3.i
    i32 32, label %sw.bb4.i
    i32 256, label %sw.bb5.i
    i32 4096, label %sw.bb6.i
    i32 16384, label %sw.bb7.i
    i32 128, label %for.body.sw.bb8.i_crit_edge
    i32 64, label %for.body.sw.bb8.i_crit_edge50
  ]

for.body.sw.bb8.i_crit_edge50:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8.i

for.body.sw.bb8.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8.i

for.body.to_v4l2_codec_type.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %to_v4l2_codec_type.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %to_v4l2_codec_type.exit

sw.bb2.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %to_v4l2_codec_type.exit

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %to_v4l2_codec_type.exit

sw.bb4.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %to_v4l2_codec_type.exit

sw.bb5.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %to_v4l2_codec_type.exit

sw.bb6.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %to_v4l2_codec_type.exit

sw.bb7.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %to_v4l2_codec_type.exit

sw.bb8.i:                                         ; preds = %for.body.sw.bb8.i_crit_edge, %for.body.sw.bb8.i_crit_edge50
  br label %to_v4l2_codec_type.exit

sw.default.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %to_v4l2_codec_type.exit

to_v4l2_codec_type.exit:                          ; preds = %sw.default.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %for.body.to_v4l2_codec_type.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.default.i ], [ 1145656920, %sw.bb8.i ], [ 809062486, %sw.bb7.i ], [ 808996950, %sw.bb6.i ], [ 1194410838, %sw.bb5.i ], [ 877088845, %sw.bb4.i ], [ 843534413, %sw.bb3.i ], [ 826757197, %sw.bb2.i ], [ 859189832, %sw.bb1.i ], [ 875967048, %for.body.to_v4l2_codec_type.exit_crit_edge ]
  %call16 = call i32 @hfi_session_init(ptr noundef nonnull %call7.i.i, i32 noundef %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %to_v4l2_codec_type.exit.done_crit_edge

to_v4l2_codec_type.exit.done_crit_edge:           ; preds = %to_v4l2_codec_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end19:                                         ; preds = %to_v4l2_codec_type.exit
  %call20 = call i32 @hfi_session_deinit(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.for.inc_crit_edge, label %if.end19.done_crit_edge

if.end19.done_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.done_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

done:                                             ; preds = %for.inc.done_crit_edge, %if.end19.done_crit_edge, %to_v4l2_codec_type.exit.done_crit_edge
  %ret.2 = phi i32 [ %call16, %to_v4l2_codec_type.exit.done_crit_edge ], [ %call20, %if.end19.done_crit_edge ], [ 0, %for.inc.done_crit_edge ]
  call void @hfi_session_destroy(ptr noundef nonnull %call7.i.i) #10
  br label %err

err:                                              ; preds = %done, %do.body.err_crit_edge
  %ret.3 = phi i32 [ %call7, %do.body.err_crit_edge ], [ %ret.2, %done ]
  call void @mutex_destroy(ptr noundef %lock) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dummy_ops) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_dbgfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_firmware_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !183
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #10, !srcloc !184
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !185
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfi_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_core_deinit(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfi_reinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @venus_event_notify(ptr noundef %core, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %event, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %switch = icmp eq i32 %0, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %lock = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %sys_error = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 34
  tail call void @_set_bit(i32 noundef 0, ptr noundef %sys_error) #10
  %instances = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 29
  %1 = ptrtoint ptr %instances to i32
  call void @__asan_load4_noabort(i32 %1)
  %inst.018 = load ptr, ptr %instances, align 4
  %cmp.not19 = icmp eq ptr %inst.018, %instances
  br i1 %cmp.not19, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %inst.020 = phi ptr [ %inst.0, %for.body.for.body_crit_edge ], [ %inst.018, %sw.epilog.for.body_crit_edge ]
  %ops = getelementptr inbounds %struct.venus_inst, ptr %inst.020, i32 0, i32 54
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %event_notify = getelementptr inbounds %struct.hfi_inst_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %event_notify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_notify, align 4
  tail call void %5(ptr noundef %inst.020, i32 noundef 4, ptr noundef null) #10
  %6 = ptrtoint ptr %inst.020 to i32
  call void @__asan_load4_noabort(i32 %6)
  %inst.0 = load ptr, ptr %inst.020, align 4
  %cmp.not = icmp eq ptr %inst.0, %instances
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %irq = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %8) #10
  %work = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_session_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfi_session_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @venus_dbgfs_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pm_ops1 = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %pm_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm_ops1, align 4
  %call2 = tail call i32 @hfi_core_suspend(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %core_power = getelementptr inbounds %struct.venus_pm_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %core_power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core_power, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %call6 = tail call i32 %5(ptr noundef %1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end10_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %cpucfg_path = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %cpucfg_path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpucfg_path, align 4
  %call11 = tail call i32 @icc_set_bw(ptr noundef %7, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.err_cpucfg_path_crit_edge

if.end10.err_cpucfg_path_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_cpucfg_path

if.end14:                                         ; preds = %if.end10
  %video_path = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %video_path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video_path, align 4
  %call15 = tail call i32 @icc_set_bw(ptr noundef %9, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %err_video_path

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_video_path:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %cpucfg_path to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpucfg_path, align 4
  %call20 = tail call i32 @icc_set_bw(ptr noundef %11, i32 noundef 125, i32 noundef 0) #10
  br label %err_cpucfg_path

err_cpucfg_path:                                  ; preds = %err_video_path, %if.end10.err_cpucfg_path_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end10.err_cpucfg_path_crit_edge ], [ %call15, %err_video_path ]
  %12 = ptrtoint ptr %core_power to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core_power, align 4
  %tobool22.not = icmp eq ptr %13, null
  br i1 %tobool22.not, label %err_cpucfg_path.cleanup_crit_edge, label %if.then23

err_cpucfg_path.cleanup_crit_edge:                ; preds = %err_cpucfg_path
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %err_cpucfg_path
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 %13(ptr noundef %1, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %err_cpucfg_path.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call6, %if.then4.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ %ret.0, %if.then23 ], [ %ret.0, %err_cpucfg_path.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pm_ops1 = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %pm_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm_ops1, align 4
  %video_path = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %video_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %video_path, align 4
  %call2 = tail call i32 @icc_set_bw(ptr noundef %5, i32 noundef 2500, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpucfg_path = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %cpucfg_path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpucfg_path, align 4
  %call3 = tail call i32 @icc_set_bw(ptr noundef %7, i32 noundef 125, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %core_power = getelementptr inbounds %struct.venus_pm_ops, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %core_power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_power, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end6.if.end14_crit_edge, label %if.then8

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %call10 = tail call i32 %9(ptr noundef %1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.if.end14_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %call15 = tail call i32 @hfi_core_resume(ptr noundef %1, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call10, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_core_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !27, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !56, !57, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__initcall__kmod_venus_core__299_884_qcom_venus_driver_init6, !1, !"__initcall__kmod_venus_core__299_884_qcom_venus_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 884, i32 1}
!2 = !{ptr @__exitcall_qcom_venus_driver_exit, !1, !"__exitcall_qcom_venus_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias300, !4, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 886, i32 1}
!5 = !{ptr @__UNIQUE_ID_description301, !6, !"__UNIQUE_ID_description301", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 887, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 888, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 878, i32 11}
!12 = !{ptr @qcom_venus_driver, !13, !"qcom_venus_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 874, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 284, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 288, i32 43}
!18 = !{ptr @venus_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 300, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @venus_probe.__key.4, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 319, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @venus_probe.__key.6, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 320, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @venus_probe.__key.8, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @venus_probe.__key.10, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 321, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 325, i32 6}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 88, i32 24}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 93, i32 13}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 131, i32 13}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 137, i32 13}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 147, i32 13}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 155, i32 3}
!46 = !{ptr @venus_sys_error_handler._rs, !45, !"_rs", i1 false, i1 false}
!47 = !{ptr @__func__.venus_sys_error_handler, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @venus_sys_error_handler._entry, !45, !"_entry", i1 false, i1 false}
!53 = !{ptr @venus_sys_error_handler._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 162, i32 2}
!56 = !{ptr @venus_sys_error_handler._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @venus_sys_error_handler._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @venus_core_ops, !59, !"venus_core_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 77, i32 34}
!60 = !{ptr @venus_enumerate_codecs.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 212, i32 2}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @venus_dt_match, !64, !"venus_dt_match", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 861, i32 34}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 532, i32 12}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 532, i32 20}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 532, i32 29}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 540, i32 12}
!73 = !{ptr @msm8916_res, !74, !"msm8916_res", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 527, i32 37}
!75 = !{ptr @msm8916_freq_table, !76, !"msm8916_freq_table", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 515, i32 30}
!77 = !{ptr @msm8916_reg_preset, !78, !"msm8916_reg_preset", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 521, i32 29}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 562, i32 35}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 573, i32 12}
!83 = !{ptr @msm8996_res, !84, !"msm8996_res", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 557, i32 37}
!85 = !{ptr @msm8996_freq_table, !86, !"msm8996_freq_table", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 543, i32 30}
!87 = !{ptr @msm8996_reg_preset, !88, !"msm8996_reg_preset", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 551, i32 29}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 620, i32 35}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 622, i32 20}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 636, i32 12}
!95 = !{ptr @sdm660_res, !96, !"sdm660_res", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 611, i32 37}
!97 = !{ptr @sdm660_freq_table, !98, !"sdm660_freq_table", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 576, i32 30}
!99 = !{ptr @sdm660_bw_table_enc, !100, !"sdm660_bw_table_enc", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 591, i32 28}
!101 = !{ptr @sdm660_bw_table_dec, !102, !"sdm660_bw_table_dec", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 601, i32 28}
!103 = !{ptr @sdm660_reg_preset, !104, !"sdm660_reg_preset", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 585, i32 29}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 680, i32 12}
!107 = !{ptr @sdm845_res, !108, !"sdm845_res", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 662, i32 37}
!109 = !{ptr @sdm845_freq_table, !110, !"sdm845_freq_table", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 639, i32 30}
!111 = !{ptr @sdm845_bw_table_enc, !112, !"sdm845_bw_table_enc", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 648, i32 28}
!113 = !{ptr @sdm845_bw_table_dec, !114, !"sdm845_bw_table_dec", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 655, i32 28}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 692, i32 36}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 693, i32 20}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 693, i32 36}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 695, i32 33}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 695, i32 44}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 697, i32 37}
!127 = !{ptr @sdm845_res_v2, !128, !"sdm845_res_v2", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 683, i32 37}
!129 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 752, i32 12}
!131 = !{ptr @sc7180_res, !132, !"sc7180_res", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 732, i32 37}
!133 = !{ptr @sc7180_freq_table, !134, !"sc7180_freq_table", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 712, i32 30}
!135 = !{ptr @sc7180_bw_table_enc, !136, !"sc7180_bw_table_enc", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 720, i32 28}
!137 = !{ptr @sc7180_bw_table_dec, !138, !"sc7180_bw_table_dec", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 726, i32 28}
!139 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 846, i32 19}
!141 = !{ptr @.str.46, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 846, i32 34}
!143 = !{ptr @.str.48, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 858, i32 12}
!145 = !{ptr @sc7280_res, !146, !"sc7280_res", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 835, i32 37}
!147 = !{ptr @sc7280_freq_table, !148, !"sc7280_freq_table", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 809, i32 30}
!149 = !{ptr @sc7280_bw_table_enc, !150, !"sc7280_bw_table_enc", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 817, i32 28}
!151 = !{ptr @sc7280_bw_table_dec, !152, !"sc7280_bw_table_dec", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 824, i32 28}
!153 = !{ptr @sm7280_reg_preset, !154, !"sm7280_reg_preset", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 831, i32 29}
!155 = !{ptr @.str.49, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 797, i32 37}
!157 = !{ptr @.str.51, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 806, i32 12}
!159 = !{ptr @sm8250_res, !160, !"sm8250_res", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 780, i32 37}
!161 = !{ptr @sm8250_freq_table, !162, !"sm8250_freq_table", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 755, i32 30}
!163 = !{ptr @sm8250_bw_table_enc, !164, !"sm8250_bw_table_enc", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 762, i32 28}
!165 = !{ptr @sm8250_bw_table_dec, !166, !"sm8250_bw_table_dec", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 769, i32 28}
!167 = !{ptr @sm8250_reg_preset, !168, !"sm8250_reg_preset", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 776, i32 29}
!169 = !{ptr @venus_pm_ops, !170, !"venus_pm_ops", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/qcom/venus/core.c", i32 509, i32 32}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i64 2148376694, i64 2148376720, i64 2148376749, i64 2148376783, i64 2148376814, i64 2148376837}
!181 = !{!"branch_weights", i32 1, i32 2000}
!182 = !{!"branch_weights", i32 2000, i32 1}
!183 = !{i64 2148376113}
!184 = !{i64 862713, i64 862738, i64 862760, i64 862776, i64 862788, i64 862808, i64 862832, i64 862848, i64 862860}
!185 = !{i64 2148376301}
