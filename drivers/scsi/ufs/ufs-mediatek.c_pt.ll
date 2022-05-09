; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufs-mediatek.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufs-mediatek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.117 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ufs_hba_variant_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ufs_dev_fix = type { i16, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_ufs_mtk_event = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_link = type { ptr, %struct.list_head, ptr, %struct.list_head, %struct.device, i32, i32, %struct.refcount_struct, %struct.kref, %struct.work_struct, i8 }
%struct.ufs_hba = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.device_attribute, %struct.device_attribute, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.blk_mq_tag_set, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, i32, i16, i16, i16, %struct.mutex, i8, i8, %struct.semaphore, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.ufs_stats, i8, i8, i8, %struct.ufs_dev_cmd, i64, i32, %struct.ufs_dev_info, i8, %struct.ufs_vreg_info, %struct.list_head, i32, i32, %struct.ufs_pa_layer_attr, %struct.ufs_pwr_mode_info, %struct.ufs_clk_gating, i32, ptr, %struct.ufs_clk_scaling, i8, i32, i8, %struct.rw_semaphore, [10 x i8], %struct.atomic_t, %struct.device, ptr, %struct.delayed_work, %struct.ufshpb_dev_info, %struct.ufs_hba_monitor, %union.ufs_crypto_capabilities, ptr, i32, %struct.blk_crypto_profile, ptr, %struct.delayed_work, i32, i32, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ufs_stats = type { i32, i64, i32, i64, [15 x %struct.ufs_event_hist] }
%struct.ufs_event_hist = type { i32, [8 x i32], [8 x i64], i64 }
%struct.ufs_dev_cmd = type { i32, %struct.mutex, ptr, %struct.ufs_query }
%struct.ufs_query = type { %struct.ufs_query_req, ptr, %struct.ufs_query_res }
%struct.ufs_query_req = type { i8, %struct.utp_upiu_query }
%struct.utp_upiu_query = type { i8, i8, i8, i8, i16, i16, i32, [2 x i32] }
%struct.ufs_query_res = type { i8, %struct.utp_upiu_query }
%struct.ufs_dev_info = type { i8, i8, i8, i16, ptr, i16, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ufs_vreg_info = type { ptr, ptr, ptr, ptr }
%struct.ufs_pa_layer_attr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs_pwr_mode_info = type { i8, %struct.ufs_pa_layer_attr }
%struct.ufs_clk_gating = type { %struct.delayed_work, %struct.work_struct, i32, i32, i8, %struct.device_attribute, %struct.device_attribute, i8, i8, i32, ptr }
%struct.ufs_clk_scaling = type { i32, i32, i64, i64, %struct.device_attribute, %struct.ufs_saved_pwr_info, ptr, %struct.work_struct, %struct.work_struct, i32, i8, i8, i8, i8, i8 }
%struct.ufs_saved_pwr_info = type { %struct.ufs_pa_layer_attr, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ufshpb_dev_info = type { i32, i32, i32, %struct.atomic_t, i8, i8, i8, i8 }
%struct.ufs_hba_monitor = type { i32, [2 x i32], [2 x i64], [2 x i32], [2 x i64], [2 x i64], [2 x i64], [2 x i32], [2 x i64], i64, i8 }
%union.ufs_crypto_capabilities = type { i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.ufs_mtk_host = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ufs_mtk_hw_ver, i32, i8, i8, i8, i16, i16, i32 }
%struct.ufs_mtk_hw_ver = type { i8, i8, i8 }
%struct.ufs_mtk_crypt_cfg = type { ptr, ptr, ptr, ptr, i32 }
%struct.ufs_hba_variant_params = type { %struct.devfreq_dev_profile, %struct.devfreq_simple_ondemand_data, i16, i32 }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.ufs_dev_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs_vreg = type { ptr, ptr, i8, i8, i32, i32, i32 }

@__tpstrtab_ufs_mtk_event = internal constant [14 x i8] c"ufs_mtk_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ufs_mtk_event = dso_local global %struct.static_call_key { ptr @__traceiter_ufs_mtk_event }, align 4
@__tracepoint_ufs_mtk_event = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ufs_mtk_event, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ufs_mtk_event, ptr null, ptr @__traceiter_ufs_mtk_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ufs_mtk_event = internal constant ptr @__tracepoint_ufs_mtk_event, section "__tracepoints_ptrs", align 4
@str__ufs_mtk__trace_system_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ufs_mtk\00", [24 x i8] zeroinitializer }, align 32
@trace_event_fields_ufs_mtk_event = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_ufs_mtk_event = internal global %struct.trace_event_class { ptr @str__ufs_mtk__trace_system_name, ptr @trace_event_raw_event_ufs_mtk_event, ptr @perf_trace_ufs_mtk_event, ptr @trace_event_reg, ptr @trace_event_fields_ufs_mtk_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ufs_mtk_event, i64 24), ptr getelementptr (i8, ptr @event_class_ufs_mtk_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ufs_mtk_event = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ufs_mtk_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ufs_mtk_event = internal global { [45 x i8], [51 x i8] } { [45 x i8] c"\22ufs:event=%u data=%u\22, REC->type, REC->data\00", [51 x i8] zeroinitializer }, align 32
@event_ufs_mtk_event = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ufs_mtk_event, %union.anon.1 { ptr @__tracepoint_ufs_mtk_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ufs_mtk_event }, ptr @print_fmt_ufs_mtk_event, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ufs_mtk_event = internal global ptr @event_ufs_mtk_event, section "_ftrace_events", align 4
@__bpf_trace_tp_map_ufs_mtk_event = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_ufs_mtk_event, ptr @__bpf_trace_ufs_mtk_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__UNIQUE_ID_author353 = internal constant [59 x i8] c"ufs_mediatek.author=Stanley Chu <stanley.chu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author354 = internal constant [57 x i8] c"ufs_mediatek.author=Peter Wang <peter.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description355 = internal constant [50 x i8] c"ufs_mediatek.description=MediaTek UFS Host Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [48 x i8] c"ufs_mediatek.file=drivers/scsi/ufs/ufs-mediatek\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [28 x i8] c"ufs_mediatek.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_ufs_mediatek__358_1253_ufs_mtk_pltform_init6 = internal global ptr @ufs_mtk_pltform_init, section ".initcall6.init", align 4
@ufs_mtk_pltform = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ufs_mtk_probe, ptr @ufs_mtk_remove, ptr @ufshcd_pltfrm_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ufs_mtk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufs_mtk_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ufs_mtk_pltform_exit = internal global ptr @ufs_mtk_pltform_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ufs:event=%u data=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ufshcd-mtk\00", [21 x i8] zeroinitializer }, align 32
@ufs_mtk_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-ufshci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ufs_mtk_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @ufshcd_suspend_prepare, ptr @ufshcd_resume_complete, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr @ufshcd_system_suspend, ptr @ufshcd_system_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ufshcd_runtime_suspend, ptr @ufshcd_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,syscon-reset\00", [16 x i8] zeroinitializer }, align 32
@ufs_mtk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1182, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"find ti,syscon-reset fail\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufs_mtk_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/ufs/ufs-mediatek.c\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ufs_mtk_probe._entry_ptr = internal global ptr @ufs_mtk_probe._entry, section ".printk_index", align 4
@ufs_mtk_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 1187, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"find reset_pdev fail\0A\00", [42 x i8] zeroinitializer }, align 32
@ufs_mtk_probe._entry_ptr.13 = internal global ptr @ufs_mtk_probe._entry.11, section ".printk_index", align 4
@ufs_mtk_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 1194, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"add reset device_link fail\0A\00", [36 x i8] zeroinitializer }, align 32
@ufs_mtk_probe._entry_ptr.16 = internal global ptr @ufs_mtk_probe._entry.14, section ".printk_index", align 4
@ufs_hba_mtk_vops = internal constant { %struct.ufs_hba_variant_ops, [40 x i8] } { %struct.ufs_hba_variant_ops { ptr @.str.21, ptr @ufs_mtk_init, ptr null, ptr @ufs_mtk_get_ufs_hci_version, ptr null, ptr @ufs_mtk_setup_clocks, ptr @ufs_mtk_hce_enable_notify, ptr @ufs_mtk_link_startup_notify, ptr @ufs_mtk_pwr_change_notify, ptr null, ptr null, ptr null, ptr @ufs_mtk_apply_dev_quirks, ptr @ufs_mtk_fixup_dev_quirks, ptr @ufs_mtk_suspend, ptr @ufs_mtk_resume, ptr @ufs_mtk_dbg_register_dump, ptr null, ptr @ufs_mtk_device_reset, ptr null, ptr null, ptr @ufs_mtk_event_notify }, [40 x i8] zeroinitializer }, align 32
@ufs_mtk_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.8, i32 1209, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"probe failed %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ufs_mtk_probe._entry_ptr.20 = internal global ptr @ufs_mtk_probe._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mediatek.ufshci\00", [16 x i8] zeroinitializer }, align 32
@ufs_mtk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.8, i32 699, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: no memory for mtk ufs host\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ufs_mtk_init\00", [19 x i8] zeroinitializer }, align 32
@ufs_mtk_init._entry_ptr = internal global ptr @ufs_mtk_init._entry, section ".printk_index", align 4
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mediatek,ufs-boost-crypt\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mediatek,ufs-support-va09\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mediatek,ufs-disable-ah8\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mediatek,ufs-broken-vcc\00", [40 x i8] zeroinitializer }, align 32
@ufs_mtk_init_host_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.8, i32 583, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"caps: 0x%x\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs_mtk_init_host_caps\00", [41 x i8] zeroinitializer }, align 32
@ufs_mtk_init_host_caps._entry_ptr = internal global ptr @ufs_mtk_init_host_caps._entry, section ".printk_index", align 4
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvfsrc-vcore\00", [19 x i8] zeroinitializer }, align 32
@ufs_mtk_init_boost_crypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.8, i32 524, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get dvfsrc-vcore: %ld\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs_mtk_init_boost_crypt\00", [39 x i8] zeroinitializer }, align 32
@ufs_mtk_init_boost_crypt._entry_ptr = internal global ptr @ufs_mtk_init_boost_crypt._entry, section ".printk_index", align 4
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"boost-crypt-vcore-min\00", [42 x i8] zeroinitializer }, align 32
@ufs_mtk_init_boost_crypt._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.8, i32 530, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get boost-crypt-vcore-min\00", [60 x i8] zeroinitializer }, align 32
@ufs_mtk_init_boost_crypt._entry_ptr.36 = internal global ptr @ufs_mtk_init_boost_crypt._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"crypt_mux\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"crypt_lp\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crypt_perf\00", [21 x i8] zeroinitializer }, align 32
@ufs_mtk_init_host_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.8, i32 502, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: failed to get %s: %d\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ufs_mtk_init_host_clk\00", [42 x i8] zeroinitializer }, align 32
@ufs_mtk_init_host_clk._entry_ptr = internal global ptr @ufs_mtk_init_host_clk._entry, section ".printk_index", align 4
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"va09\00", [27 x i8] zeroinitializer }, align 32
@ufs_mtk_init_va09_pwr_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.8, i32 561, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get va09\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ufs_mtk_init_va09_pwr_ctrl\00", [37 x i8] zeroinitializer }, align 32
@ufs_mtk_init_va09_pwr_ctrl._entry_ptr = internal global ptr @ufs_mtk_init_va09_pwr_ctrl._entry, section ".printk_index", align 4
@ufs_mtk_bind_mphy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.8, i32 217, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: required phy hasn't probed yet. err = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs_mtk_bind_mphy\00", [46 x i8] zeroinitializer }, align 32
@ufs_mtk_bind_mphy._entry_ptr = internal global ptr @ufs_mtk_bind_mphy._entry, section ".printk_index", align 4
@ufs_mtk_bind_mphy._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.8, i32 222, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: PHY get failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_mtk_bind_mphy._entry_ptr.49 = internal global ptr @ufs_mtk_bind_mphy._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hci_rst\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unipro_rst\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crypto_rst\00", [21 x i8] zeroinitializer }, align 32
@ufs_mtk_init_reset_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.8, i32 151, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get reset control %s: %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ufs_mtk_init_reset_control\00", [37 x i8] zeroinitializer }, align 32
@ufs_mtk_init_reset_control._entry_ptr = internal global ptr @ufs_mtk_init_reset_control._entry, section ".printk_index", align 4
@ufs_mtk_mphy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.8, i32 415, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to %s va09: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ufs_mtk_mphy_power_on\00", [42 x i8] zeroinitializer }, align 32
@ufs_mtk_mphy_power_on._entry_ptr = internal global ptr @ufs_mtk_mphy_power_on._entry, section ".printk_index", align 4
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@ufs_mtk_boost_crypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.8, i32 455, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clk_prepare_enable(): %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs_mtk_boost_crypt\00", [44 x i8] zeroinitializer }, align 32
@ufs_mtk_boost_crypt._entry_ptr = internal global ptr @ufs_mtk_boost_crypt._entry, section ".printk_index", align 4
@ufs_mtk_boost_crypt._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.8, i32 463, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set vcore to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ufs_mtk_boost_crypt._entry_ptr.63 = internal global ptr @ufs_mtk_boost_crypt._entry.61, section ".printk_index", align 4
@ufs_mtk_boost_crypt._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.8, i32 471, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set clk_crypt_perf\0A\00", [34 x i8] zeroinitializer }, align 32
@ufs_mtk_boost_crypt._entry_ptr.66 = internal global ptr @ufs_mtk_boost_crypt._entry.64, section ".printk_index", align 4
@ufs_mtk_boost_crypt._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.8, i32 480, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set clk_crypt_lp\0A\00", [36 x i8] zeroinitializer }, align 32
@ufs_mtk_boost_crypt._entry_ptr.69 = internal global ptr @ufs_mtk_boost_crypt._entry.67, section ".printk_index", align 4
@ufs_mtk_boost_crypt._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.60, ptr @.str.8, i32 487, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set vcore to MIN\0A\00", [36 x i8] zeroinitializer }, align 32
@ufs_mtk_boost_crypt._entry_ptr.72 = internal global ptr @ufs_mtk_boost_crypt._entry.70, section ".printk_index", align 4
@ufs_mtk_setup_ref_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.8, i32 269, ptr @.str.75, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing ack of refclk req, reg: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ufs_mtk_setup_ref_clk\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ufs_mtk_setup_ref_clk._entry_ptr = internal global ptr @ufs_mtk_setup_ref_clk._entry, section ".printk_index", align 4
@ufs_mtk_crypto_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.8, i32 124, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: crypto enable failed, err: %lu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ufs_mtk_crypto_enable\00", [42 x i8] zeroinitializer }, align 32
@ufs_mtk_crypto_enable._entry_ptr = internal global ptr @ufs_mtk_crypto_enable._entry, section ".printk_index", align 4
@ufs_mtk_pre_pwr_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.8, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: failed to determine capabilities\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs_mtk_pre_pwr_change\00", [41 x i8] zeroinitializer }, align 32
@ufs_mtk_pre_pwr_change._entry_ptr = internal global ptr @ufs_mtk_pre_pwr_change._entry, section ".printk_index", align 4
@ufs_mtk_dev_fixups = internal global { [3 x %struct.ufs_dev_fix], [60 x i8] } { [3 x %struct.ufs_dev_fix] [%struct.ufs_dev_fix { i16 300, ptr @.str.80, i32 2048 }, %struct.ufs_dev_fix { i16 429, ptr @.str.81, i32 1024 }, %struct.ufs_dev_fix zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ANY_MODEL\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"H9HQ21AFAMZDAR\00", [17 x i8] zeroinitializer }, align 32
@ufs_mtk_auto_hibern8_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.8, i32 1008, ptr @.str.84, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"exit h8 state fail, ret=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ufs_mtk_auto_hibern8_disable\00", [35 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ufs_mtk_auto_hibern8_disable._entry_ptr = internal global ptr @ufs_mtk_auto_hibern8_disable._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ufs_mtk_wait_idle_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.8, i32 352, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wait idle tmo: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufs_mtk_wait_idle_state\00", [40 x i8] zeroinitializer }, align 32
@ufs_mtk_wait_idle_state._entry_ptr = internal global ptr @ufs_mtk_wait_idle_state._entry, section ".printk_index", align 4
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Ref-Clk Ctrl \00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Ext Reg \00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MPHY Ctrl \00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Debug Probe \00", [19 x i8] zeroinitializer }, align 32
@ufs_mtk_device_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.8, i32 936, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"device reset done\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ufs_mtk_device_reset\00", [43 x i8] zeroinitializer }, align 32
@ufs_mtk_device_reset._entry_ptr = internal global ptr @ufs_mtk_device_reset._entry, section ".printk_index", align 4
@.str.93 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/scsi/ufs/ufs-mediatek-trace.h\00", [58 x i8] zeroinitializer }, align 32
@trace_ufs_mtk_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 16, i64 408, i64 429, i64 462]
@___asan_gen_.99 = private unnamed_addr constant [32 x i8] c"str__ufs_mtk__trace_system_name\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 36, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant [33 x i8] c"trace_event_fields_ufs_mtk_event\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_ufs_mtk_event\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [24 x i8] c"print_fmt_ufs_mtk_event\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"event_ufs_mtk_event\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"ufs_mtk_pltform\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1237, i32 31 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1242, i32 13 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"ufs_mtk_of_match\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 55, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"ufs_mtk_pm_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1230, i32 32 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1180, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1182, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1187, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1194, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"ufs_hba_mtk_vops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1148, i32 41 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1209, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1149, i32 25 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 699, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 571, i32 32 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 574, i32 32 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 577, i32 32 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 580, i32 32 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 583, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 521, i32 41 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 523, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 528, i32 41 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 530, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 535, i32 33 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 539, i32 33 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 543, i32 33 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 501, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 559, i32 43 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 561, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 215, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 221, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 161, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 163, i32 8 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 165, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 150, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 412, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 454, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 462, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 470, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 479, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 486, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 269, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 123, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 774, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant [19 x i8] c"ufs_mtk_dev_fixups\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 47, i32 27 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 48, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 50, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1008, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 352, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1079, i32 50 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1081, i32 45 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1085, i32 5 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1089, i32 44 }
@___asan_gen_.420 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.427 = private constant [35 x i8] c"../drivers/scsi/ufs/ufs-mediatek.c\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 936, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant [62 x i8] c"../include/trace/../../drivers/scsi/ufs//ufs-mediatek-trace.h\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 13, i32 1 }
@___asan_gen_.435 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 108, i32 2 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @__UNIQUE_ID_author353, ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_license357, ptr @__bpf_trace_tp_map_ufs_mtk_event, ptr @__event_ufs_mtk_event, ptr @__exitcall_ufs_mtk_pltform_exit, ptr @__initcall__kmod_ufs_mediatek__358_1253_ufs_mtk_pltform_init6, ptr @__tracepoint_ptr_ufs_mtk_event, ptr @__tracepoint_ufs_mtk_event, ptr @event_class_ufs_mtk_event, ptr @event_ufs_mtk_event, ptr @ufs_mtk_auto_hibern8_disable._entry, ptr @ufs_mtk_auto_hibern8_disable._entry_ptr, ptr @ufs_mtk_bind_mphy._entry, ptr @ufs_mtk_bind_mphy._entry.47, ptr @ufs_mtk_bind_mphy._entry_ptr, ptr @ufs_mtk_bind_mphy._entry_ptr.49, ptr @ufs_mtk_boost_crypt._entry, ptr @ufs_mtk_boost_crypt._entry.61, ptr @ufs_mtk_boost_crypt._entry.64, ptr @ufs_mtk_boost_crypt._entry.67, ptr @ufs_mtk_boost_crypt._entry.70, ptr @ufs_mtk_boost_crypt._entry_ptr, ptr @ufs_mtk_boost_crypt._entry_ptr.63, ptr @ufs_mtk_boost_crypt._entry_ptr.66, ptr @ufs_mtk_boost_crypt._entry_ptr.69, ptr @ufs_mtk_boost_crypt._entry_ptr.72, ptr @ufs_mtk_crypto_enable._entry, ptr @ufs_mtk_crypto_enable._entry_ptr, ptr @ufs_mtk_device_reset._entry, ptr @ufs_mtk_device_reset._entry_ptr, ptr @ufs_mtk_init._entry, ptr @ufs_mtk_init._entry_ptr, ptr @ufs_mtk_init_boost_crypt._entry, ptr @ufs_mtk_init_boost_crypt._entry.34, ptr @ufs_mtk_init_boost_crypt._entry_ptr, ptr @ufs_mtk_init_boost_crypt._entry_ptr.36, ptr @ufs_mtk_init_host_caps._entry, ptr @ufs_mtk_init_host_caps._entry_ptr, ptr @ufs_mtk_init_host_clk._entry, ptr @ufs_mtk_init_host_clk._entry_ptr, ptr @ufs_mtk_init_reset_control._entry, ptr @ufs_mtk_init_reset_control._entry_ptr, ptr @ufs_mtk_init_va09_pwr_ctrl._entry, ptr @ufs_mtk_init_va09_pwr_ctrl._entry_ptr, ptr @ufs_mtk_mphy_power_on._entry, ptr @ufs_mtk_mphy_power_on._entry_ptr, ptr @ufs_mtk_pltform_exit, ptr @ufs_mtk_pre_pwr_change._entry, ptr @ufs_mtk_pre_pwr_change._entry_ptr, ptr @ufs_mtk_probe._entry, ptr @ufs_mtk_probe._entry.11, ptr @ufs_mtk_probe._entry.14, ptr @ufs_mtk_probe._entry.17, ptr @ufs_mtk_probe._entry_ptr, ptr @ufs_mtk_probe._entry_ptr.13, ptr @ufs_mtk_probe._entry_ptr.16, ptr @ufs_mtk_probe._entry_ptr.20, ptr @ufs_mtk_setup_ref_clk._entry, ptr @ufs_mtk_setup_ref_clk._entry_ptr, ptr @ufs_mtk_wait_idle_state._entry, ptr @ufs_mtk_wait_idle_state._entry_ptr, ptr @str__ufs_mtk__trace_system_name, ptr @trace_event_fields_ufs_mtk_event, ptr @trace_event_type_funcs_ufs_mtk_event, ptr @print_fmt_ufs_mtk_event, ptr @ufs_mtk_pltform, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ufs_mtk_of_match, ptr @ufs_mtk_pm_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @ufs_hba_mtk_vops, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @ufs_mtk_dev_fixups, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__ufs_mtk__trace_system_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ufs_mtk_event to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ufs_mtk_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ufs_mtk_event to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ufs_mtk_event to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_pltform to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hba_mtk_vops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_init_host_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_init_boost_crypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_init_boost_crypt._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_init_host_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_init_va09_pwr_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_bind_mphy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_bind_mphy._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_init_reset_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_mphy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_boost_crypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_boost_crypt._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_boost_crypt._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_boost_crypt._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_boost_crypt._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_setup_ref_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_crypto_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_pre_pwr_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_dev_fixups to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_auto_hibern8_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_wait_idle_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_mtk_device_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ufs_mtk_event(ptr nocapture readnone %__data, i32 noundef %type, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ufs_mtk_event, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, i32 noundef %type, i32 noundef %data) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ufs_mtk_event(ptr noundef %__data, i32 noundef %type, i32 noundef %data) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !225

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !226

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %type6 = getelementptr inbounds %struct.trace_event_raw_ufs_mtk_event, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %type6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %type6, align 4
  %data7 = getelementptr inbounds %struct.trace_event_raw_ufs_mtk_event, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %data7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %data, ptr %data7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ufs_mtk_event(ptr noundef %__data, i32 noundef %type, i32 noundef %data) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !227
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !227
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !215) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !215) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %type17 = getelementptr inbounds %struct.trace_event_raw_ufs_mtk_event, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %type, ptr %type17, align 4
  %data18 = getelementptr inbounds %struct.trace_event_raw_ufs_mtk_event, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %data18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %data, ptr %data18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ufs_mtk_event(ptr noundef %__data, i32 noundef %type, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %type to i64
  %conv4 = zext i32 %data to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mtk_pltform_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ufs_mtk_pltform, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ufs_mtk_pltform_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @ufs_mtk_pltform) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ufs_mtk_event(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %type = getelementptr inbounds %struct.trace_event_raw_ufs_mtk_event, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %data = getelementptr inbounds %struct.trace_event_raw_ufs_mtk_event, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.3, i32 noundef %3, i32 noundef %5) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mtk_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out.sink.split_crit_edge, label %if.end

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out.sink.split_crit_edge, label %if.end8

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

if.end8:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %call2, i32 0, i32 3
  %call10 = tail call ptr @device_link_add(ptr noundef %dev1, ptr noundef %dev9, i32 noundef 32) #10
  tail call void @put_device(ptr noundef %dev9) #10
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end8.out.sink.split_crit_edge, label %if.end17

if.end8.out.sink.split_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

if.end17:                                         ; preds = %if.end8
  %status = getelementptr inbounds %struct.device_link, ptr %call10, i32 0, i32 5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end17.do.end25_crit_edge, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end17.do.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

out.sink.split:                                   ; preds = %if.end8.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str.6, %entry.out.sink.split_crit_edge ], [ @.str.12, %if.end.out.sink.split_crit_edge ], [ @.str.15, %if.end8.out.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull %.str.6.sink) #13
  br label %out

out:                                              ; preds = %out.sink.split, %if.end17.out_crit_edge
  %call20 = tail call i32 @ufshcd_pltfrm_init(ptr noundef %pdev, ptr noundef nonnull @ufs_hba_mtk_vops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %out.if.end26_crit_edge, label %out.do.end25_crit_edge

out.do.end25_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

out.if.end26_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end25:                                         ; preds = %out.do.end25_crit_edge, %if.end17.do.end25_crit_edge
  %err.041 = phi i32 [ %call20, %out.do.end25_crit_edge ], [ -517, %if.end17.do.end25_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %err.041) #13
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %out.if.end26_crit_edge
  %err.042 = phi i32 [ %err.041, %do.end25 ], [ 0, %out.if.end26_crit_edge ]
  tail call void @of_node_put(ptr noundef %call) #10
  ret i32 %err.042
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mtk_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  tail call void @ufshcd_remove(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_pltfrm_shutdown(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_pltfrm_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mtk_init(ptr noundef %hba) #0 align 64 {
entry:
  %volt.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 48, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #13
  br label %out

if.end:                                           ; preds = %entry
  %hba2 = getelementptr inbounds %struct.ufs_mtk_host, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %hba2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hba, ptr %hba2, align 4
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_set_variant.exit, !prof !226

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1054, 0\0A.popsection", ""() #10, !srcloc !228
  unreachable

ufshcd_set_variant.exit:                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %priv.i, align 8
  %call3 = tail call ptr @of_match_device(ptr noundef nonnull @ufs_mtk_of_match, ptr noundef %1) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %ufshcd_set_variant.exit.out_crit_edge, label %ufshcd_get_variant.exit.i

ufshcd_set_variant.exit.out_crit_edge:            ; preds = %ufshcd_set_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

ufshcd_get_variant.exit.i:                        ; preds = %ufshcd_set_variant.exit
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.24, ptr noundef null) #10
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %ufshcd_get_variant.exit.i.if.end.i_crit_edge, label %ufshcd_get_variant.exit.i.i

ufshcd_get_variant.exit.i.if.end.i_crit_edge:     ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

ufshcd_get_variant.exit.i.i:                      ; preds = %ufshcd_get_variant.exit.i
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %volt.i.i) #10
  %14 = ptrtoint ptr %volt.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %volt.i.i, align 4, !annotation !227
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef 20, i32 noundef 3520) #10
  %crypt.i.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %11, i32 0, i32 6
  %15 = ptrtoint ptr %crypt.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i.i, ptr %crypt.i.i, align 4
  %tobool.not.i24.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i24.i, label %ufshcd_get_variant.exit.i.i.ufs_mtk_init_boost_crypt.exit.i_crit_edge, label %if.end.i.i

ufshcd_get_variant.exit.i.i.ufs_mtk_init_boost_crypt.exit.i_crit_edge: ; preds = %ufshcd_get_variant.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_init_boost_crypt.exit.i

if.end.i.i:                                       ; preds = %ufshcd_get_variant.exit.i.i
  %call4.i.i = tail call ptr @devm_regulator_get_optional(ptr noundef %13, ptr noundef nonnull @.str.30) #10
  %cmp.i.i.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end8.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call4.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.31, i32 noundef %16) #13
  br label %ufs_mtk_init_boost_crypt.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %17 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.33, ptr noundef nonnull %volt.i.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool10.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool10.not.i.i, label %if.end15.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.35) #13
  br label %ufs_mtk_init_boost_crypt.exit.i

if.end15.i.i:                                     ; preds = %if.end8.i.i
  %19 = ptrtoint ptr %crypt.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crypt.i.i, align 4
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 8
  %call.i.i46.i.i = call ptr @devm_clk_get(ptr noundef %22, ptr noundef nonnull @.str.37) #10
  %cmp.i.i.i.i.i = icmp ugt ptr %call.i.i46.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i.i, label %ufs_mtk_init_host_clk.exit.i.i, label %ufs_mtk_init_host_clk.exit.thread.i.i

ufs_mtk_init_host_clk.exit.thread.i.i:            ; preds = %if.end15.i.i
  %clk_crypt_mux.i.i = getelementptr inbounds %struct.ufs_mtk_crypt_cfg, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %clk_crypt_mux.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i46.i.i, ptr %clk_crypt_mux.i.i, align 4
  %24 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1, align 8
  %call.i.i48.i.i = call ptr @devm_clk_get(ptr noundef %25, ptr noundef nonnull @.str.38) #10
  %cmp.i.i.i49.i.i = icmp ugt ptr %call.i.i48.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i49.i.i, label %ufs_mtk_init_host_clk.exit53.i.i, label %ufs_mtk_init_host_clk.exit53.thread.i.i

ufs_mtk_init_host_clk.exit.i.i:                   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %call.i.i46.i.i to i32
  %27 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.37, i32 noundef %26) #13
  br label %ufs_mtk_init_boost_crypt.exit.i

ufs_mtk_init_host_clk.exit53.thread.i.i:          ; preds = %ufs_mtk_init_host_clk.exit.thread.i.i
  %clk_crypt_lp.i.i = getelementptr inbounds %struct.ufs_mtk_crypt_cfg, ptr %20, i32 0, i32 3
  %29 = ptrtoint ptr %clk_crypt_lp.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i48.i.i, ptr %clk_crypt_lp.i.i, align 4
  %30 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1, align 8
  %call.i.i55.i.i = call ptr @devm_clk_get(ptr noundef %31, ptr noundef nonnull @.str.39) #10
  %cmp.i.i.i56.i.i = icmp ugt ptr %call.i.i55.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i56.i.i, label %ufs_mtk_init_host_clk.exit60.i.i, label %ufs_mtk_init_host_clk.exit60.thread.i.i

ufs_mtk_init_host_clk.exit53.i.i:                 ; preds = %ufs_mtk_init_host_clk.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %call.i.i48.i.i to i32
  %33 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.38, i32 noundef %32) #13
  br label %ufs_mtk_init_boost_crypt.exit.i

ufs_mtk_init_host_clk.exit60.thread.i.i:          ; preds = %ufs_mtk_init_host_clk.exit53.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %clk_crypt_perf.i.i = getelementptr inbounds %struct.ufs_mtk_crypt_cfg, ptr %20, i32 0, i32 1
  %35 = ptrtoint ptr %clk_crypt_perf.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i55.i.i, ptr %clk_crypt_perf.i.i, align 4
  %36 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call4.i.i, ptr %20, align 4
  %37 = ptrtoint ptr %volt.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %volt.i.i, align 4
  %vcore_volt.i.i = getelementptr inbounds %struct.ufs_mtk_crypt_cfg, ptr %20, i32 0, i32 4
  %39 = ptrtoint ptr %vcore_volt.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %vcore_volt.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %11, i32 0, i32 8
  %40 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %caps.i.i, align 4
  %or.i.i = or i32 %41, 1
  store i32 %or.i.i, ptr %caps.i.i, align 4
  br label %ufs_mtk_init_boost_crypt.exit.i

ufs_mtk_init_host_clk.exit60.i.i:                 ; preds = %ufs_mtk_init_host_clk.exit53.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %call.i.i55.i.i to i32
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %42) #13
  br label %ufs_mtk_init_boost_crypt.exit.i

ufs_mtk_init_boost_crypt.exit.i:                  ; preds = %ufs_mtk_init_host_clk.exit60.i.i, %ufs_mtk_init_host_clk.exit60.thread.i.i, %ufs_mtk_init_host_clk.exit53.i.i, %ufs_mtk_init_host_clk.exit.i.i, %do.end14.i.i, %do.end.i.i, %ufshcd_get_variant.exit.i.i.ufs_mtk_init_boost_crypt.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %volt.i.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %ufs_mtk_init_boost_crypt.exit.i, %ufshcd_get_variant.exit.i.if.end.i_crit_edge
  %call.i25.i = call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.25, ptr noundef null) #10
  %tobool.i26.not.i = icmp eq ptr %call.i25.i, null
  br i1 %tobool.i26.not.i, label %if.end.i.if.end4.i_crit_edge, label %ufshcd_get_variant.exit.i31.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

ufshcd_get_variant.exit.i31.i:                    ; preds = %if.end.i
  %45 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i, align 8
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 8
  %call1.i.i = call ptr @regulator_get(ptr noundef %48, ptr noundef nonnull @.str.42) #10
  %reg_va09.i.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %reg_va09.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call1.i.i, ptr %reg_va09.i.i, align 4
  %cmp.i.i30.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i30.i, label %do.end.i32.i, label %if.else.i.i

do.end.i32.i:                                     ; preds = %ufshcd_get_variant.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.43) #13
  br label %if.end4.i

if.else.i.i:                                      ; preds = %ufshcd_get_variant.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #12
  %caps.i33.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %46, i32 0, i32 8
  %52 = ptrtoint ptr %caps.i33.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %caps.i33.i, align 4
  %or.i34.i = or i32 %53, 2
  store i32 %or.i34.i, ptr %caps.i33.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i.i, %do.end.i32.i, %if.end.i.if.end4.i_crit_edge
  %call.i36.i = call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.26, ptr noundef null) #10
  %tobool.i37.not.i = icmp eq ptr %call.i36.i, null
  br i1 %tobool.i37.not.i, label %if.end4.i.if.end7.i_crit_edge, label %if.then6.i

if.end4.i.if.end7.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %caps.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %5, i32 0, i32 8
  %54 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %caps.i, align 4
  %or.i = or i32 %55, 4
  store i32 %or.i, ptr %caps.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end7.i_crit_edge
  %call.i38.i = call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.27, ptr noundef null) #10
  %tobool.i39.not.i = icmp eq ptr %call.i38.i, null
  br i1 %tobool.i39.not.i, label %if.end7.i.ufshcd_get_variant.exit.i55_crit_edge, label %if.then9.i

if.end7.i.ufshcd_get_variant.exit.i55_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_get_variant.exit.i55

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %caps10.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %5, i32 0, i32 8
  %56 = ptrtoint ptr %caps10.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %caps10.i, align 4
  %or11.i = or i32 %57, 8
  store i32 %or11.i, ptr %caps10.i, align 4
  br label %ufshcd_get_variant.exit.i55

ufshcd_get_variant.exit.i55:                      ; preds = %if.then9.i, %if.end7.i.ufshcd_get_variant.exit.i55_crit_edge
  %58 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev1, align 8
  %caps14.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %5, i32 0, i32 8
  %60 = ptrtoint ptr %caps14.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %caps14.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.28, i32 noundef %61) #13
  %62 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv.i, align 8
  %64 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev1, align 8
  %of_node.i54 = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 27
  %66 = ptrtoint ptr %of_node.i54 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %of_node.i54, align 8
  %call2.i = call ptr @devm_of_phy_get_by_index(ptr noundef %65, ptr noundef %67, i32 noundef 0) #10
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call2.i, ptr %63, align 4
  %cmp.i = icmp eq ptr %call2.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i, label %ufs_mtk_bind_mphy.exit.thread77, label %if.else.i

if.else.i:                                        ; preds = %ufshcd_get_variant.exit.i55
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.i, label %if.else.i.ufshcd_get_variant.exit.i61_crit_edge

if.else.i.ufshcd_get_variant.exit.i61_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_get_variant.exit.i61

if.then7.i:                                       ; preds = %if.else.i
  %cmp10.not.i = icmp eq ptr %call2.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp10.not.i, label %ufs_mtk_bind_mphy.exit.thread74, label %ufs_mtk_bind_mphy.exit

ufs_mtk_bind_mphy.exit.thread74:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %63, align 4
  br label %ufshcd_get_variant.exit.i61

ufs_mtk_bind_mphy.exit.thread77:                  ; preds = %ufshcd_get_variant.exit.i55
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef -517) #13
  br label %ufshcd_set_variant.exit72

ufs_mtk_bind_mphy.exit:                           ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %call2.i to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, i32 noundef %70) #13
  br label %ufshcd_set_variant.exit72

ufshcd_get_variant.exit.i61:                      ; preds = %ufs_mtk_bind_mphy.exit.thread74, %if.else.i.ufshcd_get_variant.exit.i61_crit_edge
  %71 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv.i, align 8
  %hci_reset.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev1, align 8
  %call.i.i.i.i59 = call ptr @__devm_reset_control_get(ptr noundef %74, ptr noundef nonnull @.str.50, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %75 = ptrtoint ptr %hci_reset.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i.i.i.i59, ptr %hci_reset.i, align 4
  %cmp.i.i.i60 = icmp ugt ptr %call.i.i.i.i59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i60, label %do.end.i.i62, label %ufshcd_get_variant.exit.i61.ufs_mtk_init_reset_control.exit.i_crit_edge

ufshcd_get_variant.exit.i61.ufs_mtk_init_reset_control.exit.i_crit_edge: ; preds = %ufshcd_get_variant.exit.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_init_reset_control.exit.i

do.end.i.i62:                                     ; preds = %ufshcd_get_variant.exit.i61
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev1, align 8
  %78 = ptrtoint ptr %call.i.i.i.i59 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50, i32 noundef %78) #13
  %79 = ptrtoint ptr %hci_reset.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %hci_reset.i, align 4
  br label %ufs_mtk_init_reset_control.exit.i

ufs_mtk_init_reset_control.exit.i:                ; preds = %do.end.i.i62, %ufshcd_get_variant.exit.i61.ufs_mtk_init_reset_control.exit.i_crit_edge
  %unipro_reset.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %72, i32 0, i32 3
  %80 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev1, align 8
  %call.i.i.i7.i = call ptr @__devm_reset_control_get(ptr noundef %81, ptr noundef nonnull @.str.51, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %82 = ptrtoint ptr %unipro_reset.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i.i.i7.i, ptr %unipro_reset.i, align 4
  %cmp.i.i8.i = icmp ugt ptr %call.i.i.i7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i8.i, label %do.end.i9.i, label %ufs_mtk_init_reset_control.exit.i.ufs_mtk_init_reset_control.exit10.i_crit_edge

ufs_mtk_init_reset_control.exit.i.ufs_mtk_init_reset_control.exit10.i_crit_edge: ; preds = %ufs_mtk_init_reset_control.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_init_reset_control.exit10.i

do.end.i9.i:                                      ; preds = %ufs_mtk_init_reset_control.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev1, align 8
  %85 = ptrtoint ptr %call.i.i.i7.i to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %85) #13
  %86 = ptrtoint ptr %unipro_reset.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %unipro_reset.i, align 4
  br label %ufs_mtk_init_reset_control.exit10.i

ufs_mtk_init_reset_control.exit10.i:              ; preds = %do.end.i9.i, %ufs_mtk_init_reset_control.exit.i.ufs_mtk_init_reset_control.exit10.i_crit_edge
  %crypto_reset.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %72, i32 0, i32 4
  %87 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev1, align 8
  %call.i.i.i12.i = call ptr @__devm_reset_control_get(ptr noundef %88, ptr noundef nonnull @.str.52, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %89 = ptrtoint ptr %crypto_reset.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i.i.i12.i, ptr %crypto_reset.i, align 4
  %cmp.i.i13.i = icmp ugt ptr %call.i.i.i12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i13.i, label %do.end.i14.i, label %ufs_mtk_init_reset_control.exit10.i.ufs_mtk_init_reset.exit_crit_edge

ufs_mtk_init_reset_control.exit10.i.ufs_mtk_init_reset.exit_crit_edge: ; preds = %ufs_mtk_init_reset_control.exit10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_init_reset.exit

do.end.i14.i:                                     ; preds = %ufs_mtk_init_reset_control.exit10.i
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev1, align 8
  %92 = ptrtoint ptr %call.i.i.i12.i to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %91, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %92) #13
  %93 = ptrtoint ptr %crypto_reset.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %crypto_reset.i, align 4
  br label %ufs_mtk_init_reset.exit

ufs_mtk_init_reset.exit:                          ; preds = %do.end.i14.i, %ufs_mtk_init_reset_control.exit10.i.ufs_mtk_init_reset.exit_crit_edge
  %caps = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %94 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %caps, align 8
  %or16 = or i32 %95, 449
  store i32 %or16, ptr %caps, align 8
  %quirks = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 34
  %96 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %quirks, align 8
  %or17 = or i32 %97, 4096
  store i32 %or17, ptr %quirks, align 8
  %vps = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 29
  %98 = ptrtoint ptr %vps to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vps, align 4
  %wb_flush_threshold = getelementptr inbounds %struct.ufs_hba_variant_params, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %wb_flush_threshold to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 8, ptr %wb_flush_threshold, align 4
  %caps18 = getelementptr inbounds %struct.ufs_mtk_host, ptr %call.i, i32 0, i32 8
  %101 = ptrtoint ptr %caps18 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %caps18, align 4
  %and = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %ufs_mtk_init_reset.exit.ufshcd_get_variant.exit.i67_crit_edge, label %if.then20

ufs_mtk_init_reset.exit.ufshcd_get_variant.exit.i67_crit_edge: ; preds = %ufs_mtk_init_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_get_variant.exit.i67

if.then20:                                        ; preds = %ufs_mtk_init_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %caps, align 8
  %or22 = or i32 %104, 2
  store i32 %or22, ptr %caps, align 8
  br label %ufshcd_get_variant.exit.i67

ufshcd_get_variant.exit.i67:                      ; preds = %if.then20, %ufs_mtk_init_reset.exit.ufshcd_get_variant.exit.i67_crit_edge
  %call24 = call fastcc i32 @ufs_mtk_mphy_power_on(ptr noundef nonnull %hba, i1 noundef zeroext true)
  %105 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %priv.i, align 8
  %tobool.not.i66 = icmp eq ptr %106, null
  br i1 %tobool.not.i66, label %ufshcd_get_variant.exit.i67.ufs_mtk_setup_clocks.exit_crit_edge, label %if.end.i68

ufshcd_get_variant.exit.i67.ufs_mtk_setup_clocks.exit_crit_edge: ; preds = %ufshcd_get_variant.exit.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_setup_clocks.exit

if.end.i68:                                       ; preds = %ufshcd_get_variant.exit.i67
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ufs_mtk_scale_perf(ptr noundef nonnull %hba, i1 noundef zeroext true) #10
  br label %ufs_mtk_setup_clocks.exit

ufs_mtk_setup_clocks.exit:                        ; preds = %if.end.i68, %ufshcd_get_variant.exit.i67.ufs_mtk_setup_clocks.exit_crit_edge
  %107 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hba, align 8
  %add.ptr = getelementptr i8, ptr %108, i32 8768
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !229
  %110 = call i32 @llvm.bswap.i32(i32 %109)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  %ip_ver = getelementptr inbounds %struct.ufs_mtk_host, ptr %call.i, i32 0, i32 14
  %111 = ptrtoint ptr %ip_ver to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %ip_ver, align 4
  br label %out

ufshcd_set_variant.exit72:                        ; preds = %ufs_mtk_bind_mphy.exit, %ufs_mtk_bind_mphy.exit.thread77
  %.ph.i80 = phi i32 [ -517, %ufs_mtk_bind_mphy.exit.thread77 ], [ %70, %ufs_mtk_bind_mphy.exit ]
  %112 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %63, align 4
  %113 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %priv.i, align 8
  br label %out

out:                                              ; preds = %ufshcd_set_variant.exit72, %ufs_mtk_setup_clocks.exit, %ufshcd_set_variant.exit.out_crit_edge, %if.then
  %err.0 = phi i32 [ %.ph.i80, %ufshcd_set_variant.exit72 ], [ 0, %ufs_mtk_setup_clocks.exit ], [ -12, %if.then ], [ -22, %ufshcd_set_variant.exit.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ufs_mtk_get_ufs_hci_version(ptr nocapture noundef readonly %hba) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ufs_version = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 27
  %0 = ptrtoint ptr %ufs_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ufs_version, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mtk_setup_clocks(ptr noundef %hba, i1 noundef zeroext %on, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !226

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %ufshcd_get_variant.exit.cleanup_crit_edge, label %if.end

ufshcd_get_variant.exit.cleanup_crit_edge:        ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp ne i32 %status, 0
  %2 = or i1 %cmp, %on
  br i1 %2, label %if.else20, label %if.then2

if.then2:                                         ; preds = %if.end
  %uic_link_state = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 12
  %3 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uic_link_state, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %lor.lhs.false [
    i32 0, label %if.then2.cleanup.sink.split_crit_edge
    i32 2, label %if.then2.if.then10_crit_edge
  ]

if.then2.if.then10_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then2.cleanup.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.then2
  %caps.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %6 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %ahit.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 18
  %8 = ptrtoint ptr %ahit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ahit.i, align 8
  %and.i41 = and i32 %9, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool.i42.not = icmp eq i32 %and.i41, 0
  br i1 %tobool.i42.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.then10_crit_edge

land.lhs.true8.if.then10_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true8.if.then10_crit_edge, %if.then2.if.then10_crit_edge
  %call.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call.i, 15000000
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then10
  %call2.i = tail call i64 @ktime_get() #10
  tail call fastcc void @ufs_mtk_dbg_sel(ptr noundef nonnull %hba) #10
  %10 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hba, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 8904
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %13 = and i32 %12, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %13)
  %cmp.i = icmp eq i32 %13, 48
  br i1 %cmp.i, label %do.body.i.cleanup.sink.split_crit_edge, label %if.end.i

do.body.i.cleanup.sink.split_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #10
  %cmp.i.i.i = icmp slt i64 %call2.i, %add.i.i
  br i1 %cmp.i.i.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.else20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp23 = icmp eq i32 %status, 1
  %or.cond40 = and i1 %cmp23, %on
  br i1 %or.cond40, label %if.else20.cleanup.sink.split_crit_edge, label %if.else20.cleanup_crit_edge

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else20.cleanup.sink.split_crit_edge:           ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else20.cleanup.sink.split_crit_edge, %do.body.i.cleanup.sink.split_crit_edge, %if.then2.cleanup.sink.split_crit_edge
  tail call fastcc void @ufs_mtk_scale_perf(ptr noundef nonnull %hba, i1 noundef zeroext %2)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else20.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %ufshcd_get_variant.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ufshcd_get_variant.exit.cleanup_crit_edge ], [ 0, %if.else20.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true8.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -110, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mtk_hce_enable_notify(ptr noundef %hba, i32 noundef %status) #0 align 64 {
entry:
  %res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !226

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  br i1 %cmp, label %if.then, label %ufshcd_get_variant.exit.if.end25_crit_edge

ufshcd_get_variant.exit.if.end25_crit_edge:       ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then:                                          ; preds = %ufshcd_get_variant.exit
  %unipro_lpm = getelementptr inbounds %struct.ufs_mtk_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %unipro_lpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %unipro_lpm, align 1, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %vps2 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 29
  %4 = ptrtoint ptr %vps2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vps2, align 4
  %hba_enable_delay_us3 = getelementptr inbounds %struct.ufs_hba_variant_params, ptr %5, i32 0, i32 2
  br i1 %tobool.not, label %ufs_mtk_host_reset.exit, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %hba_enable_delay_us3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %hba_enable_delay_us3, align 4
  br label %if.end

ufs_mtk_host_reset.exit:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %hba_enable_delay_us3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 600, ptr %hba_enable_delay_us3, align 4
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 8
  %hci_reset.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %hci_reset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hci_reset.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %11) #10
  %crypto_reset.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %crypto_reset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crypto_reset.i, align 4
  %call2.i = tail call i32 @reset_control_assert(ptr noundef %13) #10
  %unipro_reset.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %unipro_reset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unipro_reset.i, align 4
  %call3.i = tail call i32 @reset_control_assert(ptr noundef %15) #10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #10
  %16 = ptrtoint ptr %unipro_reset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unipro_reset.i, align 4
  %call5.i = tail call i32 @reset_control_deassert(ptr noundef %17) #10
  %18 = ptrtoint ptr %crypto_reset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crypto_reset.i, align 4
  %call7.i = tail call i32 @reset_control_deassert(ptr noundef %19) #10
  %20 = ptrtoint ptr %hci_reset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci_reset.i, align 4
  %call9.i = tail call i32 @reset_control_deassert(ptr noundef %21) #10
  br label %if.end

if.end:                                           ; preds = %ufs_mtk_host_reset.exit, %if.then1
  %caps = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %22 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %caps, align 8
  %and = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i) #10
  %24 = call ptr @memset(ptr %res.i, i32 255, i32 16)
  call void @__arm_smccc_smc(i32 noundef -2113928586, i32 noundef 4, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i, ptr noundef null) #10
  %25 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i37 = icmp eq i32 %26, 0
  br i1 %tobool.not.i37, label %if.then5.ufs_mtk_crypto_enable.exit_crit_edge, label %do.end.i

if.then5.ufs_mtk_crypto_enable.exit_crit_edge:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_crypto_enable.exit

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef %26) #13
  %29 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %caps, align 8
  %and.i = and i32 %30, -257
  store i32 %and.i, ptr %caps, align 8
  br label %ufs_mtk_crypto_enable.exit

ufs_mtk_crypto_enable.exit:                       ; preds = %do.end.i, %if.then5.ufs_mtk_crypto_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #10
  br label %if.end6

if.end6:                                          ; preds = %ufs_mtk_crypto_enable.exit, %if.end.if.end6_crit_edge
  %caps7 = getelementptr inbounds %struct.ufs_mtk_host, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %caps7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %caps7, align 4
  %and8 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end25_crit_edge, label %do.body11

if.end6.if.end25_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %host13 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 7
  %33 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host13, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host_lock, align 4
  %call15 = call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hba, align 8
  %add.ptr = getelementptr i8, ptr %38, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !235
  %39 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host13, align 4
  %host_lock22 = getelementptr inbounds %struct.Scsi_Host, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %host_lock22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host_lock22, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %call15) #10
  %capabilities = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 23
  %43 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %capabilities, align 4
  %and23 = and i32 %44, -8388609
  store i32 %and23, ptr %capabilities, align 4
  %ahit = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 18
  %45 = ptrtoint ptr %ahit to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %ahit, align 8
  br label %if.end25

if.end25:                                         ; preds = %do.body11, %if.end6.if.end25_crit_edge, %ufshcd_get_variant.exit.if.end25_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mtk_link_startup_notify(ptr noundef %hba, i32 noundef %stage) #0 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %ver.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stage to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %stage, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tmp.i, align 4, !annotation !227
  %tobool.not.i.i.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ufshcd_get_variant.exit.i.i, !prof !226

do.body4.i.i.i:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

ufshcd_get_variant.exit.i.i:                      ; preds = %sw.bb
  %priv.i.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %2 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver.i.i) #10
  %4 = ptrtoint ptr %ver.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ver.i.i, align 4
  %major.i.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %3, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %major.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %ufshcd_get_variant.exit.i.i.ufs_mtk_unipro_set_lpm.exit.i_crit_edge

ufshcd_get_variant.exit.i.i.ufs_mtk_unipro_set_lpm.exit.i_crit_edge: ; preds = %ufshcd_get_variant.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_unipro_set_lpm.exit.i

if.end.i.i:                                       ; preds = %ufshcd_get_variant.exit.i.i
  %7 = ptrtoint ptr %major.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %major.i.i, align 2
  %call.i.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef 363397120, ptr noundef nonnull %ver.i.i, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.end.i.i.ufs_mtk_unipro_set_lpm.exit.i_crit_edge

if.end.i.i.ufs_mtk_unipro_set_lpm.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_unipro_set_lpm.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %8 = ptrtoint ptr %ver.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.i.i = icmp sgt i32 %9, 4
  br i1 %cmp.i.i, label %if.then6.i.i, label %if.then5.i.i.ufs_mtk_unipro_set_lpm.exit.i_crit_edge

if.then5.i.i.ufs_mtk_unipro_set_lpm.exit.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_unipro_set_lpm.exit.i

if.then6.i.i:                                     ; preds = %if.then5.i.i
  %10 = ptrtoint ptr %major.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %major.i.i, align 2
  %ufs_version.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 27
  %11 = ptrtoint ptr %ufs_version.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ufs_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %12)
  %cmp10.i.i = icmp ult i32 %12, 768
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.then6.i.i.ufs_mtk_unipro_set_lpm.exit.i_crit_edge

if.then6.i.i.ufs_mtk_unipro_set_lpm.exit.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_unipro_set_lpm.exit.i

if.then11.i.i:                                    ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %ufs_version.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 768, ptr %ufs_version.i.i, align 4
  br label %ufs_mtk_unipro_set_lpm.exit.i

ufs_mtk_unipro_set_lpm.exit.i:                    ; preds = %if.then11.i.i, %if.then6.i.i.ufs_mtk_unipro_set_lpm.exit.i_crit_edge, %if.then5.i.i.ufs_mtk_unipro_set_lpm.exit.i_crit_edge, %if.end.i.i.ufs_mtk_unipro_set_lpm.exit.i_crit_edge, %ufshcd_get_variant.exit.i.i.ufs_mtk_unipro_set_lpm.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver.i.i) #10
  %14 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i.i.i, align 8
  %call.i.i24.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -794296320, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #10
  %unipro_lpm.i.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %unipro_lpm.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %unipro_lpm.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %tobool.not.i = icmp eq i32 %call.i.i24.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ufs_mtk_unipro_set_lpm.exit.i.ufs_mtk_pre_link.exit_crit_edge

ufs_mtk_unipro_set_lpm.exit.i.ufs_mtk_pre_link.exit_crit_edge: ; preds = %ufs_mtk_unipro_set_lpm.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_pre_link.exit

if.end.i:                                         ; preds = %ufs_mtk_unipro_set_lpm.exit.i
  %call.i.i27.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef 358481920, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27.i)
  %tobool2.not.i = icmp eq i32 %call.i.i27.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.ufs_mtk_pre_link.exit_crit_edge

if.end.i.ufs_mtk_pre_link.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_pre_link.exit

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef nonnull %hba, i32 noundef -794427392, ptr noundef nonnull %tmp.i, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.ufs_mtk_pre_link.exit_crit_edge

if.end4.i.ufs_mtk_pre_link.exit_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_pre_link.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tmp.i, align 4
  %and.i = and i32 %18, -65
  store i32 %and.i, ptr %tmp.i, align 4
  %call.i28.i = call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -794427392, i8 noundef zeroext 0, i32 noundef %and.i, i8 noundef zeroext 0) #10
  br label %ufs_mtk_pre_link.exit

ufs_mtk_pre_link.exit:                            ; preds = %if.end8.i, %if.end4.i.ufs_mtk_pre_link.exit_crit_edge, %if.end.i.ufs_mtk_pre_link.exit_crit_edge, %ufs_mtk_unipro_set_lpm.exit.i.ufs_mtk_pre_link.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i28.i, %if.end8.i ], [ %call.i.i24.i, %ufs_mtk_unipro_set_lpm.exit.i.ufs_mtk_pre_link.exit_crit_edge ], [ %call.i.i27.i, %if.end.i.ufs_mtk_pre_link.exit_crit_edge ], [ %call.i.i, %if.end4.i.ufs_mtk_pre_link.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %19 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !227
  %call.i.i.i4 = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef -794427392, ptr noundef nonnull %tmp.i.i, i8 noundef zeroext 0) #10
  %20 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp.i.i, align 4
  %or2.i.i = or i32 %21, 13
  store i32 %or2.i.i, ptr %tmp.i.i, align 4
  %call.i1.i.i = call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef -794427392, i8 noundef zeroext 0, i32 noundef %or2.i.i, i8 noundef zeroext 0) #10
  %call.i2.i.i = call i32 @ufshcd_dme_get_attr(ptr noundef %hba, i32 noundef -794755072, ptr noundef nonnull %tmp.i.i, i8 noundef zeroext 0) #10
  %22 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmp.i.i, align 4
  %and.i.i = and i32 %23, -33
  store i32 %and.i.i, ptr %tmp.i.i, align 4
  %call.i3.i.i = call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef -794755072, i8 noundef zeroext 0, i32 noundef %and.i.i, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %capabilities.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 23
  %24 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %capabilities.i.i, align 4
  %and.i1.i = and i32 %25, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i)
  %tobool.not.i.i5 = icmp eq i32 %and.i1.i, 0
  br i1 %tobool.not.i.i5, label %if.end.thread.i, label %ufshcd_is_auto_hibern8_supported.exit.i

ufshcd_is_auto_hibern8_supported.exit.i:          ; preds = %sw.bb1
  %quirks.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 34
  %26 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %quirks.i.i, align 8
  %and1.i.i = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i6, label %if.end.i6.thread

if.end.i6:                                        ; preds = %ufshcd_is_auto_hibern8_supported.exit.i
  %ahit.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 18
  %28 = ptrtoint ptr %ahit.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3082, ptr %ahit.i, align 8
  %caps.i.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %29 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %caps.i.i.i, align 8
  %and.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i6.sw.epilog_crit_edge, label %land.lhs.true.i.i

if.end.i6.sw.epilog_crit_edge:                    ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i6.thread:                                 ; preds = %ufshcd_is_auto_hibern8_supported.exit.i
  %caps.i.i.i7 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %31 = ptrtoint ptr %caps.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %caps.i.i.i7, align 8
  %and.i.i.i8 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i8)
  %tobool.i.not.i.i9 = icmp eq i32 %and.i.i.i8, 0
  br i1 %tobool.i.not.i.i9, label %if.end.i6.thread.sw.epilog_crit_edge, label %if.end.i6.thread.do.body17.i.i_crit_edge

if.end.i6.thread.do.body17.i.i_crit_edge:         ; preds = %if.end.i6.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17.i.i

if.end.i6.thread.sw.epilog_crit_edge:             ; preds = %if.end.i6.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.thread.i:                                  ; preds = %sw.bb1
  %caps.i.i4.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %33 = ptrtoint ptr %caps.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %caps.i.i4.i, align 8
  %and.i.i5.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i5.i)
  %tobool.i.not.i6.i = icmp eq i32 %and.i.i5.i, 0
  br i1 %tobool.i.not.i6.i, label %if.end.thread.i.sw.epilog_crit_edge, label %if.end.thread.i.do.body17.i.i_crit_edge

if.end.thread.i.do.body17.i.i_crit_edge:          ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17.i.i

if.end.thread.i.sw.epilog_crit_edge:              ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true.i.i:                                ; preds = %if.end.i6
  %35 = ptrtoint ptr %ahit.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ahit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i2.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i2.i, label %land.lhs.true.i.i.do.body17.i.i_crit_edge, label %do.end14.i.i

land.lhs.true.i.i.do.body17.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17.i.i

do.end14.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i3.i = and i32 %36, 1023
  %phi.bo.i.i = add nuw nsw i32 %and.i3.i, 5
  br label %do.body17.i.i

do.body17.i.i:                                    ; preds = %do.end14.i.i, %land.lhs.true.i.i.do.body17.i.i_crit_edge, %if.end.thread.i.do.body17.i.i_crit_edge, %if.end.i6.thread.do.body17.i.i_crit_edge
  %ah_ms.0.i.i = phi i32 [ %phi.bo.i.i, %do.end14.i.i ], [ 15, %land.lhs.true.i.i.do.body17.i.i_crit_edge ], [ 15, %if.end.thread.i.do.body17.i.i_crit_edge ], [ 15, %if.end.i6.thread.do.body17.i.i_crit_edge ]
  %host.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 7
  %37 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host.i.i, align 4
  %host_lock.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %host_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host_lock.i.i, align 4
  %call20.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #10
  %delay_ms.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 74, i32 3
  %41 = ptrtoint ptr %delay_ms.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %ah_ms.0.i.i, ptr %delay_ms.i.i, align 4
  %42 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host.i.i, align 4
  %host_lock26.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %host_lock26.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %host_lock26.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %45, i32 noundef %call20.i.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body17.i.i, %if.end.thread.i.sw.epilog_crit_edge, %if.end.i6.thread.sw.epilog_crit_edge, %if.end.i6.sw.epilog_crit_edge, %ufs_mtk_pre_link.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %ufs_mtk_pre_link.exit ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %if.end.i6.thread.sw.epilog_crit_edge ], [ 0, %if.end.i6.sw.epilog_crit_edge ], [ 0, %if.end.thread.i.sw.epilog_crit_edge ], [ 0, %do.body17.i.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mtk_pwr_change_notify(ptr noundef %hba, i32 noundef %stage, ptr noundef %dev_max_params, ptr noundef %dev_req_params) #0 align 64 {
entry:
  %host_cap.i = alloca %struct.ufs_dev_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stage to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %stage, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %ufshcd_get_variant.exit.i, !prof !226

do.body4.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

ufshcd_get_variant.exit.i:                        ; preds = %sw.bb
  %priv.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %host_cap.i) #10
  %3 = call ptr @memset(ptr %host_cap.i, i32 255, i32 48)
  call void @ufshcd_init_pwr_dev_param(ptr noundef nonnull %host_cap.i) #10
  %hs_rx_gear.i = getelementptr inbounds %struct.ufs_dev_params, ptr %host_cap.i, i32 0, i32 2
  %4 = ptrtoint ptr %hs_rx_gear.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %hs_rx_gear.i, align 4
  %hs_tx_gear.i = getelementptr inbounds %struct.ufs_dev_params, ptr %host_cap.i, i32 0, i32 3
  %5 = ptrtoint ptr %hs_tx_gear.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %hs_tx_gear.i, align 4
  %call1.i = call i32 @ufshcd_get_pwr_dev_param(ptr noundef nonnull %host_cap.i, ptr noundef %dev_max_params, ptr noundef %dev_req_params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %ufshcd_get_variant.exit.i.if.end.i_crit_edge, label %do.end.i

ufshcd_get_variant.exit.i.if.end.i_crit_edge:     ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %ufshcd_get_variant.exit.i.if.end.i_crit_edge
  %major.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %2, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %major.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %major.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i = icmp ugt i8 %7, 2
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.ufs_mtk_pre_pwr_change.exit_crit_edge

if.end.i.ufs_mtk_pre_pwr_change.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_pre_pwr_change.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %gear_tx.i = getelementptr inbounds %struct.ufs_pa_layer_attr, ptr %dev_req_params, i32 0, i32 1
  %8 = ptrtoint ptr %gear_tx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gear_tx.i, align 4
  %call5.i = call i32 @ufshcd_dme_configure_adapt(ptr noundef nonnull %hba, i32 noundef %9, i32 noundef 1) #10
  br label %ufs_mtk_pre_pwr_change.exit

ufs_mtk_pre_pwr_change.exit:                      ; preds = %if.then4.i, %if.end.i.ufs_mtk_pre_pwr_change.exit_crit_edge
  %ret.0.i = phi i32 [ %call5.i, %if.then4.i ], [ %call1.i, %if.end.i.ufs_mtk_pre_pwr_change.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %host_cap.i) #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %ufs_mtk_pre_pwr_change.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %sw.default ], [ 0, %entry.sw.epilog_crit_edge ], [ %ret.0.i, %ufs_mtk_pre_pwr_change.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mtk_apply_dev_quirks(ptr noundef %hba) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wmanufacturerid = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 66, i32 3
  %0 = ptrtoint ptr %wmanufacturerid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wmanufacturerid, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %1, label %if.else16 [
    i16 462, label %if.then
    i16 429, label %if.then10
    i16 408, label %if.then15
  ]

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef %hba, i32 noundef 363331584, i8 noundef zeroext 0, i32 noundef 6, i8 noundef zeroext 0) #10
  %tobool.not.i.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %if.then.if.end19_crit_edge, !prof !226

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body4.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

if.then10:                                        ; preds = %entry
  %tobool.not.i.i28 = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i28, label %do.body4.i.i29, label %if.then10.if.end19_crit_edge, !prof !226

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body4.i.i29:                                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

if.then15:                                        ; preds = %entry
  %tobool.not.i.i37 = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i37, label %do.body4.i.i38, label %if.then15.if.end19_crit_edge, !prof !226

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body4.i.i38:                                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

if.else16:                                        ; preds = %entry
  %tobool.not.i.i46 = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i46, label %do.body4.i.i47, label %if.else16.if.end19_crit_edge, !prof !226

if.else16.if.end19_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body4.i.i47:                                   ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

if.end19:                                         ; preds = %if.else16.if.end19_crit_edge, %if.then15.if.end19_crit_edge, %if.then10.if.end19_crit_edge, %if.then.if.end19_crit_edge
  %.sink57 = phi i16 [ 1, %if.then.if.end19_crit_edge ], [ 30, %if.then10.if.end19_crit_edge ], [ 100, %if.then15.if.end19_crit_edge ], [ 32, %if.else16.if.end19_crit_edge ]
  %priv.i.i30 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %3 = ptrtoint ptr %priv.i.i30 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i.i30, align 8
  %clk_gating_wait_us.i31 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 66, i32 6
  %5 = ptrtoint ptr %clk_gating_wait_us.i31 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clk_gating_wait_us.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i32 = icmp eq i32 %6, 0
  %conv.i33 = trunc i32 %6 to i16
  %spec.select.i34 = select i1 %tobool.not.i32, i16 %.sink57, i16 %conv.i33
  %7 = getelementptr inbounds %struct.ufs_mtk_host, ptr %4, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %spec.select.i34, ptr %7, align 2
  %ref_clk_ungating_wait_us.i35 = getelementptr inbounds %struct.ufs_mtk_host, ptr %4, i32 0, i32 12
  %9 = ptrtoint ptr %ref_clk_ungating_wait_us.i35 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 32, ptr %ref_clk_ungating_wait_us.i35, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufs_mtk_fixup_dev_quirks(ptr noundef %hba) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ufshcd_fixup_dev_quirks(ptr noundef %hba, ptr noundef nonnull @ufs_mtk_dev_fixups) #10
  %tobool.not.i.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %ufs_mtk_is_broken_vcc.exit, !prof !226

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

ufs_mtk_is_broken_vcc.exit:                       ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %caps.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %ufs_mtk_is_broken_vcc.exit.if.end_crit_edge, label %land.lhs.true

ufs_mtk_is_broken_vcc.exit.if.end_crit_edge:      ; preds = %ufs_mtk_is_broken_vcc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %ufs_mtk_is_broken_vcc.exit
  %vreg_info = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 68
  %4 = ptrtoint ptr %vreg_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vreg_info, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %dev_quirks = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 35
  %6 = ptrtoint ptr %dev_quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_quirks, align 4
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true1.if.end_crit_edge, label %if.then

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #12
  %always_on = getelementptr inbounds %struct.ufs_vreg, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %always_on to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %always_on, align 4
  %9 = ptrtoint ptr %dev_quirks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_quirks, align 4
  %and6 = and i32 %10, -2113
  store i32 %and6, ptr %dev_quirks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %ufs_mtk_is_broken_vcc.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mtk_suspend(ptr noundef %hba, i32 noundef %pm_op, i32 noundef %status) #0 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %capabilities.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 23
  %1 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %capabilities.i, align 4
  %and.i = and i32 %2, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %ufshcd_is_auto_hibern8_supported.exit

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ufshcd_is_auto_hibern8_supported.exit:            ; preds = %if.then
  %quirks.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 34
  %3 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %quirks.i, align 8
  %and1.i = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %ufshcd_is_auto_hibern8_supported.exit.cleanup_crit_edge

ufshcd_is_auto_hibern8_supported.exit.cleanup_crit_edge: ; preds = %ufshcd_is_auto_hibern8_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ufshcd_is_auto_hibern8_supported.exit
  %host.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 7
  %5 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host.i, align 4
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_lock.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hba, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !235
  %11 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host.i, align 4
  %host_lock9.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %host_lock9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host_lock9.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %call2.i) #10
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %add.i.i = add i64 %call.i.i, 5000000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end
  %wait_idle.0.off0.i.i = phi i1 [ false, %if.end ], [ %wait_idle.1.off0.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %call1.i.i = tail call i64 @ktime_get_mono_fast_ns() #10
  tail call fastcc void @ufs_mtk_dbg_sel(ptr noundef %hba) #10
  %16 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hba, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 8904
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !229
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  %and.i.i = and i32 %19, 31
  %20 = add nsw i32 %and.i.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %21 = icmp ult i32 %20, 6
  br i1 %21, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 10737400) #10
  br label %do.cond.i.i

if.else.i.i:                                      ; preds = %do.body.i.i
  %wait_idle.0.off0.not.i.i = xor i1 %wait_idle.0.off0.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp12.i.i = icmp eq i32 %and.i.i, 1
  %or.cond5.i.i = select i1 %wait_idle.0.off0.not.i.i, i1 true, i1 %cmp12.i.i
  br i1 %or.cond5.i.i, label %if.else.i.i.do.end.i.i_crit_edge, label %if.else.i.i.do.cond.i.i_crit_edge

if.else.i.i.do.cond.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond.i.i

if.else.i.i.do.end.i.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.cond.i.i:                                      ; preds = %if.else.i.i.do.cond.i.i_crit_edge, %if.then.i.i
  %wait_idle.1.off0.i.i = phi i1 [ true, %if.then.i.i ], [ %wait_idle.0.off0.i.i, %if.else.i.i.do.cond.i.i_crit_edge ]
  %cmp16.i.i = icmp ult i64 %call1.i.i, %add.i.i
  br i1 %cmp16.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.cond.i.i.do.end.i.i_crit_edge

do.cond.i.i.do.end.i.i_crit_edge:                 ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.cond.i.i.do.end.i.i_crit_edge, %if.else.i.i.do.end.i.i_crit_edge
  %wait_idle.2.off0.i.i = phi i1 [ %wait_idle.1.off0.i.i, %do.cond.i.i.do.end.i.i_crit_edge ], [ %wait_idle.0.off0.i.i, %if.else.i.i.do.end.i.i_crit_edge ]
  %wait_idle.2.off0.not.i.i = xor i1 %wait_idle.2.off0.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp21.not.i.i = icmp eq i32 %and.i.i, 1
  %or.cond6.i.i = select i1 %wait_idle.2.off0.not.i.i, i1 true, i1 %cmp21.not.i.i
  br i1 %or.cond6.i.i, label %do.end.i.i.ufs_mtk_wait_idle_state.exit.i_crit_edge, label %do.end26.i.i

do.end.i.i.ufs_mtk_wait_idle_state.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_wait_idle_state.exit.i

do.end26.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.85, i32 noundef %19) #13
  br label %ufs_mtk_wait_idle_state.exit.i

ufs_mtk_wait_idle_state.exit.i:                   ; preds = %do.end26.i.i, %do.end.i.i.ufs_mtk_wait_idle_state.exit.i_crit_edge
  %call.i20.i = tail call i64 @ktime_get() #10
  %add.i.i.i = add i64 %call.i20.i, 100000000
  br label %do.body.i22.i

do.body.i22.i:                                    ; preds = %if.end.i.i.do.body.i22.i_crit_edge, %ufs_mtk_wait_idle_state.exit.i
  %call2.i.i = tail call i64 @ktime_get() #10
  tail call fastcc void @ufs_mtk_dbg_sel(ptr noundef %hba) #10
  %25 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hba, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %26, i32 8904
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #10, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %28 = and i32 %27, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %28)
  %cmp.i.i = icmp eq i32 %28, 32
  br i1 %cmp.i.i, label %do.body.i22.i.cleanup_crit_edge, label %if.end.i.i

do.body.i22.i.cleanup_crit_edge:                  ; preds = %do.body.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %do.body.i22.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #10
  %cmp.i.i.i.i = icmp slt i64 %call2.i.i, %add.i.i.i
  br i1 %cmp.i.i.i.i, label %if.end.i.i.do.body.i22.i_crit_edge, label %do.end13.i

if.end.i.i.do.body.i22.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i22.i

do.end13.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.82, i32 noundef -110) #13
  br label %cleanup

if.end2:                                          ; preds = %entry
  %uic_link_state = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 12
  %31 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uic_link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp3 = icmp eq i32 %32, 2
  br i1 %cmp3, label %if.then4, label %if.end2.if.end8_crit_edge

if.end2.if.end8_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.end2
  %tobool.not.i.i.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ufshcd_get_variant.exit.i.i, !prof !226

do.body4.i.i.i:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

ufshcd_get_variant.exit.i.i:                      ; preds = %if.then4
  %priv.i.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %33 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i.i.i, align 8
  %call.i.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -794296320, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.not.i, label %ufs_mtk_link_set_lpm.exit.thread, label %ufs_mtk_link_set_lpm.exit

ufs_mtk_link_set_lpm.exit.thread:                 ; preds = %ufshcd_get_variant.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %unipro_lpm.i.i36 = getelementptr inbounds %struct.ufs_mtk_host, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %unipro_lpm.i.i36 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %unipro_lpm.i.i36, align 1
  %36 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %uic_link_state, align 8
  br label %if.end8

ufs_mtk_link_set_lpm.exit:                        ; preds = %ufshcd_get_variant.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv.i.i.i, align 8
  %call.i.i7.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -794296320, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #10
  %unipro_lpm.i.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %unipro_lpm.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %unipro_lpm.i.i, align 1
  br label %fail

if.end8:                                          ; preds = %ufs_mtk_link_set_lpm.exit.thread, %if.end2.if.end8_crit_edge
  %40 = phi i32 [ %.pr, %ufs_mtk_link_set_lpm.exit.thread ], [ %32, %if.end2.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp10 = icmp eq i32 %40, 1
  br i1 %cmp10, label %if.end8.if.end16_crit_edge, label %if.then11

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then11:                                        ; preds = %if.end8
  %vccq2.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 68, i32 2
  %41 = ptrtoint ptr %vccq2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vccq2.i, align 4
  %tobool.not.i32 = icmp eq ptr %42, null
  br i1 %tobool.not.i32, label %if.then11.ufs_mtk_vreg_set_lpm.exit_crit_edge, label %lor.lhs.false.i

if.then11.ufs_mtk_vreg_set_lpm.exit_crit_edge:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_vreg_set_lpm.exit

lor.lhs.false.i:                                  ; preds = %if.then11
  %vreg_info.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 68
  %43 = ptrtoint ptr %vreg_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vreg_info.i, align 4
  %tobool2.not.i33 = icmp eq ptr %44, null
  br i1 %tobool2.not.i33, label %lor.lhs.false.i.ufs_mtk_vreg_set_lpm.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ufs_mtk_vreg_set_lpm.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_vreg_set_lpm.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %enabled.i = getelementptr inbounds %struct.ufs_vreg, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %enabled.i, align 1, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool6.not.i = icmp eq i8 %46, 0
  br i1 %tobool6.not.i, label %if.end17.sink.split.i, label %if.end.i.ufs_mtk_vreg_set_lpm.exit_crit_edge

if.end.i.ufs_mtk_vreg_set_lpm.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_vreg_set_lpm.exit

if.end17.sink.split.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %42, align 4
  %call15.i = tail call i32 @regulator_set_mode(ptr noundef %48, i32 noundef 4) #10
  br label %ufs_mtk_vreg_set_lpm.exit

ufs_mtk_vreg_set_lpm.exit:                        ; preds = %if.end17.sink.split.i, %if.end.i.ufs_mtk_vreg_set_lpm.exit_crit_edge, %lor.lhs.false.i.ufs_mtk_vreg_set_lpm.exit_crit_edge, %if.then11.ufs_mtk_vreg_set_lpm.exit_crit_edge
  %call12 = tail call fastcc i32 @ufs_mtk_mphy_power_on(ptr noundef %hba, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %ufs_mtk_vreg_set_lpm.exit.if.end16_crit_edge, label %ufs_mtk_vreg_set_lpm.exit.fail_crit_edge

ufs_mtk_vreg_set_lpm.exit.fail_crit_edge:         ; preds = %ufs_mtk_vreg_set_lpm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

ufs_mtk_vreg_set_lpm.exit.if.end16_crit_edge:     ; preds = %ufs_mtk_vreg_set_lpm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end16:                                         ; preds = %ufs_mtk_vreg_set_lpm.exit.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %49 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %uic_link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp18 = icmp eq i32 %50, 0
  br i1 %cmp18, label %if.then19, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void @__arm_smccc_smc(i32 noundef -2113928586, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #10
  br label %cleanup

fail:                                             ; preds = %ufs_mtk_vreg_set_lpm.exit.fail_crit_edge, %ufs_mtk_link_set_lpm.exit
  %51 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %uic_link_state, align 8
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then19, %if.end16.cleanup_crit_edge, %do.end13.i, %do.body.i22.i.cleanup_crit_edge, %ufshcd_is_auto_hibern8_supported.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %fail ], [ 0, %ufshcd_is_auto_hibern8_supported.exit.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %do.end13.i ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %do.body.i22.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mtk_resume(ptr noundef %hba, i32 noundef %pm_op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ufs_mtk_mphy_power_on(ptr noundef %hba, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end:                                           ; preds = %entry
  %vccq2.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 68, i32 2
  %0 = ptrtoint ptr %vccq2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vccq2.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.ufs_mtk_vreg_set_lpm.exit_crit_edge, label %lor.lhs.false.i

if.end.ufs_mtk_vreg_set_lpm.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_vreg_set_lpm.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %vreg_info.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 68
  %2 = ptrtoint ptr %vreg_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vreg_info.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.ufs_mtk_vreg_set_lpm.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ufs_mtk_vreg_set_lpm.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_vreg_set_lpm.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call15.i = tail call i32 @regulator_set_mode(ptr noundef %5, i32 noundef 2) #10
  br label %ufs_mtk_vreg_set_lpm.exit

ufs_mtk_vreg_set_lpm.exit:                        ; preds = %if.end.i, %lor.lhs.false.i.ufs_mtk_vreg_set_lpm.exit_crit_edge, %if.end.ufs_mtk_vreg_set_lpm.exit_crit_edge
  %uic_link_state = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 12
  %6 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uic_link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then1, label %ufs_mtk_vreg_set_lpm.exit.cleanup_crit_edge

ufs_mtk_vreg_set_lpm.exit.cleanup_crit_edge:      ; preds = %ufs_mtk_vreg_set_lpm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %ufs_mtk_vreg_set_lpm.exit
  %call.i = tail call i32 @ufshcd_hba_enable(ptr noundef %hba) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i13 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i13, label %if.end.i14, label %if.then1.fail_crit_edge

if.then1.fail_crit_edge:                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end.i14:                                       ; preds = %if.then1
  %tobool.not.i.i.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ufs_mtk_unipro_set_lpm.exit.i, !prof !226

do.body4.i.i.i:                                   ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

ufs_mtk_unipro_set_lpm.exit.i:                    ; preds = %if.end.i14
  %priv.i.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %8 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i.i.i, align 8
  %call.i.i.i = tail call i32 @ufshcd_dme_set_attr(ptr noundef nonnull %hba, i32 noundef -794296320, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0) #10
  %unipro_lpm.i.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %unipro_lpm.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %unipro_lpm.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i15 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i15, label %if.end4.i, label %ufs_mtk_unipro_set_lpm.exit.i.fail_crit_edge

ufs_mtk_unipro_set_lpm.exit.i.fail_crit_edge:     ; preds = %ufs_mtk_unipro_set_lpm.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end4.i:                                        ; preds = %ufs_mtk_unipro_set_lpm.exit.i
  %call5.i = tail call i32 @ufshcd_uic_hibern8_exit(ptr noundef nonnull %hba) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %ufs_mtk_link_set_hpm.exit, label %if.end4.i.fail_crit_edge

if.end4.i.fail_crit_edge:                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

ufs_mtk_link_set_hpm.exit:                        ; preds = %if.end4.i
  %11 = ptrtoint ptr %uic_link_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %uic_link_state, align 8
  %call9.i = tail call i32 @ufshcd_make_hba_operational(ptr noundef nonnull %hba) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool3.not = icmp eq i32 %call9.i, 0
  br i1 %tobool3.not, label %ufs_mtk_link_set_hpm.exit.cleanup_crit_edge, label %ufs_mtk_link_set_hpm.exit.fail_crit_edge

ufs_mtk_link_set_hpm.exit.fail_crit_edge:         ; preds = %ufs_mtk_link_set_hpm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

ufs_mtk_link_set_hpm.exit.cleanup_crit_edge:      ; preds = %ufs_mtk_link_set_hpm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fail:                                             ; preds = %ufs_mtk_link_set_hpm.exit.fail_crit_edge, %if.end4.i.fail_crit_edge, %ufs_mtk_unipro_set_lpm.exit.i.fail_crit_edge, %if.then1.fail_crit_edge, %entry.fail_crit_edge
  %call7 = tail call i32 @ufshcd_link_recovery(ptr noundef %hba) #10
  br label %cleanup

cleanup:                                          ; preds = %fail, %ufs_mtk_link_set_hpm.exit.cleanup_crit_edge, %ufs_mtk_vreg_set_lpm.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %fail ], [ 0, %ufs_mtk_link_set_hpm.exit.cleanup_crit_edge ], [ 0, %ufs_mtk_vreg_set_lpm.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufs_mtk_dbg_register_dump(ptr noundef %hba) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ufshcd_dump_regs(ptr noundef %hba, i32 noundef 324, i32 noundef 4, ptr noundef nonnull @.str.87) #10
  %call1 = tail call i32 @ufshcd_dump_regs(ptr noundef %hba, i32 noundef 8448, i32 noundef 4, ptr noundef nonnull @.str.88) #10
  %call2 = tail call i32 @ufshcd_dump_regs(ptr noundef %hba, i32 noundef 8704, i32 noundef 176, ptr noundef nonnull @.str.89) #10
  tail call fastcc void @ufs_mtk_dbg_sel(ptr noundef %hba)
  %call3 = tail call i32 @ufshcd_dump_regs(ptr noundef %hba, i32 noundef 8904, i32 noundef 4, ptr noundef nonnull @.str.90) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mtk_device_reset(ptr noundef %hba) #0 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #10
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  tail call void @ufshcd_hba_stop(ptr noundef %hba) #10
  call void @__arm_smccc_smc(i32 noundef -2113928586, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #10
  call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #10
  call void @__arm_smccc_smc(i32 noundef -2113928586, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #10
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #10
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.91) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufs_mtk_event_notify(ptr nocapture noundef readnone %hba, i32 noundef %evt, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  tail call fastcc void @trace_ufs_mtk_event(i32 noundef %evt, i32 noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufs_mtk_mphy_power_on(ptr noundef readonly %hba, i1 noundef zeroext %on) unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !226

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #10
  %tobool.not = icmp eq ptr %3, null
  %4 = call ptr @memset(ptr %res, i32 255, i32 16)
  br i1 %tobool.not, label %ufshcd_get_variant.exit.cleanup_crit_edge, label %lor.lhs.false

ufshcd_get_variant.exit.cleanup_crit_edge:        ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %ufshcd_get_variant.exit
  %mphy_powered_on = getelementptr inbounds %struct.ufs_mtk_host, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %mphy_powered_on to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mphy_powered_on, align 4, !range !233
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %frombool)
  %tobool5.not = icmp eq i8 %6, %frombool
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br i1 %on, label %ufs_mtk_is_va09_supported.exit, label %ufs_mtk_is_va09_supported.exit60

ufs_mtk_is_va09_supported.exit:                   ; preds = %if.end
  %caps.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %ufs_mtk_is_va09_supported.exit.if.end14_crit_edge, label %if.then9

ufs_mtk_is_va09_supported.exit.if.end14_crit_edge: ; preds = %ufs_mtk_is_va09_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9:                                         ; preds = %ufs_mtk_is_va09_supported.exit
  %reg_va09 = getelementptr inbounds %struct.ufs_mtk_host, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %reg_va09 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_va09, align 4
  %call10 = tail call i32 @regulator_enable(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then9.do.end_crit_edge, label %if.end13

if.then9.do.end_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 210, i32 noundef 2) #10
  call void @__arm_smccc_smc(i32 noundef -2113928586, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %ufs_mtk_is_va09_supported.exit.if.end14_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end13 ], [ 0, %ufs_mtk_is_va09_supported.exit.if.end14_crit_edge ]
  %call15 = call i32 @phy_power_on(ptr noundef nonnull %3) #10
  br label %out

ufs_mtk_is_va09_supported.exit60:                 ; preds = %if.end
  %call16 = tail call i32 @phy_power_off(ptr noundef nonnull %3) #10
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 8
  %caps.i57 = getelementptr inbounds %struct.ufs_mtk_host, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %caps.i57 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %caps.i57, align 4
  %and.i58 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.i59.not = icmp eq i32 %and.i58, 0
  br i1 %tobool.i59.not, label %ufs_mtk_is_va09_supported.exit60.if.else31_crit_edge, label %if.then18

ufs_mtk_is_va09_supported.exit60.if.else31_crit_edge: ; preds = %ufs_mtk_is_va09_supported.exit60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else31

if.then18:                                        ; preds = %ufs_mtk_is_va09_supported.exit60
  call void @__sanitizer_cov_trace_pc() #12
  call void @__arm_smccc_smc(i32 noundef -2113928586, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #10
  %reg_va0919 = getelementptr inbounds %struct.ufs_mtk_host, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %reg_va0919 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_va0919, align 4
  %call20 = call i32 @regulator_disable(ptr noundef %16) #10
  br label %out

out:                                              ; preds = %if.then18, %if.end14
  %ret.1 = phi i32 [ %ret.0, %if.end14 ], [ %call20, %if.then18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool27.not = icmp eq i32 %ret.1, 0
  br i1 %tobool27.not, label %out.if.else31_crit_edge, label %out.do.end_crit_edge

out.do.end_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

out.if.else31_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else31

do.end:                                           ; preds = %out.do.end_crit_edge, %if.then9.do.end_crit_edge
  %ret.167 = phi i32 [ %ret.1, %out.do.end_crit_edge ], [ %call10, %if.then9.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %cond = select i1 %on, ptr @.str.57, ptr @.str.58
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond, i32 noundef %ret.167) #13
  br label %cleanup

if.else31:                                        ; preds = %out.if.else31_crit_edge, %ufs_mtk_is_va09_supported.exit60.if.else31_crit_edge
  %19 = ptrtoint ptr %mphy_powered_on to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %mphy_powered_on, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else31, %do.end, %lor.lhs.false.cleanup_crit_edge, %ufshcd_get_variant.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %ufshcd_get_variant.exit.cleanup_crit_edge ], [ 0, %if.else31 ], [ %ret.167, %do.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get_by_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_mtk_scale_perf(ptr noundef readonly %hba, i1 noundef zeroext %up) unnamed_addr #0 align 64 {
entry:
  %res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufs_mtk_is_boost_crypt_enabled.exit.i, !prof !226

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

ufs_mtk_is_boost_crypt_enabled.exit.i:            ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %caps.i.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %ufs_mtk_is_boost_crypt_enabled.exit.i.ufshcd_get_variant.exit.i_crit_edge, label %if.end.i

ufs_mtk_is_boost_crypt_enabled.exit.i.ufshcd_get_variant.exit.i_crit_edge: ; preds = %ufs_mtk_is_boost_crypt_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufshcd_get_variant.exit.i

if.end.i:                                         ; preds = %ufs_mtk_is_boost_crypt_enabled.exit.i
  %crypt.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %crypt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crypt.i, align 4
  %vcore_volt.i = getelementptr inbounds %struct.ufs_mtk_crypt_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %vcore_volt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vcore_volt.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %clk_crypt_mux.i = getelementptr inbounds %struct.ufs_mtk_crypt_cfg, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %clk_crypt_mux.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_crypt_mux.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i69.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i69.i, label %if.end.i.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %11) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.end.i.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.59, i32 noundef %retval.0.i.ph.i) #13
  br label %ufshcd_get_variant.exit.i

if.end4.i:                                        ; preds = %if.end.i.i
  br i1 %up, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end4.i
  %call7.i = tail call i32 @regulator_set_voltage(ptr noundef %9, i32 noundef %7, i32 noundef 2147483647) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end14.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev13.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %14 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev13.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.62, i32 noundef %7) #13
  br label %out.i

if.end14.i:                                       ; preds = %if.then6.i
  %16 = ptrtoint ptr %clk_crypt_mux.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_crypt_mux.i, align 4
  %clk_crypt_perf.i = getelementptr inbounds %struct.ufs_mtk_crypt_cfg, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %clk_crypt_perf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_crypt_perf.i, align 4
  %call16.i = tail call i32 @clk_set_parent(ptr noundef %17, ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.out.i_crit_edge, label %do.end21.i

if.end14.i.out.i_crit_edge:                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

do.end21.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev22.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %20 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev22.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.65) #13
  %call23.i = tail call i32 @regulator_set_voltage(ptr noundef %9, i32 noundef 0, i32 noundef 2147483647) #10
  br label %out.i

if.else.i:                                        ; preds = %if.end4.i
  %22 = ptrtoint ptr %clk_crypt_mux.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_crypt_mux.i, align 4
  %clk_crypt_lp.i = getelementptr inbounds %struct.ufs_mtk_crypt_cfg, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %clk_crypt_lp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_crypt_lp.i, align 4
  %call26.i = tail call i32 @clk_set_parent(ptr noundef %23, ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end33.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev32.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %26 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev32.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.68) #13
  br label %out.i

if.end33.i:                                       ; preds = %if.else.i
  %call34.i = tail call i32 @regulator_set_voltage(ptr noundef %9, i32 noundef 0, i32 noundef 2147483647) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.out.i_crit_edge, label %do.end39.i

if.end33.i.out.i_crit_edge:                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

do.end39.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev40.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %28 = ptrtoint ptr %dev40.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev40.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.71) #13
  br label %out.i

out.i:                                            ; preds = %do.end39.i, %if.end33.i.out.i_crit_edge, %do.end31.i, %do.end21.i, %if.end14.i.out.i_crit_edge, %do.end12.i
  %30 = ptrtoint ptr %clk_crypt_mux.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_crypt_mux.i, align 4
  tail call void @clk_disable(ptr noundef %31) #10
  tail call void @clk_unprepare(ptr noundef %31) #10
  br label %ufshcd_get_variant.exit.i

ufshcd_get_variant.exit.i:                        ; preds = %out.i, %do.end.i, %ufs_mtk_is_boost_crypt_enabled.exit.i.ufshcd_get_variant.exit.i_crit_edge
  %frombool.i = zext i1 %up to i8
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i) #10
  %ref_clk_enabled.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %33, i32 0, i32 11
  %34 = call ptr @memset(ptr %res.i, i32 255, i32 16)
  %35 = ptrtoint ptr %ref_clk_enabled.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ref_clk_enabled.i, align 2, !range !233
  %conv2.i = zext i1 %up to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %frombool.i)
  %cmp.i = icmp eq i8 %36, %frombool.i
  br i1 %cmp.i, label %ufshcd_get_variant.exit.i.ufs_mtk_setup_ref_clk.exit_crit_edge, label %if.end.i15

ufshcd_get_variant.exit.i.ufs_mtk_setup_ref_clk.exit_crit_edge: ; preds = %ufshcd_get_variant.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufs_mtk_setup_ref_clk.exit

if.end.i15:                                       ; preds = %ufshcd_get_variant.exit.i
  br i1 %up, label %if.then5.i, label %if.else.i16

if.then5.i:                                       ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #12
  call void @__arm_smccc_smc(i32 noundef -2113928586, i32 noundef 8, i32 noundef %conv2.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i, ptr noundef null) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hba, align 8
  %add.ptr.i = getelementptr i8, ptr %38, i32 324
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #10, !srcloc !235
  br label %if.end14.i17

if.else.i16:                                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #12
  %ref_clk_gating_wait_us.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %33, i32 0, i32 13
  %39 = ptrtoint ptr %ref_clk_gating_wait_us.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ref_clk_gating_wait_us.i, align 2
  %conv8.i = zext i16 %40 to i32
  tail call void @ufshcd_delay_us(i32 noundef %conv8.i, i32 noundef 10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hba, align 8
  %add.ptr13.i = getelementptr i8, ptr %42, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #10, !srcloc !235
  br label %if.end14.i17

if.end14.i17:                                     ; preds = %if.else.i16, %if.then5.i
  %call15.i = call i64 @ktime_get() #10
  %add.i.i = add i64 %call15.i, 3000000
  br label %do.body17.i

do.body17.i:                                      ; preds = %if.end27.i.do.body17.i_crit_edge, %if.end14.i17
  %call18.i = call i64 @ktime_get() #10
  %43 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hba, align 8
  %add.ptr20.i = getelementptr i8, ptr %44, i32 324
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #10, !srcloc !229
  %46 = call i32 @llvm.bswap.i32(i32 %45) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  %and.i = lshr i32 %46, 1
  %47 = xor i32 %and.i, %46
  %48 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp24.i = icmp eq i32 %48, 0
  br i1 %cmp24.i, label %out.i19, label %if.end27.i

if.end27.i:                                       ; preds = %do.body17.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #10
  %cmp.i.i.i = icmp slt i64 %call18.i, %add.i.i
  br i1 %cmp.i.i.i, label %if.end27.i.do.body17.i_crit_edge, label %do.end33.i

if.end27.i.do.body17.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17.i

do.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i18 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %49 = ptrtoint ptr %dev.i18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i18, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.73, i32 noundef %46) #13
  %51 = ptrtoint ptr %ref_clk_enabled.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ref_clk_enabled.i, align 2, !range !233
  %53 = zext i8 %52 to i32
  call void @__arm_smccc_smc(i32 noundef -2113928586, i32 noundef 8, i32 noundef %53, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i, ptr noundef null) #10
  br label %ufs_mtk_setup_ref_clk.exit

out.i19:                                          ; preds = %do.body17.i
  %54 = ptrtoint ptr %ref_clk_enabled.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %frombool.i, ptr %ref_clk_enabled.i, align 2
  br i1 %up, label %ufs_mtk_setup_ref_clk.exit.thread, label %ufs_mtk_setup_ref_clk.exit.thread20

ufs_mtk_setup_ref_clk.exit.thread:                ; preds = %out.i19
  call void @__sanitizer_cov_trace_pc() #12
  %ref_clk_ungating_wait_us.i = getelementptr inbounds %struct.ufs_mtk_host, ptr %33, i32 0, i32 12
  %55 = ptrtoint ptr %ref_clk_ungating_wait_us.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %ref_clk_ungating_wait_us.i, align 4
  %conv42.i = zext i16 %56 to i32
  call void @ufshcd_delay_us(i32 noundef %conv42.i, i32 noundef 10) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #10
  br label %if.then

ufs_mtk_setup_ref_clk.exit.thread20:              ; preds = %out.i19
  call void @__sanitizer_cov_trace_pc() #12
  call void @__arm_smccc_smc(i32 noundef -2113928586, i32 noundef 8, i32 noundef %conv2.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #10
  br label %if.else

ufs_mtk_setup_ref_clk.exit:                       ; preds = %do.end33.i, %ufshcd_get_variant.exit.i.ufs_mtk_setup_ref_clk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #10
  br i1 %up, label %ufs_mtk_setup_ref_clk.exit.if.then_crit_edge, label %ufs_mtk_setup_ref_clk.exit.if.else_crit_edge

ufs_mtk_setup_ref_clk.exit.if.else_crit_edge:     ; preds = %ufs_mtk_setup_ref_clk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

ufs_mtk_setup_ref_clk.exit.if.then_crit_edge:     ; preds = %ufs_mtk_setup_ref_clk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %ufs_mtk_setup_ref_clk.exit.if.then_crit_edge, %ufs_mtk_setup_ref_clk.exit.thread
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call4 = call i32 @phy_power_on(ptr noundef %58) #10
  br label %if.end

if.else:                                          ; preds = %ufs_mtk_setup_ref_clk.exit.if.else_crit_edge, %ufs_mtk_setup_ref_clk.exit.thread20
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %call6 = call i32 @phy_power_off(ptr noundef %60) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_mtk_dbg_sel(ptr noundef readonly %hba) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hba, null
  br i1 %tobool.not.i, label %do.body4.i, label %ufshcd_get_variant.exit, !prof !226

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/ufs/ufshcd.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #10, !srcloc !231
  unreachable

ufshcd_get_variant.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 30
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ip_ver = getelementptr inbounds %struct.ufs_mtk_host, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %ip_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ip_ver, align 4
  %4 = and i32 %3, 16646144
  call void @__sanitizer_cov_trace_const_cmp4(i32 3473408, i32 %4)
  %cmp = icmp ugt i32 %4, 3473408
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hba, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 8896
  br i1 %cmp, label %do.body, label %do.body21

do.body:                                          ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 537428480) #10, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hba, align 8
  %add.ptr5 = getelementptr i8, ptr %8, i32 8912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #10, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hba, align 8
  %add.ptr10 = getelementptr i8, ptr %10, i32 8916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 1431655765) #10, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hba, align 8
  %add.ptr15 = getelementptr i8, ptr %12, i32 8920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 -1431655766) #10, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hba, align 8
  %add.ptr20 = getelementptr i8, ptr %14, i32 8924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 -1) #10, !srcloc !235
  br label %if.end

do.body21:                                        ; preds = %ufshcd_get_variant.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 536870912) #10, !srcloc !235
  br label %if.end

if.end:                                           ; preds = %do.body21, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_delay_us(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_get_attr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_set_attr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_init_pwr_dev_param(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_get_pwr_dev_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dme_configure_adapt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_fixup_dev_quirks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_link_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_hba_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_uic_hibern8_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_make_hba_operational(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_dump_regs(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_hba_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ufs_mtk_event(i32 noundef %type, i32 noundef %data) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ufs_mtk_event, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_ufs_mtk_event, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !215) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !225

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.95, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !215) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !246
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ufs_mtk_event, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data7.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data7.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %type, i32 noundef %data) #10
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !247
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !247
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !215) #10
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !215) #10
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !225

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.95, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !215) #10
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !248
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ufs_mtk_event, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ufs_mtk_event.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ufs_mtk_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.93, i32 noundef 29, ptr noundef nonnull @.str.94) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !249
  %38 = tail call i32 @llvm.read_register.i32(metadata !215) #10
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_suspend_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_resume_complete(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_system_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_system_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_runtime_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_runtime_resume(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !23, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !61, !63, !64, !65, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !83, !84, !85, !86, !88, !90, !91, !92, !94, !96, !98, !100, !101, !102, !103, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !174, !176, !178, !180, !182, !183, !184, !185, !186, !188, !189, !190, !191, !193, !195, !197, !199, !201, !202, !203, !204, !205, !206, !207, !208, !210, !211, !213}
!llvm.named.register.sp = !{!215}
!llvm.module.flags = !{!216, !217, !218, !219, !220, !221, !222, !223}
!llvm.ident = !{!224}

!0 = !{ptr @__tracepoint_ufs_mtk_event, !1, !"__tracepoint_ufs_mtk_event", i1 false, i1 false}
!1 = !{!"../include/trace/../../drivers/scsi/ufs//ufs-mediatek-trace.h", i32 13, i32 1}
!2 = !{ptr @__tracepoint_ptr_ufs_mtk_event, !1, !"__tracepoint_ptr_ufs_mtk_event", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_ufs_mtk_event, !1, !"__SCK__tp_func_ufs_mtk_event", i1 false, i1 false}
!4 = !{ptr @event_class_ufs_mtk_event, !1, !"event_class_ufs_mtk_event", i1 false, i1 false}
!5 = !{ptr @event_ufs_mtk_event, !1, !"event_ufs_mtk_event", i1 false, i1 false}
!6 = !{ptr @__event_ufs_mtk_event, !1, !"__event_ufs_mtk_event", i1 false, i1 false}
!7 = !{ptr @__bpf_trace_tp_map_ufs_mtk_event, !1, !"__bpf_trace_tp_map_ufs_mtk_event", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author353, !9, !"__UNIQUE_ID_author353", i1 false, i1 false}
!9 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1248, i32 1}
!10 = !{ptr @__UNIQUE_ID_author354, !11, !"__UNIQUE_ID_author354", i1 false, i1 false}
!11 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1249, i32 1}
!12 = !{ptr @__UNIQUE_ID_description355, !13, !"__UNIQUE_ID_description355", i1 false, i1 false}
!13 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1250, i32 1}
!14 = !{ptr @__UNIQUE_ID_file356, !15, !"__UNIQUE_ID_file356", i1 false, i1 false}
!15 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1251, i32 1}
!16 = !{ptr @__UNIQUE_ID_license357, !15, !"__UNIQUE_ID_license357", i1 false, i1 false}
!17 = !{ptr @__initcall__kmod_ufs_mediatek__358_1253_ufs_mtk_pltform_init6, !18, !"__initcall__kmod_ufs_mediatek__358_1253_ufs_mtk_pltform_init6", i1 false, i1 false}
!18 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1253, i32 1}
!19 = !{ptr @__exitcall_ufs_mtk_pltform_exit, !18, !"__exitcall_ufs_mtk_pltform_exit", i1 false, i1 false}
!20 = !{ptr @__tpstrtab_ufs_mtk_event, !1, !"__tpstrtab_ufs_mtk_event", i1 false, i1 false}
!21 = !{ptr @str__ufs_mtk__trace_system_name, !22, !"str__ufs_mtk__trace_system_name", i1 false, i1 false}
!22 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!23 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @trace_event_fields_ufs_mtk_event, !1, !"trace_event_fields_ufs_mtk_event", i1 false, i1 false}
!27 = !{ptr @trace_event_type_funcs_ufs_mtk_event, !1, !"trace_event_type_funcs_ufs_mtk_event", i1 false, i1 false}
!28 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @print_fmt_ufs_mtk_event, !1, !"print_fmt_ufs_mtk_event", i1 false, i1 false}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1242, i32 13}
!32 = !{ptr @ufs_mtk_pltform, !33, !"ufs_mtk_pltform", i1 false, i1 false}
!33 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1237, i32 31}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1180, i32 11}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1182, i32 3}
!38 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ufs_mtk_probe._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @ufs_mtk_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1187, i32 3}
!46 = !{ptr @ufs_mtk_probe._entry.11, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ufs_mtk_probe._entry_ptr.13, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1194, i32 3}
!50 = !{ptr @ufs_mtk_probe._entry.14, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ufs_mtk_probe._entry_ptr.16, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1209, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ufs_mtk_probe._entry.17, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ufs_mtk_probe._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1149, i32 25}
!59 = !{ptr @ufs_hba_mtk_vops, !60, !"ufs_hba_mtk_vops", i1 false, i1 false}
!60 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1148, i32 41}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 699, i32 3}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ufs_mtk_init._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ufs_mtk_init._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 571, i32 32}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 574, i32 32}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 577, i32 32}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 580, i32 32}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 583, i32 2}
!76 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ufs_mtk_init_host_caps._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ufs_mtk_init_host_caps._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 521, i32 41}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 523, i32 3}
!83 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ufs_mtk_init_boost_crypt._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @ufs_mtk_init_boost_crypt._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 528, i32 41}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 530, i32 3}
!90 = !{ptr @ufs_mtk_init_boost_crypt._entry.34, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ufs_mtk_init_boost_crypt._entry_ptr.36, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 535, i32 33}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 539, i32 33}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 543, i32 33}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 501, i32 3}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ufs_mtk_init_host_clk._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @ufs_mtk_init_host_clk._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 559, i32 43}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 561, i32 3}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ufs_mtk_init_va09_pwr_ctrl._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @ufs_mtk_init_va09_pwr_ctrl._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 215, i32 3}
!112 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ufs_mtk_bind_mphy._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @ufs_mtk_bind_mphy._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 221, i32 4}
!117 = !{ptr @ufs_mtk_bind_mphy._entry.47, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ufs_mtk_bind_mphy._entry_ptr.49, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 161, i32 8}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 163, i32 8}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 165, i32 8}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 150, i32 3}
!127 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ufs_mtk_init_reset_control._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @ufs_mtk_init_reset_control._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 412, i32 3}
!132 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ufs_mtk_mphy_power_on._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @ufs_mtk_mphy_power_on._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 454, i32 3}
!139 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ufs_mtk_boost_crypt._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @ufs_mtk_boost_crypt._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 462, i32 4}
!144 = !{ptr @ufs_mtk_boost_crypt._entry.61, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ufs_mtk_boost_crypt._entry_ptr.63, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 470, i32 4}
!148 = !{ptr @ufs_mtk_boost_crypt._entry.64, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ufs_mtk_boost_crypt._entry_ptr.66, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 479, i32 4}
!152 = !{ptr @ufs_mtk_boost_crypt._entry.67, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @ufs_mtk_boost_crypt._entry_ptr.69, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 486, i32 4}
!156 = !{ptr @ufs_mtk_boost_crypt._entry.70, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @ufs_mtk_boost_crypt._entry_ptr.72, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 269, i32 2}
!160 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @ufs_mtk_setup_ref_clk._entry, !159, !"_entry", i1 false, i1 false}
!163 = !{ptr @ufs_mtk_setup_ref_clk._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 123, i32 3}
!166 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @ufs_mtk_crypto_enable._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @ufs_mtk_crypto_enable._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 774, i32 3}
!171 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @ufs_mtk_pre_pwr_change._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @ufs_mtk_pre_pwr_change._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 48, i32 2}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 50, i32 2}
!178 = !{ptr @ufs_mtk_dev_fixups, !179, !"ufs_mtk_dev_fixups", i1 false, i1 false}
!179 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 47, i32 27}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1008, i32 3}
!182 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @ufs_mtk_auto_hibern8_disable._entry, !181, !"_entry", i1 false, i1 false}
!185 = !{ptr @ufs_mtk_auto_hibern8_disable._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 352, i32 3}
!188 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @ufs_mtk_wait_idle_state._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @ufs_mtk_wait_idle_state._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1079, i32 50}
!193 = !{ptr @.str.88, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1081, i32 45}
!195 = !{ptr @.str.89, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1085, i32 5}
!197 = !{ptr @.str.90, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1089, i32 44}
!199 = !{ptr @.str.91, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 936, i32 2}
!201 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @ufs_mtk_device_reset._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @ufs_mtk_device_reset._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!205 = !{ptr @.str.93, !1, !"<string literal>", i1 false, i1 false}
!206 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!207 = !{ptr @.str.94, !1, !"<string literal>", i1 false, i1 false}
!208 = distinct !{null, !209, !"__already_done", i1 false, i1 false}
!209 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!210 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @ufs_mtk_of_match, !212, !"ufs_mtk_of_match", i1 false, i1 false}
!212 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 55, i32 34}
!213 = !{ptr @ufs_mtk_pm_ops, !214, !"ufs_mtk_pm_ops", i1 false, i1 false}
!214 = !{!"../drivers/scsi/ufs/ufs-mediatek.c", i32 1230, i32 32}
!215 = !{!"sp"}
!216 = !{i32 1, !"wchar_size", i32 2}
!217 = !{i32 1, !"min_enum_size", i32 4}
!218 = !{i32 8, !"branch-target-enforcement", i32 0}
!219 = !{i32 8, !"sign-return-address", i32 0}
!220 = !{i32 8, !"sign-return-address-all", i32 0}
!221 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!222 = !{i32 7, !"uwtable", i32 1}
!223 = !{i32 7, !"frame-pointer", i32 2}
!224 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!225 = !{!"branch_weights", i32 2000, i32 1}
!226 = !{!"branch_weights", i32 1, i32 2000}
!227 = !{!"auto-init"}
!228 = !{i64 2155797455, i64 2155802007, i64 2155797492, i64 2155797548, i64 2155797582, i64 2155797606, i64 2155797647, i64 2155797668, i64 2155797696, i64 2155797730}
!229 = !{i64 4064914}
!230 = !{i64 2156699370}
!231 = !{i64 2155803270, i64 2155803761, i64 2155803307, i64 2155803363, i64 2155803397, i64 2155803421, i64 2155803462, i64 2155803483, i64 2155803511, i64 2155803545}
!232 = !{i64 2156676804}
!233 = !{i8 0, i8 2}
!234 = !{i64 2156659779}
!235 = !{i64 4064496}
!236 = !{i64 2156829138}
!237 = !{i64 2156674091}
!238 = !{i64 2156664761}
!239 = !{i64 2156665328}
!240 = !{i64 2156666119}
!241 = !{i64 2156670666}
!242 = !{i64 2156671175}
!243 = !{i64 2156671705}
!244 = !{i64 2156672235}
!245 = !{i64 2148936363, i64 2148936368, i64 2148936381, i64 2148936425, i64 2148936459, i64 2148936480}
!246 = !{i64 2155857935}
!247 = !{i64 2155858144}
!248 = !{i64 2150091980}
!249 = !{i64 2150093016}
