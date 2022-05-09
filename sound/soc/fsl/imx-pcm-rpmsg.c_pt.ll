; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/imx-pcm-rpmsg.c_pt.bc'
source_filename = "../sound/soc/fsl/imx-pcm-rpmsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.rpmsg_info = type { ptr, ptr, %struct.completion, %struct.pm_qos_request, %struct.rpmsg_r_msg, [26 x %struct.rpmsg_msg], [2 x %struct.rpmsg_msg], [2 x i8], ptr, [48 x %struct.work_of_rpmsg], i32, i32, [2 x i32], [2 x i32], [2 x ptr], [2 x ptr], ptr, [2 x %struct.spinlock], %struct.spinlock, %struct.mutex, [2 x %struct.stream_timer] }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rpmsg_r_msg = type { %struct.rpmsg_head, %struct.param_r }
%struct.rpmsg_head = type { i8, i8, i8, i8, i8, [5 x i8] }
%struct.param_r = type <{ i8, i8, [1 x i8], i32, i32, i32, [4 x i8], i32 }>
%struct.rpmsg_msg = type { %struct.rpmsg_s_msg, %struct.rpmsg_r_msg }
%struct.rpmsg_s_msg = type { %struct.rpmsg_head, %struct.param_s }
%struct.param_s = type <{ i8, i8, i8, i32, i32, i32, i32, i32 }>
%struct.work_of_rpmsg = type { ptr, %struct.rpmsg_msg, %struct.work_struct }
%struct.stream_timer = type { %struct.timer_list, ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.fsl_rpmsg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_mmap_control = type { [4 x i8], i32, [4 x i8], [4 x i8], i32, [0 x i8] }
%struct.snd_pcm_mmap_status = type { i32, i32, [4 x i8], i32, [0 x i8], %struct.__kernel_timespec, i32, i32, %struct.__kernel_timespec }
%struct.__kernel_timespec = type { i64, i64 }

@__initcall__kmod_imx_pcm_rpmsg__244_828_imx_pcm_rpmsg_driver_init6 = internal global ptr @imx_pcm_rpmsg_driver_init, section ".initcall6.init", align 4
@imx_pcm_rpmsg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_rpmsg_pcm_probe, ptr @imx_rpmsg_pcm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_rpmsg_pcm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_pcm_rpmsg_driver_exit = internal global ptr @imx_pcm_rpmsg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description245 = internal constant [66 x i8] c"imx_pcm_rpmsg.description=Freescale SoC Audio RPMSG PCM interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [59 x i8] c"imx_pcm_rpmsg.author=Shengjiu Wang <shengjiu.wang@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias247 = internal constant [43 x i8] c"imx_pcm_rpmsg.alias=platform:imx_pcm_rpmsg\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [47 x i8] c"imx_pcm_rpmsg.file=sound/soc/fsl/imx-pcm-rpmsg\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [29 x i8] c"imx_pcm_rpmsg.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx_pcm_rpmsg\00", [18 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx_rpmsg_pcm_suspend, ptr @imx_rpmsg_pcm_resume, ptr @imx_rpmsg_pcm_suspend, ptr @imx_rpmsg_pcm_resume, ptr @imx_rpmsg_pcm_suspend, ptr @imx_rpmsg_pcm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_rpmsg_pcm_runtime_suspend, ptr @imx_rpmsg_pcm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rpmsg_audio\00", [20 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 692, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"workqueue create failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx_rpmsg_pcm_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/fsl/imx-pcm-rpmsg.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_probe._entry_ptr = internal global ptr @imx_rpmsg_pcm_probe._entry, section ".printk_index", align 4
@imx_rpmsg_pcm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&info->work_list[i].work)\00", [52 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&info->msg_lock\00", [16 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&info->lock[TX]\00", [16 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&info->lock[RX]\00", [16 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&info->wq_lock\00", [17 x i8] zeroinitializer }, align 32
@imx_rpmsg_soc_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_rpmsg_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_rpmsg_pcm_open, ptr @imx_rpmsg_pcm_close, ptr null, ptr @imx_rpmsg_pcm_hw_params, ptr null, ptr @imx_rpmsg_pcm_prepare, ptr @imx_rpmsg_pcm_trigger, ptr null, ptr @imx_rpmsg_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr @imx_rpmsg_pcm_ack, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rpmsg\00", [26 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_send_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 43, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rpmsg channel not ready\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"imx_rpmsg_pcm_send_message\00", [37 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_send_message._entry_ptr = internal global ptr @imx_rpmsg_pcm_send_message._entry, section ".printk_index", align 4
@imx_rpmsg_pcm_send_message.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"send cmd %d\0A\00", [19 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_send_message._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.4, i32 56, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rpmsg_send failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_send_message._entry_ptr.22 = internal global ptr @imx_rpmsg_pcm_send_message._entry.20, section ".printk_index", align 4
@imx_rpmsg_pcm_send_message._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.4, i32 72, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rpmsg_send cmd %d timeout!\0A\00", [36 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_send_message._entry_ptr.25 = internal global ptr @imx_rpmsg_pcm_send_message._entry.23, section ".printk_index", align 4
@imx_rpmsg_pcm_send_message.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.4, ptr @.str.26, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cmd:%d, resp %d\0A\00", [47 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_hardware = internal global { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 9240835, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 512, i32 65536, i32 2, i32 6000, i32 0 }, [32 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(&info->stream_timer[substream->stream].timer)\00", [49 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 306, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Msg is dropped!, number is %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx_rpmsg_pcm_close\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx_rpmsg_pcm_close._entry_ptr = internal global ptr @imx_rpmsg_pcm_close._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 14]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 6, i64 49, i64 50]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"imx_pcm_rpmsg_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 820, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 824, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"imx_rpmsg_pcm_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 812, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 687, i32 19 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 692, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 701, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 715, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 716, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 717, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 718, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [24 x i8] c"imx_rpmsg_soc_component\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 607, i32 46 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 732, i32 30 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 43, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 48, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 56, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 71, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 99, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 87, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"imx_rpmsg_pcm_hardware\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 19, i32 32 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 274, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [33 x i8] c"../sound/soc/fsl/imx-pcm-rpmsg.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 305, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_imx_pcm_rpmsg_driver_exit, ptr @__initcall__kmod_imx_pcm_rpmsg__244_828_imx_pcm_rpmsg_driver_init6, ptr @imx_pcm_rpmsg_driver_exit, ptr @imx_rpmsg_pcm_close._entry, ptr @imx_rpmsg_pcm_close._entry_ptr, ptr @imx_rpmsg_pcm_probe._entry, ptr @imx_rpmsg_pcm_probe._entry_ptr, ptr @imx_rpmsg_pcm_send_message._entry, ptr @imx_rpmsg_pcm_send_message._entry.20, ptr @imx_rpmsg_pcm_send_message._entry.23, ptr @imx_rpmsg_pcm_send_message._entry_ptr, ptr @imx_rpmsg_pcm_send_message._entry_ptr.22, ptr @imx_rpmsg_pcm_send_message._entry_ptr.25, ptr @imx_pcm_rpmsg_driver, ptr @.str, ptr @imx_rpmsg_pcm_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @imx_rpmsg_pcm_probe.__key, ptr @.str.7, ptr @imx_rpmsg_pcm_probe.__key.8, ptr @.str.9, ptr @imx_rpmsg_pcm_probe.__key.10, ptr @.str.11, ptr @imx_rpmsg_pcm_probe.__key.12, ptr @.str.13, ptr @imx_rpmsg_pcm_probe.__key.14, ptr @.str.15, ptr @imx_rpmsg_soc_component, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @init_completion.__key, ptr @.str.27, ptr @imx_rpmsg_pcm_hardware, ptr @imx_rpmsg_pcm_open.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pcm_rpmsg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_pcm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_pcm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_pcm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_pcm_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_pcm_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_pcm_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_pcm_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_soc_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_pcm_send_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_pcm_send_message._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_pcm_send_message._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_pcm_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rpmsg_pcm_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pcm_rpmsg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_pcm_rpmsg_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_pcm_rpmsg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_pcm_rpmsg_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rpmsg_pcm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 7924, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call.i, align 4
  %dev3 = getelementptr inbounds %struct.rpmsg_info, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev3, align 4
  %call4 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 655382, i32 noundef 1) #8
  %rpmsg_wq = getelementptr inbounds %struct.rpmsg_info, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %rpmsg_wq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %rpmsg_wq, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %work_write_index = getelementptr inbounds %struct.rpmsg_info, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %work_write_index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %work_write_index, align 4
  %send_message = getelementptr inbounds %struct.rpmsg_info, ptr %call.i, i32 0, i32 16
  %7 = ptrtoint ptr %send_message to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @imx_rpmsg_pcm_send_message, ptr %send_message, align 4
  br label %do.body10

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %if.end9
  %i.0135 = phi i32 [ 0, %if.end9 ], [ %inc, %do.body10.do.body10_crit_edge ]
  %arrayidx = getelementptr %struct.rpmsg_info, ptr %call.i, i32 0, i32 9, i32 %i.0135
  %work = getelementptr %struct.rpmsg_info, ptr %call.i, i32 0, i32 9, i32 %i.0135, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %8 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr %struct.rpmsg_info, ptr %call.i, i32 0, i32 9, i32 %i.0135, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @imx_rpmsg_pcm_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry20 = getelementptr %struct.rpmsg_info, ptr %call.i, i32 0, i32 9, i32 %i.0135, i32 2, i32 1
  %9 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i = getelementptr %struct.rpmsg_info, ptr %call.i, i32 0, i32 9, i32 %i.0135, i32 2, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry20, ptr %prev.i, align 4
  %func = getelementptr %struct.rpmsg_info, ptr %call.i, i32 0, i32 9, i32 %i.0135, i32 2, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @imx_rpmsg_pcm_work, ptr %func, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %do.body10.for.body31_crit_edge, label %do.body10.do.body10_crit_edge

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

do.body10.for.body31_crit_edge:                   ; preds = %do.body10
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %do.body10.for.body31_crit_edge
  %i.1136 = phi i32 [ %inc49, %for.body31.for.body31_crit_edge ], [ 0, %do.body10.for.body31_crit_edge ]
  %arrayidx32 = getelementptr %struct.rpmsg_info, ptr %call.i, i32 0, i32 5, i32 %i.1136
  %13 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %arrayidx32, align 1
  %major = getelementptr inbounds %struct.rpmsg_head, ptr %arrayidx32, i32 0, i32 1
  %14 = ptrtoint ptr %major to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %major, align 1
  %minor = getelementptr inbounds %struct.rpmsg_head, ptr %arrayidx32, i32 0, i32 2
  %15 = ptrtoint ptr %minor to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %minor, align 1
  %type = getelementptr inbounds %struct.rpmsg_head, ptr %arrayidx32, i32 0, i32 3
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %type, align 1
  %param = getelementptr inbounds %struct.rpmsg_s_msg, ptr %arrayidx32, i32 0, i32 1
  %17 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %param, align 1
  %inc49 = add nuw nsw i32 %i.1136, 1
  %exitcond137.not = icmp eq i32 %inc49, 26
  br i1 %exitcond137.not, label %for.end50, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

for.end50:                                        ; preds = %for.body31
  %cmd_complete = getelementptr inbounds %struct.rpmsg_info, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cmd_complete, align 4
  %wait.i = getelementptr inbounds %struct.rpmsg_info, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #8
  %msg_lock = getelementptr inbounds %struct.rpmsg_info, ptr %call.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %msg_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @imx_rpmsg_pcm_probe.__key.8) #8
  %lock = getelementptr inbounds %struct.rpmsg_info, ptr %call.i, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @imx_rpmsg_pcm_probe.__key.10, i16 noundef signext 3) #8
  %arrayidx61 = getelementptr %struct.rpmsg_info, ptr %call.i, i32 0, i32 17, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx61, ptr noundef nonnull @.str.13, ptr noundef nonnull @imx_rpmsg_pcm_probe.__key.12, i16 noundef signext 3) #8
  %wq_lock = getelementptr inbounds %struct.rpmsg_info, ptr %call.i, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %wq_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @imx_rpmsg_pcm_probe.__key.14, i16 noundef signext 3) #8
  %call70 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @imx_rpmsg_soc_component, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %for.end50.fail_crit_edge

for.end50.fail_crit_edge:                         ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end73:                                         ; preds = %for.end50
  %call75 = tail call ptr @snd_soc_lookup_component(ptr noundef %dev, ptr noundef nonnull @.str) #8
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.end73.fail_crit_edge, label %if.end78

if.end73.fail_crit_edge:                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end78:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %debugfs_prefix = getelementptr inbounds %struct.snd_soc_component, ptr %call75, i32 0, i32 26
  %19 = ptrtoint ptr %debugfs_prefix to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.16, ptr %debugfs_prefix, align 4
  br label %cleanup

fail:                                             ; preds = %if.end73.fail_crit_edge, %for.end50.fail_crit_edge
  %ret.0 = phi i32 [ %call70, %for.end50.fail_crit_edge ], [ -22, %if.end73.fail_crit_edge ]
  %20 = ptrtoint ptr %rpmsg_wq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rpmsg_wq, align 4
  %tobool80.not = icmp eq ptr %21, null
  br i1 %tobool80.not, label %fail.cleanup_crit_edge, label %if.then81

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then81:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @destroy_workqueue(ptr noundef nonnull %21) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %fail.cleanup_crit_edge, %if.end78, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end78 ], [ -12, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %ret.0, %if.then81 ], [ %ret.0, %fail.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rpmsg_pcm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rpmsg_wq = getelementptr inbounds %struct.rpmsg_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rpmsg_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpmsg_wq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @destroy_workqueue(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rpmsg_pcm_send_message(ptr noundef %msg, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %msg_lock = getelementptr inbounds %struct.rpmsg_info, ptr %info, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %msg_lock, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rpmsg_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #11
  br label %cleanup

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_rpmsg_pcm_send_message.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_rpmsg_pcm_send_message, %if.then7)) #8
          to label %do.end11 [label %if.then7], !srcloc !89

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %cmd = getelementptr inbounds %struct.rpmsg_head, ptr %msg, i32 0, i32 4
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd, align 1
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_rpmsg_pcm_send_message.__UNIQUE_ID_ddebug242, ptr noundef nonnull %1, ptr noundef nonnull @.str.19, i32 noundef %conv) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body3
  %type = getelementptr inbounds %struct.rpmsg_head, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp eq i8 %7, 2
  br i1 %cmp, label %do.end11.if.end17_crit_edge, label %if.then16

do.end11.if.end17_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_complete = getelementptr inbounds %struct.rpmsg_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cmd_complete, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.end11.if.end17_crit_edge
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ept, align 8
  %call19 = tail call i32 @rpmsg_send(ptr noundef %10, ptr noundef %msg, i32 noundef 33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, i32 noundef %call19) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp32 = icmp eq i8 %12, 2
  br i1 %cmp32, label %if.end27.cleanup_crit_edge, label %if.end36

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %cmd_complete37 = getelementptr inbounds %struct.rpmsg_info, ptr %info, i32 0, i32 2
  %call39 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete37, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.end44, label %if.end51

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %cmd48 = getelementptr inbounds %struct.rpmsg_head, ptr %msg, i32 0, i32 4
  %13 = ptrtoint ptr %cmd48 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cmd48, align 1
  %conv49 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.24, i32 noundef %conv49) #11
  br label %cleanup

if.end51:                                         ; preds = %if.end36
  %r_msg = getelementptr inbounds %struct.rpmsg_msg, ptr %msg, i32 0, i32 1
  %r_msg52 = getelementptr inbounds %struct.rpmsg_info, ptr %info, i32 0, i32 4
  %15 = call ptr @memcpy(ptr %r_msg, ptr %r_msg52, i32 33)
  %cmd56 = getelementptr inbounds %struct.rpmsg_msg, ptr %msg, i32 0, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %cmd56 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmd56, align 1
  %idxprom = zext i8 %17 to i32
  %r_msg57 = getelementptr %struct.rpmsg_info, ptr %info, i32 0, i32 5, i32 %idxprom, i32 1
  %18 = call ptr @memcpy(ptr %r_msg57, ptr %r_msg52, i32 33)
  %cmd61 = getelementptr inbounds %struct.rpmsg_head, ptr %msg, i32 0, i32 4
  %19 = ptrtoint ptr %cmd61 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cmd61, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %if.end51.do.body72_crit_edge [
    i8 4, label %sw.bb
    i8 14, label %sw.bb66
  ]

if.end51.do.body72_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body72

sw.bb:                                            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %buffer_offset = getelementptr %struct.rpmsg_info, ptr %info, i32 0, i32 5, i32 22, i32 1, i32 1, i32 3
  br label %do.body72.sink.split

sw.bb66:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %buffer_offset71 = getelementptr %struct.rpmsg_info, ptr %info, i32 0, i32 5, i32 23, i32 1, i32 1, i32 3
  br label %do.body72.sink.split

do.body72.sink.split:                             ; preds = %sw.bb66, %sw.bb
  %buffer_offset.sink = phi ptr [ %buffer_offset, %sw.bb ], [ %buffer_offset71, %sw.bb66 ]
  %22 = ptrtoint ptr %buffer_offset.sink to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 0, ptr %buffer_offset.sink, align 1
  br label %do.body72

do.body72:                                        ; preds = %do.body72.sink.split, %if.end51.do.body72_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_rpmsg_pcm_send_message.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_rpmsg_pcm_send_message, %if.then84)) #8
          to label %cleanup [label %if.then84], !srcloc !89

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %cmd61 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cmd61, align 1
  %conv89 = zext i8 %24 to i32
  %resp = getelementptr inbounds %struct.rpmsg_info, ptr %info, i32 0, i32 4, i32 1, i32 1
  %25 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %resp, align 1
  %conv92 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_rpmsg_pcm_send_message.__UNIQUE_ID_ddebug243, ptr noundef nonnull %1, ptr noundef nonnull @.str.26, i32 noundef %conv89, i32 noundef %conv92) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %do.body72, %do.end44, %if.end27.cleanup_crit_edge, %do.end24, %do.end
  %retval.0 = phi i32 [ %call19, %do.end24 ], [ -110, %do.end44 ], [ -22, %do.end ], [ 0, %if.end27.cleanup_crit_edge ], [ 0, %do.body72 ], [ 0, %if.then84 ]
  tail call void @mutex_unlock(ptr noundef %msg_lock) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_rpmsg_pcm_work(ptr noundef %work) #2 align 64 {
entry:
  %msg = alloca %struct.rpmsg_msg, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %msg) #8
  %0 = call ptr @memset(ptr %msg, i32 255, i32 66)
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %lock = getelementptr inbounds %struct.rpmsg_info, ptr %2, i32 0, i32 17
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %notify_updated = getelementptr inbounds %struct.rpmsg_info, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %notify_updated to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %notify_updated, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %notify = getelementptr inbounds %struct.rpmsg_info, ptr %2, i32 0, i32 6
  %5 = call ptr @memcpy(ptr %msg, ptr %notify, i32 33)
  %6 = ptrtoint ptr %notify_updated to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %notify_updated, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  %send_message = getelementptr inbounds %struct.rpmsg_info, ptr %2, i32 0, i32 16
  %7 = ptrtoint ptr %send_message to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %send_message, align 4
  %call13 = call i32 %8(ptr noundef nonnull %msg, ptr noundef %2) #8
  br label %do.body17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  br label %do.body17

do.body17:                                        ; preds = %if.else, %if.then
  %arrayidx24 = getelementptr %struct.rpmsg_info, ptr %2, i32 0, i32 17, i32 1
  %call26 = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx24) #8
  %arrayidx32 = getelementptr %struct.rpmsg_info, ptr %2, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx32, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool33.not = icmp eq i8 %10, 0
  br i1 %tobool33.not, label %if.else43, label %if.then34

if.then34:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx36 = getelementptr %struct.rpmsg_info, ptr %2, i32 0, i32 6, i32 1
  %11 = call ptr @memcpy(ptr %msg, ptr %arrayidx36, i32 33)
  %12 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx32, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx24, i32 noundef %call26) #8
  %send_message41 = getelementptr inbounds %struct.rpmsg_info, ptr %2, i32 0, i32 16
  %13 = ptrtoint ptr %send_message41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %send_message41, align 4
  %call42 = call i32 %14(ptr noundef nonnull %msg, ptr noundef %2) #8
  br label %if.end46

if.else43:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx24, i32 noundef %call26) #8
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then34
  %msg47 = getelementptr i8, ptr %work, i32 -68
  %type = getelementptr i8, ptr %work, i32 -65
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp49 = icmp eq i8 %16, 2
  br i1 %cmp49, label %land.lhs.true, label %if.end46.if.then67_crit_edge

if.end46.if.then67_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

land.lhs.true:                                    ; preds = %if.end46
  %cmd = getelementptr i8, ptr %work, i32 -64
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %switch = icmp ult i8 %18, 2
  br i1 %switch, label %land.lhs.true.do.body73_crit_edge, label %land.lhs.true.if.then67_crit_edge

land.lhs.true.if.then67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

land.lhs.true.do.body73_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body73

if.then67:                                        ; preds = %land.lhs.true.if.then67_crit_edge, %if.end46.if.then67_crit_edge
  %send_message68 = getelementptr inbounds %struct.rpmsg_info, ptr %2, i32 0, i32 16
  %19 = ptrtoint ptr %send_message68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %send_message68, align 4
  %call70 = call i32 %20(ptr noundef %msg47, ptr noundef %2) #8
  br label %do.body73

do.body73:                                        ; preds = %if.then67, %land.lhs.true.do.body73_crit_edge
  %wq_lock = getelementptr inbounds %struct.rpmsg_info, ptr %2, i32 0, i32 18
  %call80 = call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock) #8
  %work_read_index = getelementptr inbounds %struct.rpmsg_info, ptr %2, i32 0, i32 11
  %21 = ptrtoint ptr %work_read_index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %work_read_index, align 4
  %inc = add i32 %22, 1
  %rem = srem i32 %inc, 48
  store i32 %rem, ptr %work_read_index, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock, i32 noundef %call80) #8
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %msg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_lookup_component(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rpmsg_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_card, align 4
  %pcm2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %4 = ptrtoint ptr %pcm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm2, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %6 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dais, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  %dev3 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev3, align 8
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 19
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %15, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %15, i64 noundef 4294967295) #8
  %buffer_size = getelementptr inbounds %struct.fsl_rpmsg, ptr %13, i32 0, i32 10
  %17 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer_size, align 4
  store i32 %18, ptr getelementptr inbounds (%struct.snd_pcm_hardware, ptr @imx_rpmsg_pcm_hardware, i32 0, i32 7), align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 8
  %dev6 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev6, align 8
  %call.i = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %5, i32 noundef 5, ptr noundef %22, i32 noundef %18, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rpmsg_pcm_open(ptr nocapture noundef readonly %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %msg1 = getelementptr inbounds %struct.rpmsg_info, ptr %3, i32 0, i32 5
  %cmd2 = getelementptr inbounds %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 0, i32 0, i32 0, i32 4
  %6 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %cmd2, align 1
  %buffer_tail = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 24, i32 0, i32 1, i32 7
  %7 = ptrtoint ptr %buffer_tail to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %buffer_tail, align 1
  %buffer_tail9 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 24, i32 1, i32 1, i32 7
  %8 = ptrtoint ptr %buffer_tail9 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %buffer_tail9, align 1
  %buffer_offset = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 22, i32 1, i32 1, i32 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 10
  %cmd18 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 10, i32 0, i32 0, i32 4
  %9 = ptrtoint ptr %cmd18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %cmd18, align 1
  %buffer_tail23 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 25, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %buffer_tail23 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %buffer_tail23, align 1
  %buffer_tail28 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 25, i32 1, i32 1, i32 7
  %11 = ptrtoint ptr %buffer_tail28 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %buffer_tail28, align 1
  %buffer_offset33 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 23, i32 1, i32 1, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %buffer_offset33.sink = phi ptr [ %buffer_offset33, %if.else ], [ %buffer_offset, %if.then ]
  %msg.0 = phi ptr [ %arrayidx15, %if.else ], [ %msg1, %if.then ]
  %12 = ptrtoint ptr %buffer_offset33.sink to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %buffer_offset33.sink, align 1
  %send_message = getelementptr inbounds %struct.rpmsg_info, ptr %3, i32 0, i32 16
  %13 = ptrtoint ptr %send_message to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %send_message, align 4
  %call34 = tail call i32 %14(ptr noundef %msg.0, ptr noundef %3) #8
  %15 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hardware, ptr @imx_rpmsg_pcm_hardware, i32 0, i32 7), align 4
  %div83 = lshr i32 %15, 1
  store i32 %div83, ptr getelementptr inbounds (%struct.snd_pcm_hardware, ptr @imx_rpmsg_pcm_hardware, i32 0, i32 9), align 4
  %call35 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @imx_rpmsg_pcm_hardware) #8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %16 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime, align 4
  %call36 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %17, i32 noundef 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end.cleanup_crit_edge, label %if.end39

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream, align 4
  %arrayidx41 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 12, i32 %19
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx41, align 4
  %21 = load i32, ptr %stream, align 4
  %info44 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 20, i32 %21, i32 1
  %22 = ptrtoint ptr %info44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %3, ptr %info44, align 4
  %23 = load i32, ptr %stream, align 4
  %substream48 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 20, i32 %23, i32 2
  %24 = ptrtoint ptr %substream48 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %substream, ptr %substream48, align 4
  %25 = load i32, ptr %stream, align 4
  %arrayidx51 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 20, i32 %25
  tail call void @init_timer_key(ptr noundef %arrayidx51, ptr noundef nonnull @imx_rpmsg_timer_callback, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @imx_rpmsg_pcm_open.__key) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end.cleanup_crit_edge
  ret i32 %call36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rpmsg_pcm_close(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %rpmsg_wq = getelementptr inbounds %struct.rpmsg_info, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %rpmsg_wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rpmsg_wq, align 4
  tail call void @flush_workqueue(ptr noundef %7) #8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.rpmsg_info, ptr %5, i32 0, i32 5, i32 5
  %cmd = getelementptr %struct.rpmsg_info, ptr %5, i32 0, i32 5, i32 5, i32 0, i32 0, i32 4
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %cmd, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3 = getelementptr %struct.rpmsg_info, ptr %5, i32 0, i32 5, i32 15
  %cmd6 = getelementptr %struct.rpmsg_info, ptr %5, i32 0, i32 5, i32 15, i32 0, i32 0, i32 4
  %11 = ptrtoint ptr %cmd6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 15, ptr %cmd6, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %msg.0 = phi ptr [ %arrayidx, %if.then ], [ %arrayidx3, %if.else ]
  %send_message = getelementptr inbounds %struct.rpmsg_info, ptr %5, i32 0, i32 16
  %12 = ptrtoint ptr %send_message to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %send_message, align 4
  %call7 = tail call i32 %13(ptr noundef %msg.0, ptr noundef %5) #8
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  %arrayidx9 = getelementptr %struct.rpmsg_info, ptr %5, i32 0, i32 20, i32 %15
  %call10 = tail call i32 @del_timer(ptr noundef %arrayidx9) #8
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dai_link, align 4
  %ignore_suspend = getelementptr inbounds %struct.snd_soc_dai_link, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %ignore_suspend to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %ignore_suspend, align 4
  %bf.clear = and i32 %bf.load, -268435457
  store i32 %bf.clear, ptr %ignore_suspend, align 4
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream, align 4
  %arrayidx12 = getelementptr %struct.rpmsg_info, ptr %5, i32 0, i32 12, i32 %20
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %do.end

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.29, i32 noundef %22) #11
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rpmsg_pcm_hw_params(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 6
  %cmd = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 6, i32 0, i32 0, i32 4
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %cmd, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 16
  %cmd6 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 16, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %cmd6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %cmd6, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %msg.0 = phi ptr [ %arrayidx, %if.then ], [ %arrayidx3, %if.else ]
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %rate = getelementptr inbounds %struct.rpmsg_s_msg, ptr %msg.0, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %rate, align 1
  %arrayidx.i.i53 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end.params_format.exit_crit_edge

if.end.params_format.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.default_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

for.inc.i.i.sw.default_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.end.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %12, %if.end.params_format.exit_crit_edge ], [ %14, %for.inc.i.i.params_format.exit_crit_edge ]
  %15 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !91
  %add.i.i = or i32 %15, %i.09.lcssa.i.i
  %16 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %add.i.i, label %params_format.exit.sw.default_crit_edge [
    i32 2, label %params_format.exit.sw.epilog_crit_edge
    i32 6, label %sw.bb12
    i32 49, label %sw.bb16
    i32 50, label %sw.bb20
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

params_format.exit.sw.default_crit_edge:          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.bb12:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb16:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb20:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %params_format.exit.sw.default_crit_edge, %for.inc.i.i.sw.default_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb16, %sw.bb12, %params_format.exit.sw.epilog_crit_edge
  %.sink = phi i8 [ 2, %sw.default ], [ 50, %sw.bb20 ], [ 49, %sw.bb16 ], [ 1, %sw.bb12 ], [ 0, %params_format.exit.sw.epilog_crit_edge ]
  %format26 = getelementptr inbounds %struct.rpmsg_s_msg, ptr %msg.0, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %format26 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %format26, align 1
  %arrayidx.i.i54 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i54, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %19, label %sw.epilog.sw.epilog36_crit_edge [
    i32 1, label %sw.epilog.sw.epilog36.sink.split_crit_edge
    i32 2, label %sw.bb31
  ]

sw.epilog.sw.epilog36.sink.split_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog36.sink.split

sw.epilog.sw.epilog36_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog36

sw.bb31:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog36.sink.split

sw.epilog36.sink.split:                           ; preds = %sw.bb31, %sw.epilog.sw.epilog36.sink.split_crit_edge
  %.sink56 = phi i8 [ 2, %sw.bb31 ], [ 0, %sw.epilog.sw.epilog36.sink.split_crit_edge ]
  %channels34 = getelementptr inbounds %struct.rpmsg_s_msg, ptr %msg.0, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %channels34 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink56, ptr %channels34, align 1
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %sw.epilog36.sink.split, %sw.epilog.sw.epilog36_crit_edge
  %ret.0 = phi i32 [ -22, %sw.epilog.sw.epilog36_crit_edge ], [ 0, %sw.epilog36.sink.split ]
  %send_message = getelementptr inbounds %struct.rpmsg_info, ptr %3, i32 0, i32 16
  %22 = ptrtoint ptr %send_message to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %send_message, align 4
  %call37 = tail call i32 %23(ptr noundef %msg.0, ptr noundef %3) #8
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx_rpmsg_pcm_prepare(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %access = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %access, align 8
  %.off = add i32 %13, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %enable_lpa = getelementptr inbounds %struct.fsl_rpmsg, ptr %11, i32 0, i32 9
  %14 = ptrtoint ptr %enable_lpa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable_lpa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dai_link, align 4
  %ignore_suspend = getelementptr inbounds %struct.snd_soc_dai_link, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %ignore_suspend to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %ignore_suspend, align 4
  %bf.set = or i32 %bf.load, 268435456
  store i32 %bf.set, ptr %ignore_suspend, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ]
  %force_lpa4 = getelementptr inbounds %struct.fsl_rpmsg, ptr %11, i32 0, i32 8
  %19 = ptrtoint ptr %force_lpa4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %force_lpa4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rpmsg_pcm_trigger(ptr nocapture noundef readonly %component, ptr noundef %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 6, label %sw.bb4
    i32 4, label %entry.sw.bb8_crit_edge
    i32 5, label %sw.bb10
    i32 3, label %sw.bb20
    i32 0, label %sw.bb22
  ]

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %17 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp eq i32 %18, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.rpmsg_info, ptr %16, i32 0, i32 5, i32 7
  %cmd.i = getelementptr %struct.rpmsg_info, ptr %16, i32 0, i32 5, i32 7, i32 0, i32 0, i32 4
  %19 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 7, ptr %cmd.i, align 1
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i = getelementptr %struct.rpmsg_info, ptr %16, i32 0, i32 5, i32 17
  %cmd6.i = getelementptr %struct.rpmsg_info, ptr %16, i32 0, i32 5, i32 17, i32 0, i32 0, i32 4
  %20 = ptrtoint ptr %cmd6.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 17, ptr %cmd6.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %msg.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %arrayidx3.i, %if.else.i ]
  %21 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runtime1, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 51
  %23 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_addr.i, align 8
  %buffer_addr.i = getelementptr inbounds %struct.rpmsg_s_msg, ptr %msg.0.i, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %buffer_addr.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %buffer_addr.i, align 1
  %26 = load ptr, ptr %runtime1, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buffer_size.i.i, align 4
  %frame_bits.i.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %26, i32 0, i32 21
  %29 = ptrtoint ptr %frame_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %frame_bits.i.i.i, align 8
  %mul.i.i.i = mul i32 %30, %28
  %div1.i.i.i = lshr i32 %mul.i.i.i, 3
  %buffer_size.i = getelementptr inbounds %struct.rpmsg_s_msg, ptr %msg.0.i, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %div1.i.i.i, ptr %buffer_size.i, align 1
  %32 = load ptr, ptr %runtime1, align 4
  %period_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %period_size.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %period_size.i.i, align 4
  %frame_bits.i.i51.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 21
  %35 = ptrtoint ptr %frame_bits.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frame_bits.i.i51.i, align 8
  %mul.i.i52.i = mul i32 %36, %34
  %div1.i.i53.i = lshr i32 %mul.i.i52.i, 3
  %period_size.i = getelementptr inbounds %struct.rpmsg_s_msg, ptr %msg.0.i, i32 0, i32 1, i32 6
  %37 = ptrtoint ptr %period_size.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %div1.i.i53.i, ptr %period_size.i, align 1
  %buffer_tail.i = getelementptr inbounds %struct.rpmsg_s_msg, ptr %msg.0.i, i32 0, i32 1, i32 7
  %38 = ptrtoint ptr %buffer_tail.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 0, ptr %buffer_tail.i, align 1
  %div.i = udiv i32 %div1.i.i.i, %div1.i.i53.i
  %39 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stream.i, align 4
  %arrayidx23.i = getelementptr %struct.rpmsg_info, ptr %16, i32 0, i32 13, i32 %40
  %41 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div.i, ptr %arrayidx23.i, align 4
  %42 = load i32, ptr %stream.i, align 4
  %arrayidx25.i = getelementptr %struct.rpmsg_info, ptr %16, i32 0, i32 15, i32 %42
  %43 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @imx_rpmsg_pcm_dma_complete, ptr %arrayidx25.i, align 4
  %44 = load i32, ptr %stream.i, align 4
  %arrayidx27.i = getelementptr %struct.rpmsg_info, ptr %16, i32 0, i32 14, i32 %44
  %45 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %substream, ptr %arrayidx27.i, align 4
  %wq_lock.i.i = getelementptr inbounds %struct.rpmsg_info, ptr %16, i32 0, i32 18
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock.i.i) #8
  %work_write_index.i.i = getelementptr inbounds %struct.rpmsg_info, ptr %16, i32 0, i32 10
  %46 = ptrtoint ptr %work_write_index.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %work_write_index.i.i, align 4
  %work_read_index.i.i = getelementptr inbounds %struct.rpmsg_info, ptr %16, i32 0, i32 11
  %48 = ptrtoint ptr %work_read_index.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %work_read_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp5.not.i.i = icmp eq i32 %47, %49
  br i1 %cmp5.not.i.i, label %imx_rpmsg_prepare_and_submit.exit, label %if.end

imx_rpmsg_prepare_and_submit.exit:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stream.i, align 4
  %arrayidx14.i.i = getelementptr %struct.rpmsg_info, ptr %16, i32 0, i32 12, i32 %51
  %52 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx14.i.i, align 4
  %inc15.i.i = add i32 %53, 1
  store i32 %inc15.i.i, ptr %arrayidx14.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock.i.i, i32 noundef %call2.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %msg8.i.i = getelementptr %struct.rpmsg_info, ptr %16, i32 0, i32 9, i32 %47, i32 1
  %54 = call ptr @memcpy(ptr %msg8.i.i, ptr %msg.0.i, i32 33)
  %rpmsg_wq.i.i = getelementptr inbounds %struct.rpmsg_info, ptr %16, i32 0, i32 8
  %55 = ptrtoint ptr %rpmsg_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rpmsg_wq.i.i, align 4
  %work.i.i = getelementptr %struct.rpmsg_info, ptr %16, i32 0, i32 9, i32 %47, i32 2
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %work.i.i) #8
  %57 = ptrtoint ptr %work_write_index.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %work_write_index.i.i, align 4
  %inc.i.i = add i32 %58, 1
  %rem.i.i = srem i32 %inc.i.i, 48
  store i32 %rem.i.i, ptr %work_write_index.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock.i.i, i32 noundef %call2.i.i) #8
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i50 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %driver_data.i.i50 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_data.i.i50, align 4
  %63 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i52 = icmp eq i32 %64, 0
  br i1 %cmp.i52, label %if.then.i55, label %if.else.i58

if.then.i55:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i53 = getelementptr %struct.rpmsg_info, ptr %62, i32 0, i32 5, i32 1
  %cmd.i54 = getelementptr %struct.rpmsg_info, ptr %62, i32 0, i32 5, i32 1, i32 0, i32 0, i32 4
  %65 = ptrtoint ptr %cmd.i54 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %cmd.i54, align 1
  br label %if.end.i65

if.else.i58:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i56 = getelementptr %struct.rpmsg_info, ptr %62, i32 0, i32 5, i32 11
  %cmd6.i57 = getelementptr %struct.rpmsg_info, ptr %62, i32 0, i32 5, i32 11, i32 0, i32 0, i32 4
  %66 = ptrtoint ptr %cmd6.i57 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 11, ptr %cmd6.i57, align 1
  br label %if.end.i65

if.end.i65:                                       ; preds = %if.else.i58, %if.then.i55
  %msg.0.i59 = phi ptr [ %arrayidx.i53, %if.then.i55 ], [ %arrayidx3.i56, %if.else.i58 ]
  %wq_lock.i.i60 = getelementptr inbounds %struct.rpmsg_info, ptr %62, i32 0, i32 18
  %call2.i.i61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock.i.i60) #8
  %work_write_index.i.i62 = getelementptr inbounds %struct.rpmsg_info, ptr %62, i32 0, i32 10
  %67 = ptrtoint ptr %work_write_index.i.i62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %work_write_index.i.i62, align 4
  %work_read_index.i.i63 = getelementptr inbounds %struct.rpmsg_info, ptr %62, i32 0, i32 11
  %69 = ptrtoint ptr %work_read_index.i.i63 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %work_read_index.i.i63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp5.not.i.i64 = icmp eq i32 %68, %70
  br i1 %cmp5.not.i.i64, label %if.else.i.i75, label %if.then.i.i72

if.then.i.i72:                                    ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  %msg8.i.i66 = getelementptr %struct.rpmsg_info, ptr %62, i32 0, i32 9, i32 %68, i32 1
  %71 = call ptr @memcpy(ptr %msg8.i.i66, ptr %msg.0.i59, i32 33)
  %rpmsg_wq.i.i67 = getelementptr inbounds %struct.rpmsg_info, ptr %62, i32 0, i32 8
  %72 = ptrtoint ptr %rpmsg_wq.i.i67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rpmsg_wq.i.i67, align 4
  %work.i.i68 = getelementptr %struct.rpmsg_info, ptr %62, i32 0, i32 9, i32 %68, i32 2
  %call.i.i.i69 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %73, ptr noundef %work.i.i68) #8
  %74 = ptrtoint ptr %work_write_index.i.i62 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %work_write_index.i.i62, align 4
  %inc.i.i70 = add i32 %75, 1
  %rem.i.i71 = srem i32 %inc.i.i70, 48
  store i32 %rem.i.i71, ptr %work_write_index.i.i62, align 4
  br label %imx_rpmsg_async_issue_pending.exit

if.else.i.i75:                                    ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %stream.i, align 4
  %arrayidx14.i.i73 = getelementptr %struct.rpmsg_info, ptr %62, i32 0, i32 12, i32 %77
  %78 = ptrtoint ptr %arrayidx14.i.i73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx14.i.i73, align 4
  %inc15.i.i74 = add i32 %79, 1
  store i32 %inc15.i.i74, ptr %arrayidx14.i.i73, align 4
  br label %imx_rpmsg_async_issue_pending.exit

imx_rpmsg_async_issue_pending.exit:               ; preds = %if.else.i.i75, %if.then.i.i72
  %ret.0.i.i76 = phi i32 [ 0, %if.then.i.i72 ], [ -32, %if.else.i.i75 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock.i.i60, i32 noundef %call2.i.i61) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %force_lpa = getelementptr inbounds %struct.fsl_rpmsg, ptr %11, i32 0, i32 8
  %80 = ptrtoint ptr %force_lpa to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %force_lpa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool5.not = icmp eq i32 %81, 0
  br i1 %tobool5.not, label %sw.bb4.sw.bb8_crit_edge, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4.sw.bb8_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb4.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge
  %dev.i77 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %82 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i77, align 4
  %driver_data.i.i78 = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %driver_data.i.i78 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %driver_data.i.i78, align 4
  %stream.i79 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %86 = ptrtoint ptr %stream.i79 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %stream.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i80 = icmp eq i32 %87, 0
  br i1 %cmp.i80, label %if.then.i83, label %if.else.i86

if.then.i83:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i81 = getelementptr %struct.rpmsg_info, ptr %85, i32 0, i32 5, i32 3
  %cmd.i82 = getelementptr %struct.rpmsg_info, ptr %85, i32 0, i32 5, i32 3, i32 0, i32 0, i32 4
  %88 = ptrtoint ptr %cmd.i82 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 3, ptr %cmd.i82, align 1
  br label %if.end.i93

if.else.i86:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i84 = getelementptr %struct.rpmsg_info, ptr %85, i32 0, i32 5, i32 13
  %cmd6.i85 = getelementptr %struct.rpmsg_info, ptr %85, i32 0, i32 5, i32 13, i32 0, i32 0, i32 4
  %89 = ptrtoint ptr %cmd6.i85 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 13, ptr %cmd6.i85, align 1
  br label %if.end.i93

if.end.i93:                                       ; preds = %if.else.i86, %if.then.i83
  %msg.0.i87 = phi ptr [ %arrayidx.i81, %if.then.i83 ], [ %arrayidx3.i84, %if.else.i86 ]
  %wq_lock.i.i88 = getelementptr inbounds %struct.rpmsg_info, ptr %85, i32 0, i32 18
  %call2.i.i89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock.i.i88) #8
  %work_write_index.i.i90 = getelementptr inbounds %struct.rpmsg_info, ptr %85, i32 0, i32 10
  %90 = ptrtoint ptr %work_write_index.i.i90 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %work_write_index.i.i90, align 4
  %work_read_index.i.i91 = getelementptr inbounds %struct.rpmsg_info, ptr %85, i32 0, i32 11
  %92 = ptrtoint ptr %work_read_index.i.i91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %work_read_index.i.i91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp5.not.i.i92 = icmp eq i32 %91, %93
  br i1 %cmp5.not.i.i92, label %if.else.i.i103, label %if.then.i.i100

if.then.i.i100:                                   ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #10
  %msg8.i.i94 = getelementptr %struct.rpmsg_info, ptr %85, i32 0, i32 9, i32 %91, i32 1
  %94 = call ptr @memcpy(ptr %msg8.i.i94, ptr %msg.0.i87, i32 33)
  %rpmsg_wq.i.i95 = getelementptr inbounds %struct.rpmsg_info, ptr %85, i32 0, i32 8
  %95 = ptrtoint ptr %rpmsg_wq.i.i95 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rpmsg_wq.i.i95, align 4
  %work.i.i96 = getelementptr %struct.rpmsg_info, ptr %85, i32 0, i32 9, i32 %91, i32 2
  %call.i.i.i97 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %96, ptr noundef %work.i.i96) #8
  %97 = ptrtoint ptr %work_write_index.i.i90 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %work_write_index.i.i90, align 4
  %inc.i.i98 = add i32 %98, 1
  %rem.i.i99 = srem i32 %inc.i.i98, 48
  store i32 %rem.i.i99, ptr %work_write_index.i.i90, align 4
  br label %imx_rpmsg_restart.exit

if.else.i.i103:                                   ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %stream.i79 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %stream.i79, align 4
  %arrayidx14.i.i101 = getelementptr %struct.rpmsg_info, ptr %85, i32 0, i32 12, i32 %100
  %101 = ptrtoint ptr %arrayidx14.i.i101 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx14.i.i101, align 4
  %inc15.i.i102 = add i32 %102, 1
  store i32 %inc15.i.i102, ptr %arrayidx14.i.i101, align 4
  br label %imx_rpmsg_restart.exit

imx_rpmsg_restart.exit:                           ; preds = %if.else.i.i103, %if.then.i.i100
  %ret.0.i.i104 = phi i32 [ 0, %if.then.i.i100 ], [ -32, %if.else.i.i103 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock.i.i88, i32 noundef %call2.i.i89) #8
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %force_lpa11 = getelementptr inbounds %struct.fsl_rpmsg, ptr %11, i32 0, i32 8
  %103 = ptrtoint ptr %force_lpa11 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %force_lpa11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool12.not = icmp eq i32 %104, 0
  br i1 %tobool12.not, label %if.then13, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %sw.bb10
  %info = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 23
  %105 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %info, align 8
  %and = and i32 %106, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then13
  %dev.i105 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %107 = ptrtoint ptr %dev.i105 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i105, align 4
  %driver_data.i.i106 = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 8
  %109 = ptrtoint ptr %driver_data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %driver_data.i.i106, align 4
  %stream.i107 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %111 = ptrtoint ptr %stream.i107 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %stream.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp.i108 = icmp eq i32 %112, 0
  br i1 %cmp.i108, label %if.then.i111, label %if.else.i114

if.then.i111:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i109 = getelementptr %struct.rpmsg_info, ptr %110, i32 0, i32 5, i32 2
  %cmd.i110 = getelementptr %struct.rpmsg_info, ptr %110, i32 0, i32 5, i32 2, i32 0, i32 0, i32 4
  %113 = ptrtoint ptr %cmd.i110 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 2, ptr %cmd.i110, align 1
  br label %if.end.i121

if.else.i114:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i112 = getelementptr %struct.rpmsg_info, ptr %110, i32 0, i32 5, i32 12
  %cmd6.i113 = getelementptr %struct.rpmsg_info, ptr %110, i32 0, i32 5, i32 12, i32 0, i32 0, i32 4
  %114 = ptrtoint ptr %cmd6.i113 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 12, ptr %cmd6.i113, align 1
  br label %if.end.i121

if.end.i121:                                      ; preds = %if.else.i114, %if.then.i111
  %msg.0.i115 = phi ptr [ %arrayidx.i109, %if.then.i111 ], [ %arrayidx3.i112, %if.else.i114 ]
  %wq_lock.i.i116 = getelementptr inbounds %struct.rpmsg_info, ptr %110, i32 0, i32 18
  %call2.i.i117 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock.i.i116) #8
  %work_write_index.i.i118 = getelementptr inbounds %struct.rpmsg_info, ptr %110, i32 0, i32 10
  %115 = ptrtoint ptr %work_write_index.i.i118 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %work_write_index.i.i118, align 4
  %work_read_index.i.i119 = getelementptr inbounds %struct.rpmsg_info, ptr %110, i32 0, i32 11
  %117 = ptrtoint ptr %work_read_index.i.i119 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %work_read_index.i.i119, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp5.not.i.i120 = icmp eq i32 %116, %118
  br i1 %cmp5.not.i.i120, label %if.else.i.i131, label %if.then.i.i128

if.then.i.i128:                                   ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #10
  %msg8.i.i122 = getelementptr %struct.rpmsg_info, ptr %110, i32 0, i32 9, i32 %116, i32 1
  %119 = call ptr @memcpy(ptr %msg8.i.i122, ptr %msg.0.i115, i32 33)
  %rpmsg_wq.i.i123 = getelementptr inbounds %struct.rpmsg_info, ptr %110, i32 0, i32 8
  %120 = ptrtoint ptr %rpmsg_wq.i.i123 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rpmsg_wq.i.i123, align 4
  %work.i.i124 = getelementptr %struct.rpmsg_info, ptr %110, i32 0, i32 9, i32 %116, i32 2
  %call.i.i.i125 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %121, ptr noundef %work.i.i124) #8
  %122 = ptrtoint ptr %work_write_index.i.i118 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %work_write_index.i.i118, align 4
  %inc.i.i126 = add i32 %123, 1
  %rem.i.i127 = srem i32 %inc.i.i126, 48
  store i32 %rem.i.i127, ptr %work_write_index.i.i118, align 4
  br label %imx_rpmsg_pause.exit

if.else.i.i131:                                   ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %stream.i107 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %stream.i107, align 4
  %arrayidx14.i.i129 = getelementptr %struct.rpmsg_info, ptr %110, i32 0, i32 12, i32 %125
  %126 = ptrtoint ptr %arrayidx14.i.i129 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx14.i.i129, align 4
  %inc15.i.i130 = add i32 %127, 1
  store i32 %inc15.i.i130, ptr %arrayidx14.i.i129, align 4
  br label %imx_rpmsg_pause.exit

imx_rpmsg_pause.exit:                             ; preds = %if.else.i.i131, %if.then.i.i128
  %ret.0.i.i132 = phi i32 [ 0, %if.then.i.i128 ], [ -32, %if.else.i.i131 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock.i.i116, i32 noundef %call2.i.i117) #8
  br label %cleanup

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call fastcc i32 @imx_rpmsg_terminate_all(ptr noundef %component, ptr noundef %substream)
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  %dev.i133 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %128 = ptrtoint ptr %dev.i133 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i133, align 4
  %driver_data.i.i134 = getelementptr inbounds %struct.device, ptr %129, i32 0, i32 8
  %130 = ptrtoint ptr %driver_data.i.i134 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %driver_data.i.i134, align 4
  %stream.i135 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %132 = ptrtoint ptr %stream.i135 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %stream.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp.i136 = icmp eq i32 %133, 0
  br i1 %cmp.i136, label %if.then.i139, label %if.else.i142

if.then.i139:                                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i137 = getelementptr %struct.rpmsg_info, ptr %131, i32 0, i32 5, i32 2
  %cmd.i138 = getelementptr %struct.rpmsg_info, ptr %131, i32 0, i32 5, i32 2, i32 0, i32 0, i32 4
  %134 = ptrtoint ptr %cmd.i138 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 2, ptr %cmd.i138, align 1
  br label %if.end.i149

if.else.i142:                                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i140 = getelementptr %struct.rpmsg_info, ptr %131, i32 0, i32 5, i32 12
  %cmd6.i141 = getelementptr %struct.rpmsg_info, ptr %131, i32 0, i32 5, i32 12, i32 0, i32 0, i32 4
  %135 = ptrtoint ptr %cmd6.i141 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 12, ptr %cmd6.i141, align 1
  br label %if.end.i149

if.end.i149:                                      ; preds = %if.else.i142, %if.then.i139
  %msg.0.i143 = phi ptr [ %arrayidx.i137, %if.then.i139 ], [ %arrayidx3.i140, %if.else.i142 ]
  %wq_lock.i.i144 = getelementptr inbounds %struct.rpmsg_info, ptr %131, i32 0, i32 18
  %call2.i.i145 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock.i.i144) #8
  %work_write_index.i.i146 = getelementptr inbounds %struct.rpmsg_info, ptr %131, i32 0, i32 10
  %136 = ptrtoint ptr %work_write_index.i.i146 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %work_write_index.i.i146, align 4
  %work_read_index.i.i147 = getelementptr inbounds %struct.rpmsg_info, ptr %131, i32 0, i32 11
  %138 = ptrtoint ptr %work_read_index.i.i147 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %work_read_index.i.i147, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %139)
  %cmp5.not.i.i148 = icmp eq i32 %137, %139
  br i1 %cmp5.not.i.i148, label %if.else.i.i159, label %if.then.i.i156

if.then.i.i156:                                   ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #10
  %msg8.i.i150 = getelementptr %struct.rpmsg_info, ptr %131, i32 0, i32 9, i32 %137, i32 1
  %140 = call ptr @memcpy(ptr %msg8.i.i150, ptr %msg.0.i143, i32 33)
  %rpmsg_wq.i.i151 = getelementptr inbounds %struct.rpmsg_info, ptr %131, i32 0, i32 8
  %141 = ptrtoint ptr %rpmsg_wq.i.i151 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rpmsg_wq.i.i151, align 4
  %work.i.i152 = getelementptr %struct.rpmsg_info, ptr %131, i32 0, i32 9, i32 %137, i32 2
  %call.i.i.i153 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %142, ptr noundef %work.i.i152) #8
  %143 = ptrtoint ptr %work_write_index.i.i146 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %work_write_index.i.i146, align 4
  %inc.i.i154 = add i32 %144, 1
  %rem.i.i155 = srem i32 %inc.i.i154, 48
  store i32 %rem.i.i155, ptr %work_write_index.i.i146, align 4
  br label %imx_rpmsg_pause.exit161

if.else.i.i159:                                   ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %stream.i135 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %stream.i135, align 4
  %arrayidx14.i.i157 = getelementptr %struct.rpmsg_info, ptr %131, i32 0, i32 12, i32 %146
  %147 = ptrtoint ptr %arrayidx14.i.i157 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx14.i.i157, align 4
  %inc15.i.i158 = add i32 %148, 1
  store i32 %inc15.i.i158, ptr %arrayidx14.i.i157, align 4
  br label %imx_rpmsg_pause.exit161

imx_rpmsg_pause.exit161:                          ; preds = %if.else.i.i159, %if.then.i.i156
  %ret.0.i.i160 = phi i32 [ 0, %if.then.i.i156 ], [ -32, %if.else.i.i159 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock.i.i144, i32 noundef %call2.i.i145) #8
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call fastcc i32 @imx_rpmsg_terminate_all(ptr noundef %component, ptr noundef %substream)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb22, %imx_rpmsg_pause.exit161, %if.else, %imx_rpmsg_pause.exit, %sw.bb10.cleanup_crit_edge, %imx_rpmsg_restart.exit, %sw.bb4.cleanup_crit_edge, %imx_rpmsg_async_issue_pending.exit, %imx_rpmsg_prepare_and_submit.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %imx_rpmsg_prepare_and_submit.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call23, %sw.bb22 ], [ %ret.0.i.i160, %imx_rpmsg_pause.exit161 ], [ 0, %sw.bb10.cleanup_crit_edge ], [ %ret.0.i.i132, %imx_rpmsg_pause.exit ], [ %call17, %if.else ], [ %ret.0.i.i104, %imx_rpmsg_restart.exit ], [ 0, %sw.bb4.cleanup_crit_edge ], [ %ret.0.i.i76, %imx_rpmsg_async_issue_pending.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx_rpmsg_pcm_pointer(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %. = select i1 %cmp, i32 24, i32 25
  %buffer_tail4 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 %., i32 1, i32 1, i32 7
  %6 = ptrtoint ptr %buffer_tail4 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %buffer_tail4, align 1
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %13, %11
  %div1.i.i = lshr i32 %mul.i.i, 3
  %mul = shl i32 %7, 3
  %mul.i = mul i32 %mul, %div1.i.i
  %div.i = udiv i32 %mul.i, %13
  ret i32 %div.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rpmsg_pcm_ack(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 4
  %driver_data.i129 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i129 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i129, align 4
  %period_size4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %period_size4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %period_size4, align 4
  %force_lpa = getelementptr inbounds %struct.fsl_rpmsg, ptr %11, i32 0, i32 8
  %18 = ptrtoint ptr %force_lpa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %force_lpa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %20 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7 = getelementptr %struct.rpmsg_info, ptr %15, i32 0, i32 5, i32 24
  %cmd = getelementptr %struct.rpmsg_info, ptr %15, i32 0, i32 5, i32 24, i32 0, i32 0, i32 4
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %cmd, align 1
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9 = getelementptr %struct.rpmsg_info, ptr %15, i32 0, i32 5, i32 25
  %cmd12 = getelementptr %struct.rpmsg_info, ptr %15, i32 0, i32 5, i32 25, i32 0, i32 0, i32 4
  %23 = ptrtoint ptr %cmd12 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %cmd12, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then5
  %msg.0 = phi ptr [ %arrayidx7, %if.then5 ], [ %arrayidx9, %if.else ]
  %type = getelementptr inbounds %struct.rpmsg_head, ptr %msg.0, i32 0, i32 3
  %24 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %type, align 1
  %control = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 38
  %25 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %control, align 8
  %appl_ptr = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %appl_ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %appl_ptr, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %29 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %30, %28
  %div1.i = lshr i32 %mul.i, 3
  %31 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %runtime1, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 18
  %33 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 21
  %35 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %36, %34
  %div1.i.i = lshr i32 %mul.i.i, 3
  %rem = urem i32 %div1.i, %div1.i.i
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 16
  %37 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %period_size.i, align 4
  %mul.i.i132 = mul i32 %38, %36
  %div1.i.i133 = lshr i32 %mul.i.i132, 3
  %div = udiv i32 %rem, %div1.i.i133
  %buffer_tail20 = getelementptr inbounds %struct.rpmsg_s_msg, ptr %msg.0, i32 0, i32 1, i32 7
  %39 = ptrtoint ptr %buffer_tail20 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %buffer_tail20, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %40)
  %cmp21.not = icmp eq i32 %div, %40
  br i1 %cmp21.not, label %if.end13.cleanup_crit_edge, label %if.then22

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.end13
  %sub = sub i32 %div, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp26 = icmp slt i32 %sub, 0
  br i1 %cmp26, label %if.then27, label %if.then22.if.end28_crit_edge

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 17
  %41 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %periods, align 8
  %add = add i32 %42, %sub
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then22.if.end28_crit_edge
  %written_num.0 = phi i32 [ %add, %if.then27 ], [ %sub, %if.then22.if.end28_crit_edge ]
  %43 = ptrtoint ptr %buffer_tail20 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %div, ptr %buffer_tail20, align 1
  %44 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stream, align 4
  %arrayidx35 = getelementptr %struct.rpmsg_info, ptr %15, i32 0, i32 17, i32 %45
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx35) #8
  %46 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stream, align 4
  %arrayidx41 = getelementptr %struct.rpmsg_info, ptr %15, i32 0, i32 6, i32 %47
  %48 = call ptr @memcpy(ptr %arrayidx41, ptr %msg.0, i32 33)
  %49 = load i32, ptr %stream, align 4
  %arrayidx43 = getelementptr %struct.rpmsg_info, ptr %15, i32 0, i32 7, i32 %49
  %50 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %arrayidx43, align 1
  %51 = load i32, ptr %stream, align 4
  %arrayidx46 = getelementptr %struct.rpmsg_info, ptr %15, i32 0, i32 17, i32 %51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx46, i32 noundef %call37) #8
  %52 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp48 = icmp eq i32 %53, 0
  %buffer_size.i134 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %54 = ptrtoint ptr %buffer_size.i134 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buffer_size.i134, align 4
  %status.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 37
  %56 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %status.i.i, align 4
  %hw_ptr.i.i = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %hw_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hw_ptr.i.i, align 4
  br i1 %cmp48, label %if.then50, label %if.else52

if.then50:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %59, %55
  %60 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %control, align 8
  %appl_ptr.i.i = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %appl_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %appl_ptr.i.i, align 4
  %sub.i.i135 = sub i32 %add.i.i, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i135)
  %cmp.i.i = icmp slt i32 %sub.i.i135, 0
  %boundary.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 33
  %64 = ptrtoint ptr %boundary.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %boundary.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i135, i32 %65)
  %cmp3.not.i.i = icmp ult i32 %sub.i.i135, %65
  %sub6.i.i = select i1 %cmp3.not.i.i, i32 0, i32 %65
  %66 = sub i32 0, %sub6.i.i
  %avail.0.p.i.i = select i1 %cmp.i.i, i32 %65, i32 %66
  %67 = add i32 %sub.i.i135, %avail.0.p.i.i
  br label %if.end54

if.else52:                                        ; preds = %if.end28
  %68 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %control, align 8
  %appl_ptr.i.i140 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %appl_ptr.i.i140 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %appl_ptr.i.i140, align 4
  %sub.i.i141 = sub i32 %59, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i141)
  %cmp.i.i142 = icmp slt i32 %sub.i.i141, 0
  br i1 %cmp.i.i142, label %if.then.i.i, label %if.else52.if.end54_crit_edge

if.else52.if.end54_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then.i.i:                                      ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  %boundary.i.i143 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 33
  %72 = ptrtoint ptr %boundary.i.i143 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %boundary.i.i143, align 8
  %add.i.i144 = add i32 %73, %sub.i.i141
  br label %if.end54

if.end54:                                         ; preds = %if.then.i.i, %if.else52.if.end54_crit_edge, %if.then50
  %avail.0.i.i.sink = phi i32 [ %67, %if.then50 ], [ %add.i.i144, %if.then.i.i ], [ %sub.i.i141, %if.else52.if.end54_crit_edge ]
  %arrayidx56 = getelementptr %struct.rpmsg_info, ptr %15, i32 0, i32 20, i32 %53
  %mul = mul i32 %written_num.0, %17
  %74 = add i32 %avail.0.i.i.sink, %mul
  %sub58 = sub i32 %55, %74
  call void @__sanitizer_cov_trace_cmp4(i32 %sub58, i32 %17)
  %cmp59.not = icmp ugt i32 %sub58, %17
  br i1 %cmp59.not, label %if.else63, label %if.then61

if.then61:                                        ; preds = %if.end54
  %wq_lock.i = getelementptr inbounds %struct.rpmsg_info, ptr %15, i32 0, i32 18
  %call2.i146 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock.i) #8
  %work_write_index.i = getelementptr inbounds %struct.rpmsg_info, ptr %15, i32 0, i32 10
  %75 = ptrtoint ptr %work_write_index.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %work_write_index.i, align 4
  %work_read_index.i = getelementptr inbounds %struct.rpmsg_info, ptr %15, i32 0, i32 11
  %77 = ptrtoint ptr %work_read_index.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %work_read_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp5.not.i = icmp eq i32 %76, %78
  br i1 %cmp5.not.i, label %if.else.i148, label %if.then.i147

if.then.i147:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  %msg8.i = getelementptr %struct.rpmsg_info, ptr %15, i32 0, i32 9, i32 %76, i32 1
  %79 = call ptr @memcpy(ptr %msg8.i, ptr %msg.0, i32 33)
  %rpmsg_wq.i = getelementptr inbounds %struct.rpmsg_info, ptr %15, i32 0, i32 8
  %80 = ptrtoint ptr %rpmsg_wq.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rpmsg_wq.i, align 4
  %work.i = getelementptr %struct.rpmsg_info, ptr %15, i32 0, i32 9, i32 %76, i32 2
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %81, ptr noundef %work.i) #8
  %82 = ptrtoint ptr %work_write_index.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %work_write_index.i, align 4
  %inc.i = add i32 %83, 1
  %rem.i = srem i32 %inc.i, 48
  store i32 %rem.i, ptr %work_write_index.i, align 4
  br label %imx_rpmsg_insert_workqueue.exit

if.else.i148:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %stream, align 4
  %arrayidx14.i = getelementptr %struct.rpmsg_info, ptr %15, i32 0, i32 12, i32 %85
  %86 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx14.i, align 4
  %inc15.i = add i32 %87, 1
  store i32 %inc15.i, ptr %arrayidx14.i, align 4
  br label %imx_rpmsg_insert_workqueue.exit

imx_rpmsg_insert_workqueue.exit:                  ; preds = %if.else.i148, %if.then.i147
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock.i, i32 noundef %call2.i146) #8
  br label %cleanup

if.else63:                                        ; preds = %if.end54
  %88 = ptrtoint ptr %force_lpa to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %force_lpa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool65.not = icmp eq i32 %89, 0
  br i1 %tobool65.not, label %if.else63.cleanup_crit_edge, label %land.lhs.true

if.else63.cleanup_crit_edge:                      ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else63
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %arrayidx56, i32 0, i32 1
  %90 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %91, null
  br i1 %tobool.not.i.i.not, label %if.then68, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %period_size4 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %period_size4, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %94 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rate, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %96 = load volatile i32, ptr @jiffies, align 128
  %mul70 = mul i32 %93, 1000
  %div71 = udiv i32 %mul70, %95
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div71) #8
  %add73 = add i32 %call2.i, %96
  %call74 = tail call i32 @mod_timer(ptr noundef %arrayidx56, i32 noundef %add73) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %land.lhs.true.cleanup_crit_edge, %if.else63.cleanup_crit_edge, %imx_rpmsg_insert_workqueue.exit, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_rpmsg_timer_callback(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr inbounds %struct.stream_timer, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 4
  %info2 = getelementptr inbounds %struct.stream_timer, ptr %t, i32 0, i32 1
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info2, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 24
  %cmd = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 24, i32 0, i32 0, i32 4
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %cmd, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 25
  %cmd8 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 25, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %cmd8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %cmd8, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %msg.0 = phi ptr [ %arrayidx, %if.then ], [ %arrayidx5, %if.else ]
  %wq_lock.i = getelementptr inbounds %struct.rpmsg_info, ptr %3, i32 0, i32 18
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock.i) #8
  %work_write_index.i = getelementptr inbounds %struct.rpmsg_info, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %work_write_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %work_write_index.i, align 4
  %work_read_index.i = getelementptr inbounds %struct.rpmsg_info, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %work_read_index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %work_read_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp5.not.i = icmp eq i32 %9, %11
  br i1 %cmp5.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %msg8.i = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 9, i32 %9, i32 1
  %12 = call ptr @memcpy(ptr %msg8.i, ptr %msg.0, i32 33)
  %rpmsg_wq.i = getelementptr inbounds %struct.rpmsg_info, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %rpmsg_wq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rpmsg_wq.i, align 4
  %work.i = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 9, i32 %9, i32 2
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %work.i) #8
  %15 = ptrtoint ptr %work_write_index.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %work_write_index.i, align 4
  %inc.i = add i32 %16, 1
  %rem.i = srem i32 %inc.i, 48
  store i32 %rem.i, ptr %work_write_index.i, align 4
  br label %imx_rpmsg_insert_workqueue.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream, align 4
  %arrayidx14.i = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 12, i32 %18
  %19 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx14.i, align 4
  %inc15.i = add i32 %20, 1
  store i32 %inc15.i, ptr %arrayidx14.i, align 4
  br label %imx_rpmsg_insert_workqueue.exit

imx_rpmsg_insert_workqueue.exit:                  ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock.i, i32 noundef %call2.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_rpmsg_terminate_all(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 4
  %cmd2 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 4, i32 0, i32 0, i32 4
  %6 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %cmd2, align 1
  %buffer_tail = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 24, i32 0, i32 1, i32 7
  %7 = ptrtoint ptr %buffer_tail to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %buffer_tail, align 1
  %buffer_tail9 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 24, i32 1, i32 1, i32 7
  %8 = ptrtoint ptr %buffer_tail9 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %buffer_tail9, align 1
  %buffer_offset = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 22, i32 1, i32 1, i32 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 14
  %cmd18 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 14, i32 0, i32 0, i32 4
  %9 = ptrtoint ptr %cmd18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 14, ptr %cmd18, align 1
  %buffer_tail23 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 25, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %buffer_tail23 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %buffer_tail23, align 1
  %buffer_tail28 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 25, i32 1, i32 1, i32 7
  %11 = ptrtoint ptr %buffer_tail28 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %buffer_tail28, align 1
  %buffer_offset33 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 5, i32 23, i32 1, i32 1, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %buffer_offset33.sink = phi ptr [ %buffer_offset33, %if.else ], [ %buffer_offset, %if.then ]
  %msg.0 = phi ptr [ %arrayidx15, %if.else ], [ %arrayidx, %if.then ]
  %12 = ptrtoint ptr %buffer_offset33.sink to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %buffer_offset33.sink, align 1
  %13 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stream, align 4
  %arrayidx35 = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 20, i32 %14
  %call36 = tail call i32 @del_timer(ptr noundef %arrayidx35) #8
  %wq_lock.i = getelementptr inbounds %struct.rpmsg_info, ptr %3, i32 0, i32 18
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock.i) #8
  %work_write_index.i = getelementptr inbounds %struct.rpmsg_info, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %work_write_index.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %work_write_index.i, align 4
  %work_read_index.i = getelementptr inbounds %struct.rpmsg_info, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %work_read_index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %work_read_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp5.not.i = icmp eq i32 %16, %18
  br i1 %cmp5.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %msg8.i = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 9, i32 %16, i32 1
  %19 = call ptr @memcpy(ptr %msg8.i, ptr %msg.0, i32 33)
  %rpmsg_wq.i = getelementptr inbounds %struct.rpmsg_info, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %rpmsg_wq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rpmsg_wq.i, align 4
  %work.i = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 9, i32 %16, i32 2
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %work.i) #8
  %22 = ptrtoint ptr %work_write_index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %work_write_index.i, align 4
  %inc.i = add i32 %23, 1
  %rem.i = srem i32 %inc.i, 48
  store i32 %rem.i, ptr %work_write_index.i, align 4
  br label %imx_rpmsg_insert_workqueue.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream, align 4
  %arrayidx14.i = getelementptr %struct.rpmsg_info, ptr %3, i32 0, i32 12, i32 %25
  %26 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx14.i, align 4
  %inc15.i = add i32 %27, 1
  store i32 %inc15.i, ptr %arrayidx14.i, align 4
  br label %imx_rpmsg_insert_workqueue.exit

imx_rpmsg_insert_workqueue.exit:                  ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ 0, %if.then.i ], [ -32, %if.else.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock.i, i32 noundef %call2.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_rpmsg_pcm_dma_complete(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_pcm_period_elapsed(ptr noundef %arg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rpmsg_pcm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.rpmsg_info, ptr %1, i32 0, i32 5, i32 8
  %arrayidx2 = getelementptr %struct.rpmsg_info, ptr %1, i32 0, i32 5, i32 18
  %cmd = getelementptr %struct.rpmsg_info, ptr %1, i32 0, i32 5, i32 8, i32 0, i32 0, i32 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %cmd, align 1
  %send_message = getelementptr inbounds %struct.rpmsg_info, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %send_message to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %send_message, align 4
  %call3 = tail call i32 %4(ptr noundef %arrayidx, ptr noundef %1) #8
  %cmd6 = getelementptr %struct.rpmsg_info, ptr %1, i32 0, i32 5, i32 18, i32 0, i32 0, i32 4
  %5 = ptrtoint ptr %cmd6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 18, ptr %cmd6, align 1
  %6 = ptrtoint ptr %send_message to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_message, align 4
  %call8 = tail call i32 %7(ptr noundef %arrayidx2, ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rpmsg_pcm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.rpmsg_info, ptr %1, i32 0, i32 5, i32 9
  %arrayidx2 = getelementptr %struct.rpmsg_info, ptr %1, i32 0, i32 5, i32 19
  %cmd = getelementptr %struct.rpmsg_info, ptr %1, i32 0, i32 5, i32 9, i32 0, i32 0, i32 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 9, ptr %cmd, align 1
  %send_message = getelementptr inbounds %struct.rpmsg_info, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %send_message to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %send_message, align 4
  %call3 = tail call i32 %4(ptr noundef %arrayidx, ptr noundef %1) #8
  %cmd6 = getelementptr %struct.rpmsg_info, ptr %1, i32 0, i32 5, i32 19, i32 0, i32 0, i32 4
  %5 = ptrtoint ptr %cmd6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 19, ptr %cmd6, align 1
  %6 = ptrtoint ptr %send_message to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_message, align 4
  %call8 = tail call i32 %7(ptr noundef %arrayidx2, ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rpmsg_pcm_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pm_qos_req = getelementptr inbounds %struct.rpmsg_info, ptr %1, i32 0, i32 3
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rpmsg_pcm_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pm_qos_req = getelementptr inbounds %struct.rpmsg_info, ptr %1, i32 0, i32 3
  tail call void @cpu_latency_qos_add_request(ptr noundef %pm_qos_req, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !69, !71, !72, !74, !75, !76, !77, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_imx_pcm_rpmsg__244_828_imx_pcm_rpmsg_driver_init6, !1, !"__initcall__kmod_imx_pcm_rpmsg__244_828_imx_pcm_rpmsg_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 828, i32 1}
!2 = !{ptr @__exitcall_imx_pcm_rpmsg_driver_exit, !1, !"__exitcall_imx_pcm_rpmsg_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description245, !4, !"__UNIQUE_ID_description245", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 830, i32 1}
!5 = !{ptr @__UNIQUE_ID_author246, !6, !"__UNIQUE_ID_author246", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 831, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias247, !8, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!8 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 832, i32 1}
!9 = !{ptr @__UNIQUE_ID_file248, !10, !"__UNIQUE_ID_file248", i1 false, i1 false}
!10 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 833, i32 1}
!11 = !{ptr @__UNIQUE_ID_license249, !10, !"__UNIQUE_ID_license249", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 824, i32 11}
!14 = !{ptr @imx_pcm_rpmsg_driver, !15, !"imx_pcm_rpmsg_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 820, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 687, i32 19}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 692, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @imx_rpmsg_pcm_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @imx_rpmsg_pcm_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @imx_rpmsg_pcm_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 701, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @imx_rpmsg_pcm_probe.__key.8, !30, !"__key", i1 false, i1 false}
!30 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 715, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @imx_rpmsg_pcm_probe.__key.10, !33, !"__key", i1 false, i1 false}
!33 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 716, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @imx_rpmsg_pcm_probe.__key.12, !36, !"__key", i1 false, i1 false}
!36 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 717, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @imx_rpmsg_pcm_probe.__key.14, !39, !"__key", i1 false, i1 false}
!39 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 718, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 732, i32 30}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 43, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @imx_rpmsg_pcm_send_message._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx_rpmsg_pcm_send_message._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 48, i32 2}
!50 = !{ptr @imx_rpmsg_pcm_send_message.__UNIQUE_ID_ddebug242, !49, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 56, i32 3}
!53 = !{ptr @imx_rpmsg_pcm_send_message._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @imx_rpmsg_pcm_send_message._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 71, i32 3}
!57 = !{ptr @imx_rpmsg_pcm_send_message._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @imx_rpmsg_pcm_send_message._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 99, i32 2}
!61 = !{ptr @imx_rpmsg_pcm_send_message.__UNIQUE_ID_ddebug243, !60, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!62 = !{ptr @init_completion.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../include/linux/completion.h", i32 87, i32 2}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @imx_rpmsg_soc_component, !66, !"imx_rpmsg_soc_component", i1 false, i1 false}
!66 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 607, i32 46}
!67 = !{ptr @imx_rpmsg_pcm_hardware, !68, !"imx_rpmsg_pcm_hardware", i1 false, i1 false}
!68 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 19, i32 32}
!69 = !{ptr @imx_rpmsg_pcm_open.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 274, i32 2}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 305, i32 3}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @imx_rpmsg_pcm_close._entry, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @imx_rpmsg_pcm_close._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @imx_rpmsg_pcm_pm_ops, !79, !"imx_rpmsg_pcm_pm_ops", i1 false, i1 false}
!79 = !{!"../sound/soc/fsl/imx-pcm-rpmsg.c", i32 812, i32 32}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2148343138, i64 2148343143, i64 2148343156, i64 2148343200, i64 2148343234, i64 2148343255}
!90 = !{i8 0, i8 2}
!91 = !{i32 0, i32 33}
