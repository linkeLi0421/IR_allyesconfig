; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/common/mtk-btcvsd.c_pt.bc'
source_filename = "../sound/soc/mediatek/common/mtk-btcvsd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.soc_bytes_ext = type { i32, %struct.snd_soc_dobj, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_btcvsd_snd = type { ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, ptr, ptr, [1080 x i8], [2048 x i8], i32 }
%struct.mtk_btcvsd_snd_stream = type { ptr, i32, i32, i32, i32, [180 x i8], i32, i32, i32, i32, i8, i32, i64, i64, %struct.mtk_btcvsd_snd_hw_info }
%struct.mtk_btcvsd_snd_hw_info = type { i32, [20 x i32], i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.mtk_btcvsd_snd_time_buffer_info = type { i64, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_mtk_btcvsd__246_1416_mtk_btcvsd_snd_driver_init6 = internal global ptr @mtk_btcvsd_snd_driver_init, section ".initcall6.init", align 4
@mtk_btcvsd_snd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_btcvsd_snd_probe, ptr @mtk_btcvsd_snd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_btcvsd_snd_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_btcvsd_snd_driver_exit = internal global ptr @mtk_btcvsd_snd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description247 = internal constant [61 x i8] c"mtk_btcvsd.description=Mediatek ALSA BT SCO CVSD/MSBC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [65 x i8] c"mtk_btcvsd.author=KaiChieh Chuang <kaichieh.chuang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [53 x i8] c"mtk_btcvsd.file=sound/soc/mediatek/common/mtk-btcvsd\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [26 x i8] c"mtk_btcvsd.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk-btcvsd-snd\00", [17 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mtk-btcvsd-snd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&btcvsd->tx_lock\00", [47 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&btcvsd->rx_lock\00", [47 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&btcvsd->tx_wait\00", [47 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&btcvsd->rx_wait\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BTCVSD_ISR_Handle\00", [46 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 1324, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"could not request_irq for BTCVSD_ISR_Handle\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_btcvsd_snd_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sound/soc/mediatek/common/mtk-btcvsd.c\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_probe._entry_ptr = internal global ptr @mtk_btcvsd_snd_probe._entry, section ".printk_index", align 4
@mtk_btcvsd_snd_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.11, i32 1333, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iomap bt_pkv_base fail\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_probe._entry_ptr.16 = internal global ptr @mtk_btcvsd_snd_probe._entry.14, section ".printk_index", align 4
@mtk_btcvsd_snd_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.11, i32 1339, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iomap bt_sram_bank2_base fail\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_probe._entry_ptr.19 = internal global ptr @mtk_btcvsd_snd_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,infracfg\00", [46 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str.11, i32 1348, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot find infra controller: %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_probe._entry_ptr.23 = internal global ptr @mtk_btcvsd_snd_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mediatek,offset\00", [16 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.10, ptr @.str.11, i32 1358, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(), get offset fail, ret %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_probe._entry_ptr.28 = internal global ptr @mtk_btcvsd_snd_probe._entry.25, section ".printk_index", align 4
@mtk_btcvsd_snd_platform = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @mtk_btcvsd_snd_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_pcm_btcvsd_open, ptr @mtk_pcm_btcvsd_close, ptr null, ptr @mtk_pcm_btcvsd_hw_params, ptr @mtk_pcm_btcvsd_hw_free, ptr @mtk_pcm_btcvsd_prepare, ptr @mtk_pcm_btcvsd_trigger, ptr null, ptr @mtk_pcm_btcvsd_pointer, ptr null, ptr @mtk_pcm_btcvsd_copy, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.11, i32 493, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(), in idle state: rx->state: %d, tx->state: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtk_btcvsd_snd_irq_handler\00", [37 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_irq_handler._entry_ptr = internal global ptr @mtk_btcvsd_snd_irq_handler._entry, section ".printk_index", align 4
@mtk_btcvsd_snd_irq_handler._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.11, i32 502, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s(), ((control >> 31) & 1) == 0, control 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_irq_handler._entry_ptr.33 = internal global ptr @mtk_btcvsd_snd_irq_handler._entry.31, section ".printk_index", align 4
@mtk_btcvsd_snd_irq_handler._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.11, i32 508, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(), invalid packet_type %u, exit\0A\00", [60 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_irq_handler._entry_ptr.36 = internal global ptr @mtk_btcvsd_snd_irq_handler._entry.34, section ".printk_index", align 4
@btsco_packet_info = internal constant { [6 x [4 x i32]], [32 x i8] } { [6 x [4 x i32]] [[4 x i32] [i32 30, i32 6, i32 3, i32 6], [4 x i32] [i32 60, i32 3, i32 3, i32 6], [4 x i32] [i32 90, i32 2, i32 3, i32 6], [4 x i32] [i32 120, i32 1, i32 2, i32 4], [4 x i32] [i32 10, i32 18, i32 3, i32 6], [4 x i32] [i32 20, i32 9, i32 3, i32 6]], [32 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_irq_handler._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.11, i32 534, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(), connsys_addr_tx == 0xdeadfeed\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_irq_handler._entry_ptr.39 = internal global ptr @mtk_btcvsd_snd_irq_handler._entry.37, section ".printk_index", align 4
@mtk_btcvsd_snd_irq_handler._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.11, i32 564, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(), rx->xrun 0!\0A\00", [45 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_irq_handler._entry_ptr.42 = internal global ptr @mtk_btcvsd_snd_irq_handler._entry.40, section ".printk_index", align 4
@mtk_btcvsd_snd_irq_handler._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.11, i32 580, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(), rx->xrun 1\0A\00", [46 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_irq_handler._entry_ptr.45 = internal global ptr @mtk_btcvsd_snd_irq_handler._entry.43, section ".printk_index", align 4
@mtk_btcvsd_snd_irq_handler._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.30, ptr @.str.11, i32 597, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(), tx->xrun 0\0A\00", [46 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_irq_handler._entry_ptr.48 = internal global ptr @mtk_btcvsd_snd_irq_handler._entry.46, section ".printk_index", align 4
@mtk_btcvsd_snd_irq_handler._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.30, ptr @.str.11, i32 612, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(), tx->xrun 1\0A\00", [46 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_irq_handler._entry_ptr.51 = internal global ptr @mtk_btcvsd_snd_irq_handler._entry.49, section ".printk_index", align 4
@mtk_btcvsd_read_from_bt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.11, i32 378, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(), connsys_addr_rx == 0xdeadfeed\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_btcvsd_read_from_bt\00", [40 x i8] zeroinitializer }, align 32
@mtk_btcvsd_read_from_bt._entry_ptr = internal global ptr @mtk_btcvsd_read_from_bt._entry, section ".printk_index", align 4
@mtk_btcvsd_write_to_bt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.54, ptr @.str.11, i32 429, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_btcvsd_write_to_bt\00", [41 x i8] zeroinitializer }, align 32
@mtk_btcvsd_write_to_bt._entry_ptr = internal global ptr @mtk_btcvsd_write_to_bt._entry, section ".printk_index", align 4
@mtk_btcvsd_write_to_bt._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.11, i32 472, ptr @.str.57, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(), new ap_addr_tx = 0x%lx, num_valid_addr %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_btcvsd_write_to_bt._entry_ptr.58 = internal global ptr @mtk_btcvsd_write_to_bt._entry.55, section ".printk_index", align 4
@table_msbc_silence = internal constant { [180 x i8], [44 x i8] } { [180 x i8] c"\018\AD\00\00\C5\00\00\00\00wm\B6\DD\DBm\B7v\DBm\DD\B6\DBwm\B6\DD\DBm\B7v\DBm\DD\B6\DBwm\B6\DD\DBm\B7v\DBm\DD\B6\DBwm\B6\DD\DBm\B7v\DBl\00\01\C8\AD\00\00\C5\00\00\00\00wm\B6\DD\DBm\B7v\DBm\DD\B6\DBwm\B6\DD\DBm\B7v\DBm\DD\B6\DBwm\B6\DD\DBm\B7v\DBm\DD\B6\DBwm\B6\DD\DBm\B7v\DBl\00\01\F8\AD\00\00\C5\00\00\00\00wm\B6\DD\DBm\B7v\DBm\DD\B6\DBwm\B6\DD\DBm\B7v\DBm\DD\B6\DBwm\B6\DD\DBm\B7v\DBm\DD\B6\DBwm\B6\DD\DBm\B7v\DBl\00", [44 x i8] zeroinitializer }, align 32
@btcvsd_tx_clean_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.11, i32 337, ptr @.str.57, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(), band %d, num_valid_addr %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"btcvsd_tx_clean_buffer\00", [41 x i8] zeroinitializer }, align 32
@btcvsd_tx_clean_buffer._entry_ptr = internal global ptr @btcvsd_tx_clean_buffer._entry, section ".printk_index", align 4
@btcvsd_tx_clean_buffer._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.11, i32 343, ptr @.str.57, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(), clean addr 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@btcvsd_tx_clean_buffer._entry_ptr.63 = internal global ptr @btcvsd_tx_clean_buffer._entry.61, section ".printk_index", align 4
@mtk_btcvsd_snd_set_state.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.64, ptr @.str.65, ptr @.str.11, ptr @.str.66, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mtk_btcvsd\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_btcvsd_snd_set_state\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s(), stream %d, state %d, tx->state %d, rx->state %d, irq_disabled %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @btcvsd_band_get, ptr @btcvsd_band_set, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @btcvsd_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @btcvsd_loopback_get, ptr @btcvsd_loopback_set, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @btcvsd_tx_mute_get, ptr @btcvsd_tx_mute_set, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @btcvsd_tx_irq_received_get, ptr null, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @btcvsd_tx_timeout_get, ptr null, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @btcvsd_rx_irq_received_get, ptr null, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @btcvsd_rx_timeout_get, ptr null, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 268435504, i32 0, ptr @snd_soc_bytes_info_ext, ptr null, ptr null, %union.anon.83 { ptr @snd_soc_bytes_tlv_callback }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 268435504, i32 0, ptr @snd_soc_bytes_info_ext, ptr null, ptr null, %union.anon.83 { ptr @snd_soc_bytes_tlv_callback }, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }], [112 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BTCVSD Band\00", [20 x i8] zeroinitializer }, align 32
@btcvsd_enum = internal constant { [1 x %struct.soc_enum], [32 x i8] } { [1 x %struct.soc_enum] [%struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 0, ptr @btsco_band_str, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BTCVSD Loopback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BTCVSD Tx Mute Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BTCVSD Tx Irq Received Switch\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"BTCVSD Tx Timeout Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BTCVSD Rx Irq Received Switch\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"BTCVSD Rx Timeout Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BTCVSD Rx Timestamp\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_bytes_ext, [48 x i8] } { %struct.soc_bytes_ext { i32 16, %struct.snd_soc_dobj zeroinitializer, ptr @btcvsd_rx_timestamp_get, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BTCVSD Tx Timestamp\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_bytes_ext, [48 x i8] } { %struct.soc_bytes_ext { i32 16, %struct.snd_soc_dobj zeroinitializer, ptr @btcvsd_tx_timestamp_get, ptr null }, [48 x i8] zeroinitializer }, align 32
@btcvsd_band_set.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.64, ptr @.str.77, ptr @.str.11, ptr @.str.78, i8 1, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"btcvsd_band_set\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(), band %d\0A\00", [17 x i8] zeroinitializer }, align 32
@btsco_band_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.79, ptr @.str.80], [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NB\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"WB\00", [29 x i8] zeroinitializer }, align 32
@btcvsd_rx_timestamp_get.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.64, ptr @.str.81, ptr @.str.11, ptr @.str.82, i8 1, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"btcvsd_rx_timestamp_get\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(), time_stamp_us %llu, data_count_equi_time %llu\00", [44 x i8] zeroinitializer }, align 32
@btcvsd_rx_timestamp_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.11, i32 1182, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(), copy_to_user fail\00", [40 x i8] zeroinitializer }, align 32
@btcvsd_rx_timestamp_get._entry_ptr = internal global ptr @btcvsd_rx_timestamp_get._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@btcvsd_tx_timestamp_get.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.64, ptr @.str.87, ptr @.str.11, ptr @.str.82, i8 1, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"btcvsd_tx_timestamp_get\00", [40 x i8] zeroinitializer }, align 32
@btcvsd_tx_timestamp_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.87, ptr @.str.11, i32 1232, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@btcvsd_tx_timestamp_get._entry_ptr = internal global ptr @btcvsd_tx_timestamp_get._entry, section ".printk_index", align 4
@mtk_pcm_btcvsd_open.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.64, ptr @.str.88, ptr @.str.11, ptr @.str.89, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_pcm_btcvsd_open\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(), stream %d, substream %p\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_btcvsd_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 262401, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24576, i32 0, i32 24576, i32 2, i32 16, i32 0 }, [32 x i8] zeroinitializer }, align 32
@mtk_pcm_btcvsd_close.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.64, ptr @.str.90, ptr @.str.11, ptr @.str.91, i8 0, i8 -30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_pcm_btcvsd_close\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(), stream %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mtk_pcm_btcvsd_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.11, i32 923, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(), error, buffer size %d not valid\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_pcm_btcvsd_hw_params\00", [39 x i8] zeroinitializer }, align 32
@mtk_pcm_btcvsd_hw_params._entry_ptr = internal global ptr @mtk_pcm_btcvsd_hw_params._entry, section ".printk_index", align 4
@mtk_pcm_btcvsd_prepare.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.64, ptr @.str.94, ptr @.str.11, ptr @.str.91, i8 0, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_pcm_btcvsd_prepare\00", [41 x i8] zeroinitializer }, align 32
@mtk_pcm_btcvsd_trigger.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.64, ptr @.str.95, ptr @.str.11, ptr @.str.96, i8 0, i8 -16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_pcm_btcvsd_trigger\00", [41 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(), stream %d, cmd %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.11, i32 823, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s(), count %zu or avail %d is not multiple of packet_size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_btcvsd_snd_write\00", [43 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_write._entry_ptr = internal global ptr @mtk_btcvsd_snd_write._entry, section ".printk_index", align 4
@mtk_btcvsd_snd_write._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.11, i32 843, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(), copy_from_user fail\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_write._entry_ptr.101 = internal global ptr @mtk_btcvsd_snd_write._entry.99, section ".printk_index", align 4
@wait_for_bt_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.11, i32 667, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s(), stream %d, timeout %llu, limit %llu, ret %d, flag %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wait_for_bt_irq\00", [16 x i8] zeroinitializer }, align 32
@wait_for_bt_irq._entry_ptr = internal global ptr @wait_for_bt_irq._entry, section ".printk_index", align 4
@wait_for_bt_irq._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.11, i32 677, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(), stream %d, error, trial left %d\0A\00", [57 x i8] zeroinitializer }, align 32
@wait_for_bt_irq._entry_ptr.106 = internal global ptr @wait_for_bt_irq._entry.104, section ".printk_index", align 4
@wait_for_bt_irq._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.11, i32 686, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s(), stream %d, error, timeout, condition is false, trial left %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wait_for_bt_irq._entry_ptr.109 = internal global ptr @wait_for_bt_irq._entry.107, section ".printk_index", align 4
@mtk_btcvsd_snd_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.11, i32 730, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s(), count %zu or d %lu is not multiple of packet_size %dd\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_btcvsd_snd_read\00", [44 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_read._entry_ptr = internal global ptr @mtk_btcvsd_snd_read._entry, section ".printk_index", align 4
@mtk_btcvsd_snd_read._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.11, i32 750, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(), copy_to_user fail\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_btcvsd_snd_read._entry_ptr.114 = internal global ptr @mtk_btcvsd_snd_read._entry.112, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 60, i64 120]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 60, i64 120]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 60, i64 120]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 60, i64 120]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 60, i64 120]
@__sancov_gen_cov_switch_values.119 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@___asan_gen_.120 = private unnamed_addr constant [22 x i8] c"mtk_btcvsd_snd_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1407, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1409, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant [24 x i8] c"mtk_btcvsd_snd_dt_match\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1401, i32 34 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1306, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1307, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1309, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1310, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1321, i32 29 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1324, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1333, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1339, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1345, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1347, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1354, i32 49 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1358, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [24 x i8] c"mtk_btcvsd_snd_platform\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1269, i32 46 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 492, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 501, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 507, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [18 x i8] c"btsco_packet_info\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 157, i32 27 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 533, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 563, i32 5 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 580, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 596, i32 5 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 612, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 377, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 428, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 470, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [19 x i8] c"table_msbc_silence\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 172, i32 17 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 336, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 342, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 209, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [24 x i8] c"mtk_btcvsd_snd_controls\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1239, i32 38 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1240, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [12 x i8] c"btcvsd_enum\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1051, i32 30 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1242, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1244, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1246, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1248, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1250, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1252, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1254, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1257, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1076, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [15 x i8] c"btsco_band_str\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1049, i32 26 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1049, i32 46 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1049, i32 52 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1175, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1182, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 230, i32 6 }
@___asan_gen_.381 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 214, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 174, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1225, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1232, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 884, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant [20 x i8] c"mtk_btcvsd_hardware\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 867, i32 38 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 906, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 921, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 948, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 962, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 822, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 842, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 664, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 675, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 684, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 729, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.474 = private constant [42 x i8] c"../sound/soc/mediatek/common/mtk-btcvsd.c\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 749, i32 4 }
@llvm.compiler.used = appending global [155 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_mtk_btcvsd_snd_driver_exit, ptr @__initcall__kmod_mtk_btcvsd__246_1416_mtk_btcvsd_snd_driver_init6, ptr @btcvsd_rx_timestamp_get._entry, ptr @btcvsd_rx_timestamp_get._entry_ptr, ptr @btcvsd_tx_clean_buffer._entry, ptr @btcvsd_tx_clean_buffer._entry.61, ptr @btcvsd_tx_clean_buffer._entry_ptr, ptr @btcvsd_tx_clean_buffer._entry_ptr.63, ptr @btcvsd_tx_timestamp_get._entry, ptr @btcvsd_tx_timestamp_get._entry_ptr, ptr @mtk_btcvsd_read_from_bt._entry, ptr @mtk_btcvsd_read_from_bt._entry_ptr, ptr @mtk_btcvsd_snd_driver_exit, ptr @mtk_btcvsd_snd_irq_handler._entry, ptr @mtk_btcvsd_snd_irq_handler._entry.31, ptr @mtk_btcvsd_snd_irq_handler._entry.34, ptr @mtk_btcvsd_snd_irq_handler._entry.37, ptr @mtk_btcvsd_snd_irq_handler._entry.40, ptr @mtk_btcvsd_snd_irq_handler._entry.43, ptr @mtk_btcvsd_snd_irq_handler._entry.46, ptr @mtk_btcvsd_snd_irq_handler._entry.49, ptr @mtk_btcvsd_snd_irq_handler._entry_ptr, ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.33, ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.36, ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.39, ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.42, ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.45, ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.48, ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.51, ptr @mtk_btcvsd_snd_probe._entry, ptr @mtk_btcvsd_snd_probe._entry.14, ptr @mtk_btcvsd_snd_probe._entry.17, ptr @mtk_btcvsd_snd_probe._entry.21, ptr @mtk_btcvsd_snd_probe._entry.25, ptr @mtk_btcvsd_snd_probe._entry_ptr, ptr @mtk_btcvsd_snd_probe._entry_ptr.16, ptr @mtk_btcvsd_snd_probe._entry_ptr.19, ptr @mtk_btcvsd_snd_probe._entry_ptr.23, ptr @mtk_btcvsd_snd_probe._entry_ptr.28, ptr @mtk_btcvsd_snd_read._entry, ptr @mtk_btcvsd_snd_read._entry.112, ptr @mtk_btcvsd_snd_read._entry_ptr, ptr @mtk_btcvsd_snd_read._entry_ptr.114, ptr @mtk_btcvsd_snd_write._entry, ptr @mtk_btcvsd_snd_write._entry.99, ptr @mtk_btcvsd_snd_write._entry_ptr, ptr @mtk_btcvsd_snd_write._entry_ptr.101, ptr @mtk_btcvsd_write_to_bt._entry, ptr @mtk_btcvsd_write_to_bt._entry.55, ptr @mtk_btcvsd_write_to_bt._entry_ptr, ptr @mtk_btcvsd_write_to_bt._entry_ptr.58, ptr @mtk_pcm_btcvsd_hw_params._entry, ptr @mtk_pcm_btcvsd_hw_params._entry_ptr, ptr @wait_for_bt_irq._entry, ptr @wait_for_bt_irq._entry.104, ptr @wait_for_bt_irq._entry.107, ptr @wait_for_bt_irq._entry_ptr, ptr @wait_for_bt_irq._entry_ptr.106, ptr @wait_for_bt_irq._entry_ptr.109, ptr @mtk_btcvsd_snd_driver, ptr @.str, ptr @mtk_btcvsd_snd_dt_match, ptr @mtk_btcvsd_snd_probe.__key, ptr @.str.1, ptr @mtk_btcvsd_snd_probe.__key.2, ptr @.str.3, ptr @mtk_btcvsd_snd_probe.__key.4, ptr @.str.5, ptr @mtk_btcvsd_snd_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @mtk_btcvsd_snd_platform, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @btsco_packet_info, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @table_msbc_silence, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @mtk_btcvsd_snd_controls, ptr @.str.67, ptr @btcvsd_enum, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.compoundliteral, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.str.78, ptr @btsco_band_str, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @mtk_btcvsd_hardware, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_platform to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_irq_handler._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_irq_handler._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btsco_packet_info to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_irq_handler._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_irq_handler._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_irq_handler._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_irq_handler._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_irq_handler._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_read_from_bt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_write_to_bt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_write_to_bt._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_msbc_silence to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btcvsd_tx_clean_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btcvsd_tx_clean_buffer._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btcvsd_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btsco_band_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btcvsd_rx_timestamp_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btcvsd_tx_timestamp_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pcm_btcvsd_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_write._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_bt_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_bt_irq._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_bt_irq._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_btcvsd_snd_read._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_btcvsd_snd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_btcvsd_snd_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_btcvsd_snd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_btcvsd_snd_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_btcvsd_snd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %offset = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %offset) #8
  %0 = call ptr @memset(ptr %offset, i32 0, i32 20)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 3388, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %call.i169 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 336, i32 noundef 3520) #8
  %rx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 19
  %3 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i169, ptr %rx, align 4
  %tobool6.not = icmp eq ptr %call.i169, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %call.i170 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 336, i32 noundef 3520) #8
  %tx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 18
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i170, ptr %tx, align 4
  %tobool12.not = icmp eq ptr %call.i170, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %do.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end8
  %tx_lock = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mtk_btcvsd_snd_probe.__key, i16 noundef signext 3) #8
  %rx_lock = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @mtk_btcvsd_snd_probe.__key.2, i16 noundef signext 3) #8
  %tx_wait = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %tx_wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @mtk_btcvsd_snd_probe.__key.4) #8
  %rx_wait = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %rx_wait, ptr noundef nonnull @.str.7, ptr noundef nonnull @mtk_btcvsd_snd_probe.__key.6) #8
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 336)
  %tx_packet_buf.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 20
  %10 = call ptr @memset(ptr %tx_packet_buf.i, i32 0, i32 1080)
  %11 = load ptr, ptr %tx, align 4
  %packet_size.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %packet_size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 60, ptr %packet_size.i, align 4
  %13 = load ptr, ptr %tx, align 4
  %buf_size.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1080, ptr %buf_size.i, align 8
  %15 = load ptr, ptr %tx, align 4
  %timeout.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %timeout.i, align 8
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %timeout.i, align 8
  %17 = load ptr, ptr %tx, align 4
  %rw_cnt.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %rw_cnt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %rw_cnt.i, align 4
  %19 = load ptr, ptr %tx, align 4
  %stream.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %stream.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %stream.i, align 4
  %21 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx, align 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 336)
  %rx_packet_buf.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 21
  %24 = call ptr @memset(ptr %rx_packet_buf.i, i32 0, i32 2048)
  %25 = load ptr, ptr %rx, align 4
  %packet_size.i171 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %packet_size.i171 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 32, ptr %packet_size.i171, align 4
  %27 = load ptr, ptr %rx, align 4
  %buf_size.i172 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %buf_size.i172 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2048, ptr %buf_size.i172, align 8
  %29 = load ptr, ptr %rx, align 4
  %timeout.i173 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %timeout.i173 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i174 = load i8, ptr %timeout.i173, align 8
  %bf.clear.i175 = and i8 %bf.load.i174, -65
  store i8 %bf.clear.i175, ptr %timeout.i173, align 8
  %31 = load ptr, ptr %rx, align 4
  %rw_cnt.i176 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %rw_cnt.i176 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %rw_cnt.i176, align 4
  %33 = load ptr, ptr %rx, align 4
  %stream.i177 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %stream.i177 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %stream.i177, align 4
  %call28 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28)
  %cmp = icmp slt i32 %call28, 1
  br i1 %cmp, label %if.then29, label %if.end31

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp30.not = icmp eq i32 %call28, 0
  %spec.select = select i1 %cmp30.not, i32 -6, i32 %call28
  br label %cleanup

if.end31:                                         ; preds = %do.body
  %call.i178 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call28, ptr noundef nonnull @mtk_btcvsd_snd_irq_handler, ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool33.not = icmp eq i32 %call.i178, 0
  br i1 %tobool33.not, label %if.end38, label %do.end37

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %irq_id39 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %irq_id39 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call28, ptr %irq_id39, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %36 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node, align 8
  %call40 = tail call ptr @of_iomap(ptr noundef %37, i32 noundef 0) #8
  %bt_pkv_base = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %bt_pkv_base to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call40, ptr %bt_pkv_base, align 4
  %tobool42.not = icmp eq ptr %call40, null
  br i1 %tobool42.not, label %do.end46, label %if.end47

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %call49 = tail call ptr @of_iomap(ptr noundef %40, i32 noundef 1) #8
  %bt_sram_bank2_base = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 4
  %41 = ptrtoint ptr %bt_sram_bank2_base to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call49, ptr %bt_sram_bank2_base, align 4
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %do.end55, label %if.end56

do.end55:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #11
  br label %unmap_pkv_err

if.end56:                                         ; preds = %if.end47
  %42 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node, align 8
  %call58 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %43, ptr noundef nonnull @.str.20) #8
  %infra = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %infra to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call58, ptr %infra, align 4
  %cmp.i = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end64, label %if.end69

do.end64:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %call58 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %45) #11
  %46 = ptrtoint ptr %infra to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %infra, align 4
  %48 = ptrtoint ptr %47 to i32
  br label %unmap_bank2_err

if.end69:                                         ; preds = %if.end56
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %call.i179 = call i32 @of_property_read_variable_u32_array(ptr noundef %50, ptr noundef nonnull @.str.24, ptr noundef nonnull %offset, i32 noundef 5, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i179)
  %tobool72.not = icmp sgt i32 %call.i179, -1
  br i1 %tobool72.not, label %if.end77, label %do.end76

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.10, i32 noundef %call.i179) #11
  br label %unmap_bank2_err

if.end77:                                         ; preds = %if.end69
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset, align 4
  %infra_misc_offset = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 5
  %53 = ptrtoint ptr %infra_misc_offset to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %infra_misc_offset, align 4
  %arrayidx78 = getelementptr inbounds [5 x i32], ptr %offset, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx78, align 4
  %conn_bt_cvsd_mask = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 6
  %56 = ptrtoint ptr %conn_bt_cvsd_mask to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %conn_bt_cvsd_mask, align 4
  %arrayidx79 = getelementptr inbounds [5 x i32], ptr %offset, i32 0, i32 2
  %57 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx79, align 4
  %cvsd_mcu_read_offset = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 7
  %59 = ptrtoint ptr %cvsd_mcu_read_offset to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %cvsd_mcu_read_offset, align 4
  %arrayidx80 = getelementptr inbounds [5 x i32], ptr %offset, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx80, align 4
  %cvsd_mcu_write_offset = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 8
  %62 = ptrtoint ptr %cvsd_mcu_write_offset to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %cvsd_mcu_write_offset, align 4
  %arrayidx81 = getelementptr inbounds [5 x i32], ptr %offset, i32 0, i32 4
  %63 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx81, align 4
  %cvsd_packet_indicator = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 9
  %65 = ptrtoint ptr %cvsd_packet_indicator to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %cvsd_packet_indicator, align 4
  %66 = ptrtoint ptr %bt_pkv_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bt_pkv_base, align 4
  %add.ptr = getelementptr i8, ptr %67, i32 %58
  %bt_reg_pkt_r = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 10
  %68 = ptrtoint ptr %bt_reg_pkt_r to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr, ptr %bt_reg_pkt_r, align 4
  %add.ptr86 = getelementptr i8, ptr %67, i32 %61
  %bt_reg_pkt_w = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 11
  %69 = ptrtoint ptr %bt_reg_pkt_w to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr86, ptr %bt_reg_pkt_w, align 4
  %add.ptr89 = getelementptr i8, ptr %67, i32 %64
  %bt_reg_ctl = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %call.i, i32 0, i32 12
  %70 = ptrtoint ptr %bt_reg_ctl to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr89, ptr %bt_reg_ctl, align 4
  %71 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx, align 4
  call fastcc void @mtk_btcvsd_snd_set_state(ptr noundef nonnull %call.i, ptr noundef %72, i32 noundef 0)
  %73 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rx, align 4
  call fastcc void @mtk_btcvsd_snd_set_state(ptr noundef nonnull %call.i, ptr noundef %74, i32 noundef 0)
  %call92 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @mtk_btcvsd_snd_platform, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end77.cleanup_crit_edge, label %if.end77.unmap_bank2_err_crit_edge

if.end77.unmap_bank2_err_crit_edge:               ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %unmap_bank2_err

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

unmap_bank2_err:                                  ; preds = %if.end77.unmap_bank2_err_crit_edge, %do.end76, %do.end64
  %ret.0 = phi i32 [ %48, %do.end64 ], [ %call.i179, %do.end76 ], [ %call92, %if.end77.unmap_bank2_err_crit_edge ]
  %75 = ptrtoint ptr %bt_sram_bank2_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bt_sram_bank2_base, align 4
  call void @iounmap(ptr noundef %76) #8
  br label %unmap_pkv_err

unmap_pkv_err:                                    ; preds = %unmap_bank2_err, %do.end55
  %ret.1 = phi i32 [ %ret.0, %unmap_bank2_err ], [ -5, %do.end55 ]
  %77 = ptrtoint ptr %bt_pkv_base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bt_pkv_base, align 4
  call void @iounmap(ptr noundef %78) #8
  br label %cleanup

cleanup:                                          ; preds = %unmap_pkv_err, %if.end77.cleanup_crit_edge, %do.end46, %do.end37, %if.then29, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then29 ], [ %call.i178, %do.end37 ], [ %ret.1, %unmap_pkv_err ], [ -5, %do.end46 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %offset) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_btcvsd_snd_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bt_pkv_base = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bt_pkv_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bt_pkv_base, align 4
  tail call void @iounmap(ptr noundef %3) #8
  %bt_sram_bank2_base = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %bt_sram_bank2_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bt_sram_bank2_base, align 4
  tail call void @iounmap(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_btcvsd_snd_irq_handler(i32 noundef %irq_id, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %state = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch337 = icmp ult i32 %.off, 2
  br i1 %switch337, label %entry.if.end_crit_edge, label %land.lhs.true4

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true4:                                   ; preds = %entry
  %tx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx, align 4
  %state5 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state5, align 8
  %.off338 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off338)
  %switch339 = icmp ult i32 %.off338, 3
  br i1 %switch339, label %land.lhs.true4.if.end_crit_edge, label %do.end

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %3, i32 noundef %7) #11
  br label %irq_handler_exit

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %entry.if.end_crit_edge
  %bt_reg_ctl = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 12
  %10 = ptrtoint ptr %bt_reg_ctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bt_reg_ctl, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %shr = lshr i32 %13, 18
  %and = and i32 %shr, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp22 = icmp sgt i32 %13, -1
  br i1 %cmp22, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %13) #11
  br label %irq_handler_exit

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp29 = icmp ugt i32 %and, 5
  br i1 %cmp29, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.30, i32 noundef %and) #11
  br label %irq_handler_exit

if.end35:                                         ; preds = %if.end28
  %arrayidx = getelementptr [6 x [4 x i32]], ptr @btsco_packet_info, i32 0, i32 %and
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %arrayidx38 = getelementptr [6 x [4 x i32]], ptr @btsco_packet_info, i32 0, i32 %and, i32 1
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx38, align 4
  %arrayidx40 = getelementptr [6 x [4 x i32]], ptr @btsco_packet_info, i32 0, i32 %and, i32 2
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx40, align 4
  %arrayidx42 = getelementptr [6 x [4 x i32]], ptr @btsco_packet_info, i32 0, i32 %and, i32 3
  %24 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx42, align 4
  %tx43 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 18
  %26 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx43, align 4
  %state44 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %state44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp45 = icmp eq i32 %29, 3
  br i1 %cmp45, label %if.then46, label %if.end35.if.end72_crit_edge

if.end35.if.end72_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then46:                                        ; preds = %if.end35
  %bt_reg_pkt_r = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 10
  %30 = ptrtoint ptr %bt_reg_pkt_r to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bt_reg_pkt_r, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %bt_reg_pkt_w = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 11
  %34 = ptrtoint ptr %bt_reg_pkt_w to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bt_reg_pkt_w, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559022355, i32 %37)
  %cmp51 = icmp eq i32 %37, -559022355
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559022355, i32 %33)
  %cmp52 = icmp eq i32 %33, -559022355
  %or.cond = select i1 %cmp51, i1 true, i1 %cmp52
  br i1 %or.cond, label %cleanup, label %if.end58

if.end58:                                         ; preds = %if.then46
  %and49 = and i32 %37, 65535
  %bt_sram_bank2_base = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 4
  %38 = ptrtoint ptr %bt_sram_bank2_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bt_sram_bank2_base, align 4
  %40 = ptrtoint ptr %39 to i32
  %add50 = add i32 %and49, %40
  %and47 = and i32 %33, 65535
  %add = add i32 %and47, %40
  %41 = inttoptr i32 %add to ptr
  %42 = inttoptr i32 %add50 to ptr
  %temp_packet_buf = getelementptr %struct.mtk_btcvsd_snd_stream, ptr %27, i32 0, i32 5
  %43 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %for.cond9.preheader.lr.ph.i [
    i32 60, label %if.end58.if.then.i_crit_edge
    i32 120, label %if.end58.if.then.i_crit_edge464
    i32 20, label %if.end58.if.then.i_crit_edge465
  ]

if.end58.if.then.i_crit_edge465:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end58.if.then.i_crit_edge464:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end58.if.then.i_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.cond9.preheader.lr.ph.i:                      ; preds = %if.end58
  %div1040.i = lshr i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp1147.not.i = icmp ult i32 %19, 2
  %umax57.i = tail call i32 @llvm.umax.i32(i32 %div1040.i, i32 1) #8
  br label %for.cond9.preheader.i

if.then.i:                                        ; preds = %if.end58.if.then.i_crit_edge, %if.end58.if.then.i_crit_edge464, %if.end58.if.then.i_crit_edge465
  %mul.i = mul i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul.i)
  %cmp443.not.i = icmp ult i32 %mul.i, 4
  br i1 %cmp443.not.i, label %if.then.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge, label %for.body.preheader.i

if.then.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_btcvsd_snd_data_transfer.exit

for.body.preheader.i:                             ; preds = %if.then.i
  %div41.i = lshr i32 %mul.i, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %dst_32.046.i = phi ptr [ %incdec.ptr5.i, %for.body.i.for.body.i_crit_edge ], [ %temp_packet_buf, %for.body.preheader.i ]
  %src_32.045.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %41, %for.body.preheader.i ]
  %i.044.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i32, ptr %src_32.045.i, i32 1
  %44 = ptrtoint ptr %src_32.045.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src_32.045.i, align 4
  %incdec.ptr5.i = getelementptr i32, ptr %dst_32.046.i, i32 1
  %46 = ptrtoint ptr %dst_32.046.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %dst_32.046.i, align 4
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div41.i
  br i1 %exitcond.not.i, label %for.body.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_btcvsd_snd_data_transfer.exit

for.cond9.preheader.i:                            ; preds = %for.end17.i.for.cond9.preheader.i_crit_edge, %for.cond9.preheader.lr.ph.i
  %dst_16.055.i = phi ptr [ %temp_packet_buf, %for.cond9.preheader.lr.ph.i ], [ %dst_16.1.lcssa.i, %for.end17.i.for.cond9.preheader.i_crit_edge ]
  %src_16.054.i = phi ptr [ %41, %for.cond9.preheader.lr.ph.i ], [ %src_16.2.i, %for.end17.i.for.cond9.preheader.i_crit_edge ]
  %j.053.i = phi i32 [ 0, %for.cond9.preheader.lr.ph.i ], [ %inc24.i, %for.end17.i.for.cond9.preheader.i_crit_edge ]
  br i1 %cmp1147.not.i, label %for.cond9.preheader.i.for.end17.i_crit_edge, label %for.cond9.preheader.i.for.body12.i_crit_edge

for.cond9.preheader.i.for.body12.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body12.i

for.cond9.preheader.i.for.end17.i_crit_edge:      ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.cond9.preheader.i.for.body12.i_crit_edge
  %dst_16.150.i = phi ptr [ %incdec.ptr14.i, %for.body12.i.for.body12.i_crit_edge ], [ %dst_16.055.i, %for.cond9.preheader.i.for.body12.i_crit_edge ]
  %src_16.149.i = phi ptr [ %incdec.ptr13.i, %for.body12.i.for.body12.i_crit_edge ], [ %src_16.054.i, %for.cond9.preheader.i.for.body12.i_crit_edge ]
  %i.148.i = phi i32 [ %inc16.i, %for.body12.i.for.body12.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body12.i_crit_edge ]
  %incdec.ptr13.i = getelementptr i16, ptr %src_16.149.i, i32 1
  %47 = ptrtoint ptr %src_16.149.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %src_16.149.i, align 2
  %incdec.ptr14.i = getelementptr i16, ptr %dst_16.150.i, i32 1
  %49 = ptrtoint ptr %dst_16.150.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %dst_16.150.i, align 2
  %inc16.i = add nuw nsw i32 %i.148.i, 1
  %exitcond58.not.i = icmp eq i32 %inc16.i, %umax57.i
  br i1 %exitcond58.not.i, label %for.body12.i.for.end17.i_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i

for.body12.i.for.end17.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17.i

for.end17.i:                                      ; preds = %for.body12.i.for.end17.i_crit_edge, %for.cond9.preheader.i.for.end17.i_crit_edge
  %src_16.1.lcssa.i = phi ptr [ %src_16.054.i, %for.cond9.preheader.i.for.end17.i_crit_edge ], [ %incdec.ptr13.i, %for.body12.i.for.end17.i_crit_edge ]
  %dst_16.1.lcssa.i = phi ptr [ %dst_16.055.i, %for.cond9.preheader.i.for.end17.i_crit_edge ], [ %incdec.ptr14.i, %for.body12.i.for.end17.i_crit_edge ]
  %src_16.2.i = getelementptr i16, ptr %src_16.1.lcssa.i, i32 1
  %inc24.i = add nuw i32 %j.053.i, 1
  %exitcond59.not.i = icmp eq i32 %inc24.i, %21
  br i1 %exitcond59.not.i, label %for.end17.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge, label %for.end17.i.for.cond9.preheader.i_crit_edge

for.end17.i.for.cond9.preheader.i_crit_edge:      ; preds = %for.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond9.preheader.i

for.end17.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge: ; preds = %for.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_btcvsd_snd_data_transfer.exit

mtk_btcvsd_snd_data_transfer.exit:                ; preds = %for.end17.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge, %for.body.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge, %if.then.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge
  %50 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx43, align 4
  %temp_packet_buf61 = getelementptr %struct.mtk_btcvsd_snd_stream, ptr %51, i32 0, i32 5
  %52 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %19, label %for.cond9.preheader.lr.ph.i353 [
    i32 60, label %mtk_btcvsd_snd_data_transfer.exit.if.then.i356_crit_edge
    i32 120, label %mtk_btcvsd_snd_data_transfer.exit.if.then.i356_crit_edge466
    i32 20, label %mtk_btcvsd_snd_data_transfer.exit.if.then.i356_crit_edge467
  ]

mtk_btcvsd_snd_data_transfer.exit.if.then.i356_crit_edge467: ; preds = %mtk_btcvsd_snd_data_transfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i356

mtk_btcvsd_snd_data_transfer.exit.if.then.i356_crit_edge466: ; preds = %mtk_btcvsd_snd_data_transfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i356

mtk_btcvsd_snd_data_transfer.exit.if.then.i356_crit_edge: ; preds = %mtk_btcvsd_snd_data_transfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i356

for.cond9.preheader.lr.ph.i353:                   ; preds = %mtk_btcvsd_snd_data_transfer.exit
  %div1040.i350 = lshr i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp1147.not.i351 = icmp ult i32 %19, 2
  %umax57.i352 = tail call i32 @llvm.umax.i32(i32 %div1040.i350, i32 1) #8
  br label %for.cond9.preheader.i370

if.then.i356:                                     ; preds = %mtk_btcvsd_snd_data_transfer.exit.if.then.i356_crit_edge, %mtk_btcvsd_snd_data_transfer.exit.if.then.i356_crit_edge466, %mtk_btcvsd_snd_data_transfer.exit.if.then.i356_crit_edge467
  %mul.i354 = mul i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul.i354)
  %cmp443.not.i355 = icmp ult i32 %mul.i354, 4
  br i1 %cmp443.not.i355, label %if.then.i356.cleanup.thread_crit_edge, label %for.body.preheader.i358

if.then.i356.cleanup.thread_crit_edge:            ; preds = %if.then.i356
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

for.body.preheader.i358:                          ; preds = %if.then.i356
  %div41.i357 = lshr i32 %mul.i354, 2
  br label %for.body.i366

for.body.i366:                                    ; preds = %for.body.i366.for.body.i366_crit_edge, %for.body.preheader.i358
  %dst_32.046.i359 = phi ptr [ %incdec.ptr5.i363, %for.body.i366.for.body.i366_crit_edge ], [ %42, %for.body.preheader.i358 ]
  %src_32.045.i360 = phi ptr [ %incdec.ptr.i362, %for.body.i366.for.body.i366_crit_edge ], [ %temp_packet_buf61, %for.body.preheader.i358 ]
  %i.044.i361 = phi i32 [ %inc.i364, %for.body.i366.for.body.i366_crit_edge ], [ 0, %for.body.preheader.i358 ]
  %incdec.ptr.i362 = getelementptr i32, ptr %src_32.045.i360, i32 1
  %53 = ptrtoint ptr %src_32.045.i360 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %src_32.045.i360, align 4
  %incdec.ptr5.i363 = getelementptr i32, ptr %dst_32.046.i359, i32 1
  %55 = ptrtoint ptr %dst_32.046.i359 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %dst_32.046.i359, align 4
  %inc.i364 = add nuw nsw i32 %i.044.i361, 1
  %exitcond.not.i365 = icmp eq i32 %inc.i364, %div41.i357
  br i1 %exitcond.not.i365, label %for.body.i366.cleanup.thread_crit_edge, label %for.body.i366.for.body.i366_crit_edge

for.body.i366.for.body.i366_crit_edge:            ; preds = %for.body.i366
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i366

for.body.i366.cleanup.thread_crit_edge:           ; preds = %for.body.i366
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

for.cond9.preheader.i370:                         ; preds = %for.end17.i383.for.cond9.preheader.i370_crit_edge, %for.cond9.preheader.lr.ph.i353
  %dst_16.055.i367 = phi ptr [ %42, %for.cond9.preheader.lr.ph.i353 ], [ %dst_16.2.i, %for.end17.i383.for.cond9.preheader.i370_crit_edge ]
  %src_16.054.i368 = phi ptr [ %temp_packet_buf61, %for.cond9.preheader.lr.ph.i353 ], [ %src_16.1.lcssa.i379, %for.end17.i383.for.cond9.preheader.i370_crit_edge ]
  %j.053.i369 = phi i32 [ 0, %for.cond9.preheader.lr.ph.i353 ], [ %inc24.i381, %for.end17.i383.for.cond9.preheader.i370_crit_edge ]
  br i1 %cmp1147.not.i351, label %for.cond9.preheader.i370.for.end17.i383_crit_edge, label %for.cond9.preheader.i370.for.body12.i378_crit_edge

for.cond9.preheader.i370.for.body12.i378_crit_edge: ; preds = %for.cond9.preheader.i370
  br label %for.body12.i378

for.cond9.preheader.i370.for.end17.i383_crit_edge: ; preds = %for.cond9.preheader.i370
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17.i383

for.body12.i378:                                  ; preds = %for.body12.i378.for.body12.i378_crit_edge, %for.cond9.preheader.i370.for.body12.i378_crit_edge
  %dst_16.150.i371 = phi ptr [ %incdec.ptr14.i375, %for.body12.i378.for.body12.i378_crit_edge ], [ %dst_16.055.i367, %for.cond9.preheader.i370.for.body12.i378_crit_edge ]
  %src_16.149.i372 = phi ptr [ %incdec.ptr13.i374, %for.body12.i378.for.body12.i378_crit_edge ], [ %src_16.054.i368, %for.cond9.preheader.i370.for.body12.i378_crit_edge ]
  %i.148.i373 = phi i32 [ %inc16.i376, %for.body12.i378.for.body12.i378_crit_edge ], [ 0, %for.cond9.preheader.i370.for.body12.i378_crit_edge ]
  %incdec.ptr13.i374 = getelementptr i16, ptr %src_16.149.i372, i32 1
  %56 = ptrtoint ptr %src_16.149.i372 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %src_16.149.i372, align 2
  %incdec.ptr14.i375 = getelementptr i16, ptr %dst_16.150.i371, i32 1
  %58 = ptrtoint ptr %dst_16.150.i371 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %dst_16.150.i371, align 2
  %inc16.i376 = add nuw nsw i32 %i.148.i373, 1
  %exitcond58.not.i377 = icmp eq i32 %inc16.i376, %umax57.i352
  br i1 %exitcond58.not.i377, label %for.body12.i378.for.end17.i383_crit_edge, label %for.body12.i378.for.body12.i378_crit_edge

for.body12.i378.for.body12.i378_crit_edge:        ; preds = %for.body12.i378
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i378

for.body12.i378.for.end17.i383_crit_edge:         ; preds = %for.body12.i378
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17.i383

for.end17.i383:                                   ; preds = %for.body12.i378.for.end17.i383_crit_edge, %for.cond9.preheader.i370.for.end17.i383_crit_edge
  %src_16.1.lcssa.i379 = phi ptr [ %src_16.054.i368, %for.cond9.preheader.i370.for.end17.i383_crit_edge ], [ %incdec.ptr13.i374, %for.body12.i378.for.end17.i383_crit_edge ]
  %dst_16.1.lcssa.i380 = phi ptr [ %dst_16.055.i367, %for.cond9.preheader.i370.for.end17.i383_crit_edge ], [ %incdec.ptr14.i375, %for.body12.i378.for.end17.i383_crit_edge ]
  %dst_16.2.i = getelementptr i16, ptr %dst_16.1.lcssa.i380, i32 1
  %inc24.i381 = add nuw i32 %j.053.i369, 1
  %exitcond59.not.i382 = icmp eq i32 %inc24.i381, %21
  br i1 %exitcond59.not.i382, label %for.end17.i383.cleanup.thread_crit_edge, label %for.end17.i383.for.cond9.preheader.i370_crit_edge

for.end17.i383.for.cond9.preheader.i370_crit_edge: ; preds = %for.end17.i383
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond9.preheader.i370

for.end17.i383.cleanup.thread_crit_edge:          ; preds = %for.end17.i383
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.end17.i383.cleanup.thread_crit_edge, %for.body.i366.cleanup.thread_crit_edge, %if.then.i356.cleanup.thread_crit_edge
  %59 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx, align 4
  %rw_cnt = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %rw_cnt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rw_cnt, align 4
  %inc = add i32 %62, 1
  store i32 %inc, ptr %rw_cnt, align 4
  %63 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx43, align 4
  %rw_cnt65 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %rw_cnt65 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rw_cnt65, align 4
  %inc66 = add i32 %66, 1
  store i32 %inc66, ptr %rw_cnt65, align 4
  br label %if.end72

cleanup:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.30) #11
  br label %irq_handler_exit

if.end72:                                         ; preds = %cleanup.thread, %if.end35.if.end72_crit_edge
  %69 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rx, align 4
  %state74 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %state74 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %state74, align 8
  %.off340 = add i32 %72, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off340)
  %switch341 = icmp ult i32 %.off340, 2
  br i1 %switch341, label %if.then80, label %if.end72.if.end125_crit_edge

if.end72.if.end125_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then80:                                        ; preds = %if.end72
  %xrun = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %70, i32 0, i32 10
  %73 = ptrtoint ptr %xrun to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load = load i8, ptr %xrun, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then80.if.end96_crit_edge, label %if.then82

if.then80.if.end96_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then82:                                        ; preds = %if.then80
  %packet_w = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %70, i32 0, i32 6
  %74 = ptrtoint ptr %packet_w to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %packet_w, align 8
  %packet_r = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %70, i32 0, i32 7
  %76 = ptrtoint ptr %packet_r to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %packet_r, align 4
  %sub = sub i32 %75, %77
  %mul.neg = mul i32 %25, -2
  %sub85 = add i32 %mul.neg, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub85)
  %cmp86.not = icmp ugt i32 %sub, %sub85
  br i1 %cmp86.not, label %if.then82.if.end96_crit_edge, label %if.then87

if.then82.if.end96_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then87:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear = and i8 %bf.load, 127
  %78 = ptrtoint ptr %xrun to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %bf.clear, ptr %xrun, align 8
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %80, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.30) #11
  br label %if.end96

if.end96:                                         ; preds = %if.then87, %if.then82.if.end96_crit_edge, %if.then80.if.end96_crit_edge
  %81 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rx, align 4
  %xrun98 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %xrun98 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load99 = load i8, ptr %xrun98, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load99)
  %tobool102.not = icmp sgt i8 %bf.load99, -1
  br i1 %tobool102.not, label %land.lhs.true103, label %if.end96.if.else_crit_edge

if.end96.if.else_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true103:                                 ; preds = %if.end96
  %packet_w105 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %82, i32 0, i32 6
  %84 = ptrtoint ptr %packet_w105 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %packet_w105, align 8
  %packet_r107 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %82, i32 0, i32 7
  %86 = ptrtoint ptr %packet_r107 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %packet_r107, align 4
  %sub108 = sub i32 %85, %87
  %sub109 = sub i32 64, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %sub108, i32 %sub109)
  %cmp110.not = icmp ugt i32 %sub108, %sub109
  br i1 %cmp110.not, label %land.lhs.true103.if.else_crit_edge, label %if.then111

land.lhs.true103.if.else_crit_edge:               ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then111:                                       ; preds = %land.lhs.true103
  %bt_reg_pkt_r.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 10
  %88 = ptrtoint ptr %bt_reg_pkt_r.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bt_reg_pkt_r.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559022355, i32 %91)
  %cmp.i = icmp eq i32 %91, -559022355
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %93, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #11
  br label %mtk_btcvsd_read_from_bt.exit

if.end.i:                                         ; preds = %if.then111
  %bt_sram_bank2_base.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 4
  %94 = ptrtoint ptr %bt_sram_bank2_base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bt_sram_bank2_base.i, align 4
  %96 = ptrtoint ptr %95 to i32
  %and.i = and i32 %91, 65535
  %add.i = add i32 %and.i, %96
  %97 = inttoptr i32 %add.i to ptr
  %temp_packet_buf.i = getelementptr %struct.mtk_btcvsd_snd_stream, ptr %82, i32 0, i32 5
  %98 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %19, label %for.cond9.preheader.lr.ph.i.i [
    i32 60, label %if.end.i.if.then.i.i_crit_edge
    i32 120, label %if.end.i.if.then.i.i_crit_edge468
    i32 20, label %if.end.i.if.then.i.i_crit_edge469
  ]

if.end.i.if.then.i.i_crit_edge469:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end.i.if.then.i.i_crit_edge468:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.cond9.preheader.lr.ph.i.i:                    ; preds = %if.end.i
  %div1040.i.i = lshr i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp1147.not.i.i = icmp ult i32 %19, 2
  %umax57.i.i = tail call i32 @llvm.umax.i32(i32 %div1040.i.i, i32 1) #8
  br label %for.cond9.preheader.i.i

if.then.i.i:                                      ; preds = %if.end.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge468, %if.end.i.if.then.i.i_crit_edge469
  %mul.i.i = mul i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul.i.i)
  %cmp443.not.i.i = icmp ult i32 %mul.i.i, 4
  br i1 %cmp443.not.i.i, label %if.then.i.i.mtk_btcvsd_snd_data_transfer.exit.i_crit_edge, label %for.body.preheader.i.i

if.then.i.i.mtk_btcvsd_snd_data_transfer.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_btcvsd_snd_data_transfer.exit.i

for.body.preheader.i.i:                           ; preds = %if.then.i.i
  %div41.i.i = lshr i32 %mul.i.i, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %dst_32.046.i.i = phi ptr [ %incdec.ptr5.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %temp_packet_buf.i, %for.body.preheader.i.i ]
  %src_32.045.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %97, %for.body.preheader.i.i ]
  %i.044.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %incdec.ptr.i.i = getelementptr i32, ptr %src_32.045.i.i, i32 1
  %99 = ptrtoint ptr %src_32.045.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %src_32.045.i.i, align 4
  %incdec.ptr5.i.i = getelementptr i32, ptr %dst_32.046.i.i, i32 1
  %101 = ptrtoint ptr %dst_32.046.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %dst_32.046.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.044.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div41.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.mtk_btcvsd_snd_data_transfer.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.mtk_btcvsd_snd_data_transfer.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_btcvsd_snd_data_transfer.exit.i

for.cond9.preheader.i.i:                          ; preds = %for.end17.i.i.for.cond9.preheader.i.i_crit_edge, %for.cond9.preheader.lr.ph.i.i
  %dst_16.055.i.i = phi ptr [ %temp_packet_buf.i, %for.cond9.preheader.lr.ph.i.i ], [ %dst_16.1.lcssa.i.i, %for.end17.i.i.for.cond9.preheader.i.i_crit_edge ]
  %src_16.054.i.i = phi ptr [ %97, %for.cond9.preheader.lr.ph.i.i ], [ %src_16.2.i.i, %for.end17.i.i.for.cond9.preheader.i.i_crit_edge ]
  %j.053.i.i = phi i32 [ 0, %for.cond9.preheader.lr.ph.i.i ], [ %inc24.i.i, %for.end17.i.i.for.cond9.preheader.i.i_crit_edge ]
  br i1 %cmp1147.not.i.i, label %for.cond9.preheader.i.i.for.end17.i.i_crit_edge, label %for.cond9.preheader.i.i.for.body12.i.i_crit_edge

for.cond9.preheader.i.i.for.body12.i.i_crit_edge: ; preds = %for.cond9.preheader.i.i
  br label %for.body12.i.i

for.cond9.preheader.i.i.for.end17.i.i_crit_edge:  ; preds = %for.cond9.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17.i.i

for.body12.i.i:                                   ; preds = %for.body12.i.i.for.body12.i.i_crit_edge, %for.cond9.preheader.i.i.for.body12.i.i_crit_edge
  %dst_16.150.i.i = phi ptr [ %incdec.ptr14.i.i, %for.body12.i.i.for.body12.i.i_crit_edge ], [ %dst_16.055.i.i, %for.cond9.preheader.i.i.for.body12.i.i_crit_edge ]
  %src_16.149.i.i = phi ptr [ %incdec.ptr13.i.i, %for.body12.i.i.for.body12.i.i_crit_edge ], [ %src_16.054.i.i, %for.cond9.preheader.i.i.for.body12.i.i_crit_edge ]
  %i.148.i.i = phi i32 [ %inc16.i.i, %for.body12.i.i.for.body12.i.i_crit_edge ], [ 0, %for.cond9.preheader.i.i.for.body12.i.i_crit_edge ]
  %incdec.ptr13.i.i = getelementptr i16, ptr %src_16.149.i.i, i32 1
  %102 = ptrtoint ptr %src_16.149.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %src_16.149.i.i, align 2
  %incdec.ptr14.i.i = getelementptr i16, ptr %dst_16.150.i.i, i32 1
  %104 = ptrtoint ptr %dst_16.150.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %dst_16.150.i.i, align 2
  %inc16.i.i = add nuw nsw i32 %i.148.i.i, 1
  %exitcond58.not.i.i = icmp eq i32 %inc16.i.i, %umax57.i.i
  br i1 %exitcond58.not.i.i, label %for.body12.i.i.for.end17.i.i_crit_edge, label %for.body12.i.i.for.body12.i.i_crit_edge

for.body12.i.i.for.body12.i.i_crit_edge:          ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i.i

for.body12.i.i.for.end17.i.i_crit_edge:           ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17.i.i

for.end17.i.i:                                    ; preds = %for.body12.i.i.for.end17.i.i_crit_edge, %for.cond9.preheader.i.i.for.end17.i.i_crit_edge
  %src_16.1.lcssa.i.i = phi ptr [ %src_16.054.i.i, %for.cond9.preheader.i.i.for.end17.i.i_crit_edge ], [ %incdec.ptr13.i.i, %for.body12.i.i.for.end17.i.i_crit_edge ]
  %dst_16.1.lcssa.i.i = phi ptr [ %dst_16.055.i.i, %for.cond9.preheader.i.i.for.end17.i.i_crit_edge ], [ %incdec.ptr14.i.i, %for.body12.i.i.for.end17.i.i_crit_edge ]
  %src_16.2.i.i = getelementptr i16, ptr %src_16.1.lcssa.i.i, i32 1
  %inc24.i.i = add nuw i32 %j.053.i.i, 1
  %exitcond59.not.i.i = icmp eq i32 %inc24.i.i, %21
  br i1 %exitcond59.not.i.i, label %for.end17.i.i.mtk_btcvsd_snd_data_transfer.exit.i_crit_edge, label %for.end17.i.i.for.cond9.preheader.i.i_crit_edge

for.end17.i.i.for.cond9.preheader.i.i_crit_edge:  ; preds = %for.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond9.preheader.i.i

for.end17.i.i.mtk_btcvsd_snd_data_transfer.exit.i_crit_edge: ; preds = %for.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_btcvsd_snd_data_transfer.exit.i

mtk_btcvsd_snd_data_transfer.exit.i:              ; preds = %for.end17.i.i.mtk_btcvsd_snd_data_transfer.exit.i_crit_edge, %for.body.i.i.mtk_btcvsd_snd_data_transfer.exit.i_crit_edge, %if.then.i.i.mtk_btcvsd_snd_data_transfer.exit.i_crit_edge
  %rx_lock.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 15
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock.i) #8
  %rx_packet_buf.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 21
  br label %for.body.i388

for.body.i388:                                    ; preds = %for.body.i388.for.body.i388_crit_edge, %mtk_btcvsd_snd_data_transfer.exit.i
  %i.03.i = phi i32 [ 0, %mtk_btcvsd_snd_data_transfer.exit.i ], [ %inc34.i, %for.body.i388.for.body.i388_crit_edge ]
  %105 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rx, align 4
  %packet_w.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %106, i32 0, i32 6
  %107 = ptrtoint ptr %packet_w.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %packet_w.i, align 8
  %and12.i = and i32 %108, 63
  %packet_size.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %106, i32 0, i32 3
  %109 = ptrtoint ptr %packet_size.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %packet_size.i, align 4
  %mul.i385 = mul i32 %and12.i, %110
  %add.ptr.i = getelementptr i8, ptr %rx_packet_buf.i, i32 %mul.i385
  %temp_packet_buf16.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %106, i32 0, i32 5
  %mul18.i = mul i32 %i.03.i, 30
  %add.ptr19.i = getelementptr i8, ptr %temp_packet_buf16.i, i32 %mul18.i
  %111 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr19.i, i32 30)
  %add28.i = add i32 %mul.i385, 30
  %add.ptr31.i = getelementptr i8, ptr %rx_packet_buf.i, i32 %add28.i
  %112 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 0, ptr %add.ptr31.i, align 1
  %113 = load ptr, ptr %rx, align 4
  %packet_w33.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %113, i32 0, i32 6
  %114 = ptrtoint ptr %packet_w33.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %packet_w33.i, align 8
  %inc.i386 = add i32 %115, 1
  store i32 %inc.i386, ptr %packet_w33.i, align 8
  %inc34.i = add nuw i32 %i.03.i, 1
  %exitcond.not.i387 = icmp eq i32 %inc34.i, %25
  br i1 %exitcond.not.i387, label %for.end.i, label %for.body.i388.for.body.i388_crit_edge

for.body.i388.for.body.i388_crit_edge:            ; preds = %for.body.i388
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i388

for.end.i:                                        ; preds = %for.body.i388
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock.i, i32 noundef %call4.i) #8
  br label %mtk_btcvsd_read_from_bt.exit

mtk_btcvsd_read_from_bt.exit:                     ; preds = %for.end.i, %do.end.i
  %116 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rx, align 4
  %rw_cnt113 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %117, i32 0, i32 11
  %118 = ptrtoint ptr %rw_cnt113 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rw_cnt113, align 4
  %inc114 = add i32 %119, 1
  store i32 %inc114, ptr %rw_cnt113, align 4
  br label %if.end125

if.else:                                          ; preds = %land.lhs.true103.if.else_crit_edge, %if.end96.if.else_crit_edge
  %bf.set119 = or i8 %bf.load99, -128
  %120 = ptrtoint ptr %xrun98 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %bf.set119, ptr %xrun98, align 8
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %122, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.30) #11
  br label %if.end125

if.end125:                                        ; preds = %if.else, %mtk_btcvsd_read_from_bt.exit, %if.end72.if.end125_crit_edge
  %123 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tx43, align 4
  %timeout = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %124, i32 0, i32 10
  %125 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load127 = load i8, ptr %timeout, align 8
  %bf.clear128 = and i8 %bf.load127, -65
  store i8 %bf.clear128, ptr %timeout, align 8
  %126 = load ptr, ptr %tx43, align 4
  %state131 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %state131 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %state131, align 8
  %.off342 = add i32 %128, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off342)
  %switch343 = icmp ult i32 %.off342, 2
  br i1 %switch343, label %land.lhs.true137, label %if.end125.if.end204_crit_edge

if.end125.if.end204_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end204

land.lhs.true137:                                 ; preds = %if.end125
  %trigger_start = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %126, i32 0, i32 10
  %129 = ptrtoint ptr %trigger_start to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load139 = load i8, ptr %trigger_start, align 8
  %130 = and i8 %bf.load139, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool143.not = icmp eq i8 %130, 0
  br i1 %tobool143.not, label %land.lhs.true137.if.end204_crit_edge, label %if.then144

land.lhs.true137.if.end204_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end204

if.then144:                                       ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load139)
  %tobool150.not = icmp sgt i8 %bf.load139, -1
  br i1 %tobool150.not, label %if.then144.if.end170_crit_edge, label %if.then151

if.then144.if.end170_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

if.then151:                                       ; preds = %if.then144
  %packet_w153 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %126, i32 0, i32 6
  %131 = ptrtoint ptr %packet_w153 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %packet_w153, align 8
  %packet_r155 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %126, i32 0, i32 7
  %133 = ptrtoint ptr %packet_r155 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %packet_r155, align 4
  %sub156 = sub i32 %132, %134
  %mul157 = shl i32 %23, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub156, i32 %mul157)
  %cmp158.not = icmp ult i32 %sub156, %mul157
  br i1 %cmp158.not, label %if.then151.if.end170_crit_edge, label %if.then159

if.then151.if.end170_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

if.then159:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear163 = and i8 %bf.load139, 127
  %135 = ptrtoint ptr %trigger_start to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %bf.clear163, ptr %trigger_start, align 8
  %136 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %137, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.30) #11
  br label %if.end170

if.end170:                                        ; preds = %if.then159, %if.then151.if.end170_crit_edge, %if.then144.if.end170_crit_edge
  %138 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tx43, align 4
  %xrun172 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %139, i32 0, i32 10
  %140 = ptrtoint ptr %xrun172 to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load173 = load i8, ptr %xrun172, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load173)
  %tobool176.not = icmp sgt i8 %bf.load173, -1
  br i1 %tobool176.not, label %land.lhs.true177, label %if.end170.lor.lhs.false184_crit_edge

if.end170.lor.lhs.false184_crit_edge:             ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false184

land.lhs.true177:                                 ; preds = %if.end170
  %packet_w179 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %139, i32 0, i32 6
  %141 = ptrtoint ptr %packet_w179 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %packet_w179, align 8
  %packet_r181 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %139, i32 0, i32 7
  %143 = ptrtoint ptr %packet_r181 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %packet_r181, align 4
  %sub182 = sub i32 %142, %144
  call void @__sanitizer_cov_trace_cmp4(i32 %sub182, i32 %23)
  %cmp183.not = icmp ult i32 %sub182, %23
  br i1 %cmp183.not, label %land.lhs.true177.lor.lhs.false184_crit_edge, label %land.lhs.true177.if.then188_crit_edge

land.lhs.true177.if.then188_crit_edge:            ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then188

land.lhs.true177.lor.lhs.false184_crit_edge:      ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %land.lhs.true177.lor.lhs.false184_crit_edge, %if.end170.lor.lhs.false184_crit_edge
  %state186 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %139, i32 0, i32 2
  %145 = ptrtoint ptr %state186 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %state186, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %146)
  %cmp187 = icmp eq i32 %146, 2
  br i1 %cmp187, label %lor.lhs.false184.if.then188_crit_edge, label %if.else193

lor.lhs.false184.if.then188_crit_edge:            ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then188

if.then188:                                       ; preds = %lor.lhs.false184.if.then188_crit_edge, %land.lhs.true177.if.then188_crit_edge
  %bt_reg_pkt_w.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 11
  %147 = ptrtoint ptr %bt_reg_pkt_w.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bt_reg_pkt_w.i, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 4
  %bt_sram_bank2_base.i389 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 4
  %151 = ptrtoint ptr %bt_sram_bank2_base.i389 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bt_sram_bank2_base.i389, align 4
  %153 = ptrtoint ptr %152 to i32
  %and.i390 = and i32 %150, 65535
  %add.i391 = add i32 %and.i390, %153
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559022355, i32 %150)
  %cmp.i392 = icmp eq i32 %150, -559022355
  br i1 %cmp.i392, label %do.end.i393, label %do.body2.i

do.end.i393:                                      ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #10
  %154 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %155, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.54) #11
  br label %mtk_btcvsd_write_to_bt.exit

do.body2.i:                                       ; preds = %if.then188
  %tx_lock.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 14
  %call4.i394 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #8
  %tx_packet_buf.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 20
  br label %for.body.i404

for.body.i404:                                    ; preds = %for.body.i404.for.body.i404_crit_edge, %do.body2.i
  %i.03.i397 = phi i32 [ 0, %do.body2.i ], [ %inc22.i, %for.body.i404.for.body.i404_crit_edge ]
  %156 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %tx43, align 4
  %temp_packet_buf.i398 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %157, i32 0, i32 5
  %packet_size.i399 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %157, i32 0, i32 3
  %158 = ptrtoint ptr %packet_size.i399 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %packet_size.i399, align 4
  %mul.i400 = mul i32 %159, %i.03.i397
  %add.ptr.i401 = getelementptr i8, ptr %temp_packet_buf.i398, i32 %mul.i400
  %packet_r.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %157, i32 0, i32 7
  %160 = ptrtoint ptr %packet_r.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %packet_r.i, align 4
  %rem.i = srem i32 %161, 18
  %mul16.i = mul i32 %rem.i, %159
  %add.ptr17.i = getelementptr i8, ptr %tx_packet_buf.i, i32 %mul16.i
  %162 = call ptr @memcpy(ptr %add.ptr.i401, ptr %add.ptr17.i, i32 %159)
  %163 = load ptr, ptr %tx43, align 4
  %packet_r21.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %163, i32 0, i32 7
  %164 = ptrtoint ptr %packet_r21.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %packet_r21.i, align 4
  %inc.i402 = add i32 %165, 1
  store i32 %inc.i402, ptr %packet_r21.i, align 4
  %inc22.i = add nuw i32 %i.03.i397, 1
  %exitcond.not.i403 = icmp eq i32 %inc22.i, %23
  br i1 %exitcond.not.i403, label %for.end.i405, label %for.body.i404.for.body.i404_crit_edge

for.body.i404.for.body.i404_crit_edge:            ; preds = %for.body.i404
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i404

for.end.i405:                                     ; preds = %for.body.i404
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call4.i394) #8
  %166 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %tx43, align 4
  %mute.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %167, i32 0, i32 10
  %168 = ptrtoint ptr %mute.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %bf.load.i = load i8, ptr %mute.i, align 8
  %169 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i = icmp eq i8 %169, 0
  br i1 %tobool.not.i, label %if.then25.i, label %for.end.i405.if.end29.i_crit_edge

for.end.i405.if.end29.i_crit_edge:                ; preds = %for.end.i405
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then25.i:                                      ; preds = %for.end.i405
  %170 = inttoptr i32 %add.i391 to ptr
  %temp_packet_buf27.i = getelementptr %struct.mtk_btcvsd_snd_stream, ptr %167, i32 0, i32 5
  %171 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %19, label %for.cond9.preheader.lr.ph.i.i411 [
    i32 60, label %if.then25.i.if.then.i.i414_crit_edge
    i32 120, label %if.then25.i.if.then.i.i414_crit_edge470
    i32 20, label %if.then25.i.if.then.i.i414_crit_edge471
  ]

if.then25.i.if.then.i.i414_crit_edge471:          ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i414

if.then25.i.if.then.i.i414_crit_edge470:          ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i414

if.then25.i.if.then.i.i414_crit_edge:             ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i414

for.cond9.preheader.lr.ph.i.i411:                 ; preds = %if.then25.i
  %div1040.i.i408 = lshr i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp1147.not.i.i409 = icmp ult i32 %19, 2
  %umax57.i.i410 = tail call i32 @llvm.umax.i32(i32 %div1040.i.i408, i32 1) #8
  br label %for.cond9.preheader.i.i428

if.then.i.i414:                                   ; preds = %if.then25.i.if.then.i.i414_crit_edge, %if.then25.i.if.then.i.i414_crit_edge470, %if.then25.i.if.then.i.i414_crit_edge471
  %mul.i.i412 = mul i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul.i.i412)
  %cmp443.not.i.i413 = icmp ult i32 %mul.i.i412, 4
  br i1 %cmp443.not.i.i413, label %if.then.i.i414.if.end29.i_crit_edge, label %for.body.preheader.i.i416

if.then.i.i414.if.end29.i_crit_edge:              ; preds = %if.then.i.i414
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

for.body.preheader.i.i416:                        ; preds = %if.then.i.i414
  %div41.i.i415 = lshr i32 %mul.i.i412, 2
  br label %for.body.i.i424

for.body.i.i424:                                  ; preds = %for.body.i.i424.for.body.i.i424_crit_edge, %for.body.preheader.i.i416
  %dst_32.046.i.i417 = phi ptr [ %incdec.ptr5.i.i421, %for.body.i.i424.for.body.i.i424_crit_edge ], [ %170, %for.body.preheader.i.i416 ]
  %src_32.045.i.i418 = phi ptr [ %incdec.ptr.i.i420, %for.body.i.i424.for.body.i.i424_crit_edge ], [ %temp_packet_buf27.i, %for.body.preheader.i.i416 ]
  %i.044.i.i419 = phi i32 [ %inc.i.i422, %for.body.i.i424.for.body.i.i424_crit_edge ], [ 0, %for.body.preheader.i.i416 ]
  %incdec.ptr.i.i420 = getelementptr i32, ptr %src_32.045.i.i418, i32 1
  %172 = ptrtoint ptr %src_32.045.i.i418 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %src_32.045.i.i418, align 4
  %incdec.ptr5.i.i421 = getelementptr i32, ptr %dst_32.046.i.i417, i32 1
  %174 = ptrtoint ptr %dst_32.046.i.i417 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %dst_32.046.i.i417, align 4
  %inc.i.i422 = add nuw nsw i32 %i.044.i.i419, 1
  %exitcond.not.i.i423 = icmp eq i32 %inc.i.i422, %div41.i.i415
  br i1 %exitcond.not.i.i423, label %for.body.i.i424.if.end29.i_crit_edge, label %for.body.i.i424.for.body.i.i424_crit_edge

for.body.i.i424.for.body.i.i424_crit_edge:        ; preds = %for.body.i.i424
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i424

for.body.i.i424.if.end29.i_crit_edge:             ; preds = %for.body.i.i424
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

for.cond9.preheader.i.i428:                       ; preds = %for.end17.i.i441.for.cond9.preheader.i.i428_crit_edge, %for.cond9.preheader.lr.ph.i.i411
  %dst_16.055.i.i425 = phi ptr [ %170, %for.cond9.preheader.lr.ph.i.i411 ], [ %dst_16.2.i.i, %for.end17.i.i441.for.cond9.preheader.i.i428_crit_edge ]
  %src_16.054.i.i426 = phi ptr [ %temp_packet_buf27.i, %for.cond9.preheader.lr.ph.i.i411 ], [ %src_16.1.lcssa.i.i437, %for.end17.i.i441.for.cond9.preheader.i.i428_crit_edge ]
  %j.053.i.i427 = phi i32 [ 0, %for.cond9.preheader.lr.ph.i.i411 ], [ %inc24.i.i439, %for.end17.i.i441.for.cond9.preheader.i.i428_crit_edge ]
  br i1 %cmp1147.not.i.i409, label %for.cond9.preheader.i.i428.for.end17.i.i441_crit_edge, label %for.cond9.preheader.i.i428.for.body12.i.i436_crit_edge

for.cond9.preheader.i.i428.for.body12.i.i436_crit_edge: ; preds = %for.cond9.preheader.i.i428
  br label %for.body12.i.i436

for.cond9.preheader.i.i428.for.end17.i.i441_crit_edge: ; preds = %for.cond9.preheader.i.i428
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17.i.i441

for.body12.i.i436:                                ; preds = %for.body12.i.i436.for.body12.i.i436_crit_edge, %for.cond9.preheader.i.i428.for.body12.i.i436_crit_edge
  %dst_16.150.i.i429 = phi ptr [ %incdec.ptr14.i.i433, %for.body12.i.i436.for.body12.i.i436_crit_edge ], [ %dst_16.055.i.i425, %for.cond9.preheader.i.i428.for.body12.i.i436_crit_edge ]
  %src_16.149.i.i430 = phi ptr [ %incdec.ptr13.i.i432, %for.body12.i.i436.for.body12.i.i436_crit_edge ], [ %src_16.054.i.i426, %for.cond9.preheader.i.i428.for.body12.i.i436_crit_edge ]
  %i.148.i.i431 = phi i32 [ %inc16.i.i434, %for.body12.i.i436.for.body12.i.i436_crit_edge ], [ 0, %for.cond9.preheader.i.i428.for.body12.i.i436_crit_edge ]
  %incdec.ptr13.i.i432 = getelementptr i16, ptr %src_16.149.i.i430, i32 1
  %175 = ptrtoint ptr %src_16.149.i.i430 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %src_16.149.i.i430, align 2
  %incdec.ptr14.i.i433 = getelementptr i16, ptr %dst_16.150.i.i429, i32 1
  %177 = ptrtoint ptr %dst_16.150.i.i429 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %dst_16.150.i.i429, align 2
  %inc16.i.i434 = add nuw nsw i32 %i.148.i.i431, 1
  %exitcond58.not.i.i435 = icmp eq i32 %inc16.i.i434, %umax57.i.i410
  br i1 %exitcond58.not.i.i435, label %for.body12.i.i436.for.end17.i.i441_crit_edge, label %for.body12.i.i436.for.body12.i.i436_crit_edge

for.body12.i.i436.for.body12.i.i436_crit_edge:    ; preds = %for.body12.i.i436
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i.i436

for.body12.i.i436.for.end17.i.i441_crit_edge:     ; preds = %for.body12.i.i436
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17.i.i441

for.end17.i.i441:                                 ; preds = %for.body12.i.i436.for.end17.i.i441_crit_edge, %for.cond9.preheader.i.i428.for.end17.i.i441_crit_edge
  %src_16.1.lcssa.i.i437 = phi ptr [ %src_16.054.i.i426, %for.cond9.preheader.i.i428.for.end17.i.i441_crit_edge ], [ %incdec.ptr13.i.i432, %for.body12.i.i436.for.end17.i.i441_crit_edge ]
  %dst_16.1.lcssa.i.i438 = phi ptr [ %dst_16.055.i.i425, %for.cond9.preheader.i.i428.for.end17.i.i441_crit_edge ], [ %incdec.ptr14.i.i433, %for.body12.i.i436.for.end17.i.i441_crit_edge ]
  %dst_16.2.i.i = getelementptr i16, ptr %dst_16.1.lcssa.i.i438, i32 1
  %inc24.i.i439 = add nuw i32 %j.053.i.i427, 1
  %exitcond59.not.i.i440 = icmp eq i32 %inc24.i.i439, %21
  br i1 %exitcond59.not.i.i440, label %for.end17.i.i441.if.end29.i_crit_edge, label %for.end17.i.i441.for.cond9.preheader.i.i428_crit_edge

for.end17.i.i441.for.cond9.preheader.i.i428_crit_edge: ; preds = %for.end17.i.i441
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond9.preheader.i.i428

for.end17.i.i441.if.end29.i_crit_edge:            ; preds = %for.end17.i.i441
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %for.end17.i.i441.if.end29.i_crit_edge, %for.body.i.i424.if.end29.i_crit_edge, %if.then.i.i414.if.end29.i_crit_edge, %for.end.i405.if.end29.i_crit_edge
  %178 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %tx43, align 4
  %packet_length31.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %179, i32 0, i32 14, i32 2
  %180 = ptrtoint ptr %packet_length31.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %19, ptr %packet_length31.i, align 4
  %181 = load ptr, ptr %tx43, align 4
  %packet_num34.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %181, i32 0, i32 14, i32 3
  %182 = ptrtoint ptr %packet_num34.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %21, ptr %packet_num34.i, align 8
  %183 = load ptr, ptr %tx43, align 4
  %buffer_info37.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %183, i32 0, i32 14
  %184 = ptrtoint ptr %buffer_info37.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %buffer_info37.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp384.not.i = icmp eq i32 %185, 0
  br i1 %cmp384.not.i, label %if.end29.i.if.then51.critedge.i_crit_edge, label %if.end29.i.for.body40.i_crit_edge

if.end29.i.for.body40.i_crit_edge:                ; preds = %if.end29.i
  br label %for.body40.i

if.end29.i.if.then51.critedge.i_crit_edge:        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51.critedge.i

for.cond35.i:                                     ; preds = %for.body40.i
  %inc48.i = add nuw i32 %i.15.i, 1
  %exitcond7.not.i = icmp eq i32 %inc48.i, %185
  br i1 %exitcond7.not.i, label %for.cond35.i.if.then51.critedge.i_crit_edge, label %for.cond35.i.for.body40.i_crit_edge

for.cond35.i.for.body40.i_crit_edge:              ; preds = %for.cond35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body40.i

for.cond35.i.if.then51.critedge.i_crit_edge:      ; preds = %for.cond35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51.critedge.i

for.body40.i:                                     ; preds = %for.cond35.i.for.body40.i_crit_edge, %if.end29.i.for.body40.i_crit_edge
  %i.15.i = phi i32 [ %inc48.i, %for.cond35.i.for.body40.i_crit_edge ], [ 0, %if.end29.i.for.body40.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_btcvsd_snd_stream, ptr %183, i32 0, i32 14, i32 1, i32 %i.15.i
  %186 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %187, i32 %add.i391)
  %cmp43.i = icmp eq i32 %187, %add.i391
  br i1 %cmp43.i, label %for.body40.i.if.end85.i_crit_edge, label %for.cond35.i

for.body40.i.if.end85.i_crit_edge:                ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85.i

if.then51.critedge.i:                             ; preds = %for.cond35.i.if.then51.critedge.i_crit_edge, %if.end29.i.if.then51.critedge.i_crit_edge
  %call61.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #8
  %188 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %tx43, align 4
  %buffer_info67.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %189, i32 0, i32 14
  %190 = ptrtoint ptr %buffer_info67.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %buffer_info67.i, align 8
  %inc69.i = add i32 %191, 1
  store i32 %inc69.i, ptr %buffer_info67.i, align 8
  %192 = load ptr, ptr %tx43, align 4
  %buffer_info71.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %192, i32 0, i32 14
  %193 = ptrtoint ptr %buffer_info71.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %buffer_info71.i, align 8
  %sub.i = add i32 %194, -1
  %arrayidx76.i = getelementptr %struct.mtk_btcvsd_snd_stream, ptr %192, i32 0, i32 14, i32 1, i32 %sub.i
  %195 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %add.i391, ptr %arrayidx76.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call61.i) #8
  %196 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev, align 4
  %198 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %tx43, align 4
  %buffer_info83.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %199, i32 0, i32 14
  %200 = ptrtoint ptr %buffer_info83.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %buffer_info83.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %197, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i32 noundef %add.i391, i32 noundef %201) #11
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then51.critedge.i, %for.body40.i.if.end85.i_crit_edge
  %202 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %tx43, align 4
  %mute87.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %203, i32 0, i32 10
  %204 = ptrtoint ptr %mute87.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %bf.load88.i = load i8, ptr %mute87.i, align 8
  %205 = and i8 %bf.load88.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool92.not.i = icmp eq i8 %205, 0
  br i1 %tobool92.not.i, label %if.end85.i.mtk_btcvsd_write_to_bt.exit_crit_edge, label %if.then93.i

if.end85.i.mtk_btcvsd_write_to_bt.exit_crit_edge: ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_btcvsd_write_to_bt.exit

if.then93.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @btcvsd_tx_clean_buffer(ptr noundef %dev) #8
  br label %mtk_btcvsd_write_to_bt.exit

mtk_btcvsd_write_to_bt.exit:                      ; preds = %if.then93.i, %if.end85.i.mtk_btcvsd_write_to_bt.exit_crit_edge, %do.end.i393
  %206 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %tx43, align 4
  %rw_cnt191 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %207, i32 0, i32 11
  %208 = ptrtoint ptr %rw_cnt191 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %rw_cnt191, align 4
  %inc192 = add i32 %209, 1
  store i32 %inc192, ptr %rw_cnt191, align 4
  br label %if.end204

if.else193:                                       ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set198 = or i8 %bf.load173, -128
  %210 = ptrtoint ptr %xrun172 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %bf.set198, ptr %xrun172, align 8
  %211 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %212, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.30) #11
  br label %if.end204

if.end204:                                        ; preds = %if.else193, %mtk_btcvsd_write_to_bt.exit, %land.lhs.true137.if.end204_crit_edge, %if.end125.if.end204_crit_edge
  %213 = ptrtoint ptr %bt_reg_ctl to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %bt_reg_ctl, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %214, align 4
  %and206 = and i32 %216, 2116026367
  store i32 %and206, ptr %214, align 4
  %217 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %rx, align 4
  %state208 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %state208 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %state208, align 8
  %.off344 = add i32 %220, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off344)
  %switch345 = icmp ult i32 %.off344, 2
  br i1 %switch345, label %if.then214, label %if.end204.if.end220_crit_edge

if.end204.if.end220_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end220

if.then214:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  %wait_flag = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %218, i32 0, i32 10
  %221 = ptrtoint ptr %wait_flag to i32
  call void @__asan_load1_noabort(i32 %221)
  %bf.load216 = load i8, ptr %wait_flag, align 8
  %bf.set218 = or i8 %bf.load216, 8
  store i8 %bf.set218, ptr %wait_flag, align 8
  %rx_wait = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %rx_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %222 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rx, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %225) #8
  br label %if.end220

if.end220:                                        ; preds = %if.then214, %if.end204.if.end220_crit_edge
  %226 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %tx43, align 4
  %state222 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %state222 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %state222, align 8
  %.off346 = add i32 %229, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off346)
  %switch347 = icmp ult i32 %.off346, 2
  br i1 %switch347, label %if.then228, label %if.end220.cleanup239_crit_edge

if.end220.cleanup239_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup239

if.then228:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  %wait_flag230 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %227, i32 0, i32 10
  %230 = ptrtoint ptr %wait_flag230 to i32
  call void @__asan_load1_noabort(i32 %230)
  %bf.load231 = load i8, ptr %wait_flag230, align 8
  %bf.set233 = or i8 %bf.load231, 8
  store i8 %bf.set233, ptr %wait_flag230, align 8
  %tx_wait = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %tx_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %231 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %tx43, align 4
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %232, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %234) #8
  br label %cleanup239

irq_handler_exit:                                 ; preds = %cleanup, %do.end33, %do.end26, %do.end
  %bt_reg_ctl237 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %dev, i32 0, i32 12
  %235 = ptrtoint ptr %bt_reg_ctl237 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %bt_reg_ctl237, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 4
  %and238 = and i32 %238, 2116026367
  store i32 %and238, ptr %236, align 4
  br label %cleanup239

cleanup239:                                       ; preds = %irq_handler_exit, %if.then228, %if.end220.cleanup239_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_btcvsd_snd_set_state(ptr nocapture noundef %bt, ptr nocapture noundef %bt_stream, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_btcvsd_snd_set_state.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_btcvsd_snd_set_state, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !244

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bt, align 4
  %stream = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %bt_stream, i32 0, i32 1
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream, align 4
  %tx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 18
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx, align 4
  %state3 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state3, align 8
  %rx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 19
  %8 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx, align 4
  %state4 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state4, align 8
  %irq_disabled = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 13
  %12 = ptrtoint ptr %irq_disabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %irq_disabled, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_btcvsd_snd_set_state.__UNIQUE_ID_ddebug238, ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef %3, i32 noundef %state, i32 noundef %7, i32 noundef %11, i32 noundef %bf.cast) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state5 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %bt_stream, i32 0, i32 2
  %13 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %state, ptr %state5, align 8
  %tx6 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 18
  %14 = ptrtoint ptr %tx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx6, align 4
  %state7 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %land.lhs.true, label %do.end.if.else_crit_edge

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %rx8 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 19
  %18 = ptrtoint ptr %rx8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx8, align 4
  %state9 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10 = icmp eq i32 %21, 0
  br i1 %cmp10, label %if.then11, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then11:                                        ; preds = %land.lhs.true
  %irq_disabled12 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 13
  %22 = ptrtoint ptr %irq_disabled12 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load13 = load i8, ptr %irq_disabled12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load13)
  %tobool16.not = icmp sgt i8 %bf.load13, -1
  br i1 %tobool16.not, label %if.then17, label %if.then11.if.end33_crit_edge

if.then11.if.end33_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then17:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %irq_id = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 1
  %23 = ptrtoint ptr %irq_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq_id, align 4
  tail call void @disable_irq(i32 noundef %24) #8
  %infra.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 2
  %25 = ptrtoint ptr %infra.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %infra.i, align 4
  %infra_misc_offset.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 5
  %27 = ptrtoint ptr %infra_misc_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %infra_misc_offset.i, align 4
  %conn_bt_cvsd_mask.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 6
  %29 = ptrtoint ptr %conn_bt_cvsd_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %conn_bt_cvsd_mask.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %31 = ptrtoint ptr %irq_disabled12 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load19 = load i8, ptr %irq_disabled12, align 4
  %bf.set = or i8 %bf.load19, -128
  store i8 %bf.set, ptr %irq_disabled12, align 4
  br label %if.end33

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %irq_disabled21 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 13
  %32 = ptrtoint ptr %irq_disabled21 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load22 = load i8, ptr %irq_disabled21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load22)
  %tobool25.not = icmp sgt i8 %bf.load22, -1
  br i1 %tobool25.not, label %if.else.if.end33_crit_edge, label %if.then26

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %irq_id27 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 1
  %33 = ptrtoint ptr %irq_id27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq_id27, align 4
  tail call void @enable_irq(i32 noundef %34) #8
  %infra.i49 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 2
  %35 = ptrtoint ptr %infra.i49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %infra.i49, align 4
  %infra_misc_offset.i50 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 5
  %37 = ptrtoint ptr %infra_misc_offset.i50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %infra_misc_offset.i50, align 4
  %conn_bt_cvsd_mask.i51 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 6
  %39 = ptrtoint ptr %conn_bt_cvsd_mask.i51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %conn_bt_cvsd_mask.i51, align 4
  %call.i.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %41 = ptrtoint ptr %irq_disabled21 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load29 = load i8, ptr %irq_disabled21, align 4
  %bf.clear30 = and i8 %bf.load29, 127
  store i8 %bf.clear30, ptr %irq_disabled21, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.else.if.end33_crit_edge, %if.then17, %if.then11.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btcvsd_tx_clean_buffer(ptr noundef %bt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %band1 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 22
  %0 = ptrtoint ptr %band1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %tx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 18
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx, align 4
  %temp_packet_buf = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %3, i32 0, i32 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = call ptr @memset(ptr %temp_packet_buf, i32 170, i32 180)
  br label %do.body5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memcpy(ptr %temp_packet_buf, ptr @table_msbc_silence, i32 180)
  br label %do.body5

do.body5:                                         ; preds = %if.else, %if.then
  %tx_lock = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 14
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #8
  %tx10 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 18
  %6 = ptrtoint ptr %tx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx10, align 4
  %buffer_info = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_info, align 8
  %10 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bt, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %1, i32 noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp152.not = icmp eq i32 %9, 0
  br i1 %cmp152.not, label %do.body5.for.end_crit_edge, label %do.body5.for.body_crit_edge

do.body5.for.body_crit_edge:                      ; preds = %do.body5
  br label %for.body

do.body5.for.end_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %mtk_btcvsd_snd_data_transfer.exit.for.body_crit_edge, %do.body5.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %mtk_btcvsd_snd_data_transfer.exit.for.body_crit_edge ], [ 0, %do.body5.for.body_crit_edge ]
  %12 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bt, align 4
  %14 = ptrtoint ptr %tx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx10, align 4
  %arrayidx = getelementptr %struct.mtk_btcvsd_snd_stream, ptr %15, i32 0, i32 14, i32 1, i32 %i.03
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef %17) #11
  %18 = ptrtoint ptr %tx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx10, align 4
  %arrayidx26 = getelementptr %struct.mtk_btcvsd_snd_stream, ptr %19, i32 0, i32 14, i32 1, i32 %i.03
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx26, align 4
  %22 = inttoptr i32 %21 to ptr
  %temp_packet_buf28 = getelementptr %struct.mtk_btcvsd_snd_stream, ptr %19, i32 0, i32 5
  %packet_length = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %19, i32 0, i32 14, i32 2
  %23 = ptrtoint ptr %packet_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %packet_length, align 4
  %packet_num = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %19, i32 0, i32 14, i32 3
  %25 = ptrtoint ptr %packet_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %packet_num, align 8
  %27 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %24, label %for.cond6.preheader.i [
    i32 60, label %for.body.if.then.i_crit_edge
    i32 120, label %for.body.if.then.i_crit_edge8
    i32 20, label %for.body.if.then.i_crit_edge9
  ]

for.body.if.then.i_crit_edge9:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.body.if.then.i_crit_edge8:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.body.if.then.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.cond6.preheader.i:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp752.not.i = icmp eq i32 %26, 0
  br i1 %cmp752.not.i, label %for.cond6.preheader.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge, label %for.cond9.preheader.lr.ph.i

for.cond6.preheader.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge: ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_btcvsd_snd_data_transfer.exit

for.cond9.preheader.lr.ph.i:                      ; preds = %for.cond6.preheader.i
  %div1040.i = lshr i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp1147.not.i = icmp ult i32 %24, 2
  %umax57.i = tail call i32 @llvm.umax.i32(i32 %div1040.i, i32 1) #8
  br label %for.cond9.preheader.i

if.then.i:                                        ; preds = %for.body.if.then.i_crit_edge, %for.body.if.then.i_crit_edge8, %for.body.if.then.i_crit_edge9
  %mul.i = mul i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul.i)
  %cmp443.not.i = icmp ult i32 %mul.i, 4
  br i1 %cmp443.not.i, label %if.then.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge, label %for.body.preheader.i

if.then.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_btcvsd_snd_data_transfer.exit

for.body.preheader.i:                             ; preds = %if.then.i
  %div41.i = lshr i32 %mul.i, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %dst_32.046.i = phi ptr [ %incdec.ptr5.i, %for.body.i.for.body.i_crit_edge ], [ %22, %for.body.preheader.i ]
  %src_32.045.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %temp_packet_buf28, %for.body.preheader.i ]
  %i.044.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i32, ptr %src_32.045.i, i32 1
  %28 = ptrtoint ptr %src_32.045.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_32.045.i, align 4
  %incdec.ptr5.i = getelementptr i32, ptr %dst_32.046.i, i32 1
  %30 = ptrtoint ptr %dst_32.046.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %dst_32.046.i, align 4
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div41.i
  br i1 %exitcond.not.i, label %for.body.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_btcvsd_snd_data_transfer.exit

for.cond9.preheader.i:                            ; preds = %for.end17.i.for.cond9.preheader.i_crit_edge, %for.cond9.preheader.lr.ph.i
  %dst_16.055.i = phi ptr [ %22, %for.cond9.preheader.lr.ph.i ], [ %dst_16.2.i, %for.end17.i.for.cond9.preheader.i_crit_edge ]
  %src_16.054.i = phi ptr [ %temp_packet_buf28, %for.cond9.preheader.lr.ph.i ], [ %src_16.1.lcssa.i, %for.end17.i.for.cond9.preheader.i_crit_edge ]
  %j.053.i = phi i32 [ 0, %for.cond9.preheader.lr.ph.i ], [ %inc24.i, %for.end17.i.for.cond9.preheader.i_crit_edge ]
  br i1 %cmp1147.not.i, label %for.cond9.preheader.i.for.end17.i_crit_edge, label %for.cond9.preheader.i.for.body12.i_crit_edge

for.cond9.preheader.i.for.body12.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body12.i

for.cond9.preheader.i.for.end17.i_crit_edge:      ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.cond9.preheader.i.for.body12.i_crit_edge
  %dst_16.150.i = phi ptr [ %incdec.ptr14.i, %for.body12.i.for.body12.i_crit_edge ], [ %dst_16.055.i, %for.cond9.preheader.i.for.body12.i_crit_edge ]
  %src_16.149.i = phi ptr [ %incdec.ptr13.i, %for.body12.i.for.body12.i_crit_edge ], [ %src_16.054.i, %for.cond9.preheader.i.for.body12.i_crit_edge ]
  %i.148.i = phi i32 [ %inc16.i, %for.body12.i.for.body12.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body12.i_crit_edge ]
  %incdec.ptr13.i = getelementptr i16, ptr %src_16.149.i, i32 1
  %31 = ptrtoint ptr %src_16.149.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %src_16.149.i, align 2
  %incdec.ptr14.i = getelementptr i16, ptr %dst_16.150.i, i32 1
  %33 = ptrtoint ptr %dst_16.150.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %dst_16.150.i, align 2
  %inc16.i = add nuw nsw i32 %i.148.i, 1
  %exitcond58.not.i = icmp eq i32 %inc16.i, %umax57.i
  br i1 %exitcond58.not.i, label %for.body12.i.for.end17.i_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i

for.body12.i.for.end17.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17.i

for.end17.i:                                      ; preds = %for.body12.i.for.end17.i_crit_edge, %for.cond9.preheader.i.for.end17.i_crit_edge
  %src_16.1.lcssa.i = phi ptr [ %src_16.054.i, %for.cond9.preheader.i.for.end17.i_crit_edge ], [ %incdec.ptr13.i, %for.body12.i.for.end17.i_crit_edge ]
  %dst_16.1.lcssa.i = phi ptr [ %dst_16.055.i, %for.cond9.preheader.i.for.end17.i_crit_edge ], [ %incdec.ptr14.i, %for.body12.i.for.end17.i_crit_edge ]
  %dst_16.2.i = getelementptr i16, ptr %dst_16.1.lcssa.i, i32 1
  %inc24.i = add nuw i32 %j.053.i, 1
  %exitcond59.not.i = icmp eq i32 %inc24.i, %26
  br i1 %exitcond59.not.i, label %for.end17.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge, label %for.end17.i.for.cond9.preheader.i_crit_edge

for.end17.i.for.cond9.preheader.i_crit_edge:      ; preds = %for.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond9.preheader.i

for.end17.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge: ; preds = %for.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_btcvsd_snd_data_transfer.exit

mtk_btcvsd_snd_data_transfer.exit:                ; preds = %for.end17.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge, %for.body.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge, %if.then.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge, %for.cond6.preheader.i.mtk_btcvsd_snd_data_transfer.exit_crit_edge
  %inc = add nuw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %mtk_btcvsd_snd_data_transfer.exit.for.end_crit_edge, label %mtk_btcvsd_snd_data_transfer.exit.for.body_crit_edge

mtk_btcvsd_snd_data_transfer.exit.for.body_crit_edge: ; preds = %mtk_btcvsd_snd_data_transfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

mtk_btcvsd_snd_data_transfer.exit.for.end_crit_edge: ; preds = %mtk_btcvsd_snd_data_transfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %mtk_btcvsd_snd_data_transfer.exit.for.end_crit_edge, %do.body5.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_btcvsd_snd_component_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @mtk_btcvsd_snd_controls, i32 noundef 9) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcm_btcvsd_open(ptr nocapture noundef readonly %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_pcm_btcvsd_open.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_pcm_btcvsd_open, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !244

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_pcm_btcvsd_open.__UNIQUE_ID_ddebug239, ptr noundef %5, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88, i32 noundef %7, ptr noundef %substream) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @mtk_btcvsd_hardware) #8
  %stream5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %tx.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx.i, align 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 336)
  %tx_packet_buf.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 20
  %13 = call ptr @memset(ptr %tx_packet_buf.i, i32 0, i32 1080)
  br label %if.end11

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %rx.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 19
  %14 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx.i, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 336)
  %rx_packet_buf.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 21
  %17 = call ptr @memset(ptr %rx_packet_buf.i, i32 0, i32 2048)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %rx.i.sink40 = phi ptr [ %rx.i, %if.else ], [ %tx.i, %if.then6 ]
  %.sink38 = phi i32 [ 32, %if.else ], [ 60, %if.then6 ]
  %.sink35 = phi i32 [ 2048, %if.else ], [ 1080, %if.then6 ]
  %.sink = phi i32 [ 1, %if.else ], [ 0, %if.then6 ]
  %18 = ptrtoint ptr %rx.i.sink40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx.i.sink40, align 4
  %packet_size.i21 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %packet_size.i21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink38, ptr %packet_size.i21, align 4
  %21 = load ptr, ptr %rx.i.sink40, align 4
  %buf_size.i22 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %buf_size.i22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink35, ptr %buf_size.i22, align 8
  %23 = load ptr, ptr %rx.i.sink40, align 4
  %timeout.i23 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %timeout.i23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i24 = load i8, ptr %timeout.i23, align 8
  %bf.clear.i25 = and i8 %bf.load.i24, -65
  store i8 %bf.clear.i25, ptr %timeout.i23, align 8
  %25 = load ptr, ptr %rx.i.sink40, align 4
  %rw_cnt.i26 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %rw_cnt.i26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rw_cnt.i26, align 4
  %27 = load ptr, ptr %rx.i.sink40, align 4
  %stream.i27 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %stream.i27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %stream.i27, align 4
  %29 = load ptr, ptr %rx.i.sink40, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %substream, ptr %29, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcm_btcvsd_close(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %tx.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 18
  %rx.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 19
  %retval.0.in.i = select i1 %cmp.i, ptr %tx.i, ptr %rx.i
  %6 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.0.i10 = load ptr, ptr %retval.0.in.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_pcm_btcvsd_close.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_pcm_btcvsd_close, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !244

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %9 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_pcm_btcvsd_close.__UNIQUE_ID_ddebug240, ptr noundef %8, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, i32 noundef %10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @mtk_btcvsd_snd_set_state(ptr noundef %3, ptr noundef %retval.0.i10, i32 noundef 0)
  %11 = ptrtoint ptr %retval.0.i10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %retval.0.i10, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcm_btcvsd_hw_params(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %tx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx, align 4
  %packet_size = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %packet_size, align 4
  %rem = urem i32 %7, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp2.not = icmp eq i32 %rem, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, i32 noundef %7) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.i.i10 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %14 = ptrtoint ptr %arrayidx.i.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i10, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %16 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 52
  %18 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %dma_bytes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcm_btcvsd_hw_free(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @btcvsd_tx_clean_buffer(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcm_btcvsd_prepare(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %tx.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 18
  %rx.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 19
  %retval.0.in.i = select i1 %cmp.i, ptr %tx.i, ptr %rx.i
  %6 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.0.i8 = load ptr, ptr %retval.0.in.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_pcm_btcvsd_prepare.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_pcm_btcvsd_prepare, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !244

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %9 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_pcm_btcvsd_prepare.__UNIQUE_ID_ddebug241, ptr noundef %8, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.94, i32 noundef %10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @mtk_btcvsd_snd_set_state(ptr noundef %3, ptr noundef %retval.0.i8, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcm_btcvsd_trigger(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %tx.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 18
  %rx.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 19
  %retval.0.in.i = select i1 %cmp.i, ptr %tx.i, ptr %rx.i
  %6 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.0.i26 = load ptr, ptr %retval.0.in.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_pcm_btcvsd_trigger.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_pcm_btcvsd_trigger, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !244

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %9 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_pcm_btcvsd_trigger.__UNIQUE_ID_ddebug242, ptr noundef %8, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i32 noundef %10, i32 noundef %cmd) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %11 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %cmd, label %do.end.cleanup_crit_edge [
    i32 1, label %do.end.sw.bb_crit_edge
    i32 6, label %do.end.sw.bb_crit_edge28
    i32 0, label %do.end.sw.bb7_crit_edge
    i32 5, label %do.end.sw.bb7_crit_edge29
  ]

do.end.sw.bb7_crit_edge29:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

do.end.sw.bb7_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

do.end.sw.bb_crit_edge28:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge28
  %packet_r = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %retval.0.i26, i32 0, i32 7
  %packet_w = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %retval.0.i26, i32 0, i32 6
  %cond.in = select i1 %cmp.i, ptr %packet_r, ptr %packet_w
  %12 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond = load i32, ptr %cond.in, align 4
  %prev_packet_idx = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %retval.0.i26, i32 0, i32 9
  %13 = ptrtoint ptr %prev_packet_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %prev_packet_idx, align 4
  %prev_frame = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %retval.0.i26, i32 0, i32 8
  %14 = ptrtoint ptr %prev_frame to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %prev_frame, align 8
  %trigger_start = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %retval.0.i26, i32 0, i32 10
  %15 = ptrtoint ptr %trigger_start to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %trigger_start, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %trigger_start, align 8
  br label %cleanup

sw.bb7:                                           ; preds = %do.end.sw.bb7_crit_edge, %do.end.sw.bb7_crit_edge29
  %trigger_start8 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %retval.0.i26, i32 0, i32 10
  %16 = ptrtoint ptr %trigger_start8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load9 = load i8, ptr %trigger_start8, align 8
  %bf.clear10 = and i8 %bf.load9, -17
  store i8 %bf.clear10, ptr %trigger_start8, align 8
  tail call fastcc void @mtk_btcvsd_snd_set_state(ptr noundef %3, ptr noundef %retval.0.i26, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb7 ], [ 0, %sw.bb ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcm_btcvsd_pointer(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %tx_lock = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 14
  %tx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 18
  %rx_lock = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 15
  %rx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 19
  %bt_stream.0.in = select i1 %cmp, ptr %tx, ptr %rx
  %lock.0 = select i1 %cmp, ptr %tx_lock, ptr %rx_lock
  %6 = ptrtoint ptr %bt_stream.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %bt_stream.0 = load ptr, ptr %bt_stream.0.in, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.0) #8
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx, align 4
  %packet_r = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %10, i32 0, i32 7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx, align 4
  %packet_w = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %12, i32 0, i32 6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %packet_r, %cond.true ], [ %packet_w, %cond.false ]
  %13 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond = load i32, ptr %cond.in, align 4
  %prev_packet_idx = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %bt_stream.0, i32 0, i32 9
  %14 = ptrtoint ptr %prev_packet_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prev_packet_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %15)
  %cmp12.not = icmp slt i32 %cond, %15
  %sub = sub i32 %cond, %15
  %sub19 = xor i32 %cond, -2147483648
  %add = sub i32 -2147483648, %15
  %add20 = add i32 %add, %sub19
  %packet_diff.0 = select i1 %cmp12.not, i32 %add20, i32 %sub
  %16 = ptrtoint ptr %prev_packet_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %prev_packet_idx, align 4
  %packet_size = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %bt_stream.0, i32 0, i32 3
  %17 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %packet_size, align 4
  %mul = mul i32 %18, %packet_diff.0
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %19 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %runtime1.i, align 4
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format.i, align 4
  %23 = add i32 %22, -10
  %switch.and.i = and i32 %23, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %24 = select i1 %switch.selectcmp.i, i32 2, i32 1
  %shr4.i = ashr i32 %mul, %24
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 15
  %25 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channels.i, align 8
  %div.i = udiv i32 %shr4.i, %26
  %prev_frame = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %bt_stream.0, i32 0, i32 8
  %27 = ptrtoint ptr %prev_frame to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prev_frame, align 8
  %add24 = add i32 %28, %div.i
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 18
  %29 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buffer_size, align 4
  %rem = urem i32 %add24, %30
  store i32 %rem, ptr %prev_frame, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.0, i32 noundef %call4) #8
  ret i32 %rem
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pcm_btcvsd_copy(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tx.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx.i, align 4
  %packet_size1.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %packet_size1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %packet_size1.i, align 4
  %call.i = tail call i64 @sched_clock() #8
  %10 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx.i, align 4
  %time_stamp.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %time_stamp.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call.i, ptr %time_stamp.i, align 8
  %13 = load ptr, ptr %tx.i, align 4
  %packet_w.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %packet_w.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %packet_w.i, align 8
  %packet_r.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %packet_r.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %packet_r.i, align 4
  %sub.i = sub i32 %15, %17
  %conv.i = sext i32 %sub.i to i64
  %conv5.i = zext i32 %9 to i64
  %mul.i = mul nuw nsw i64 %conv5.i, 16000
  %mul7.i = mul i64 %mul.i, %conv.i
  %div82.i = lshr exact i64 %mul7.i, 7
  %buf_data_equivalent_time.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %13, i32 0, i32 13
  %18 = ptrtoint ptr %buf_data_equivalent_time.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %div82.i, ptr %buf_data_equivalent_time.i, align 8
  %19 = load ptr, ptr %tx.i, align 4
  %buf_data_equivalent_time11.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %buf_data_equivalent_time11.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %buf_data_equivalent_time11.i, align 8
  %mul12.i = mul i64 %21, 1000
  store i64 %mul12.i, ptr %buf_data_equivalent_time11.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not12.i = icmp eq i32 %count, 0
  br i1 %tobool.not12.i, label %if.then.if.end_crit_edge, label %do.body13.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body13.lr.ph.i:                                ; preds = %if.then
  %tx_lock.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 14
  %tx_packet_buf.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 20
  br label %do.body13.i

do.body13.i:                                      ; preds = %while.cond.backedge.i.do.body13.i_crit_edge, %do.body13.lr.ph.i
  %count.addr.014.i = phi i32 [ %count, %do.body13.lr.ph.i ], [ %count.addr.0.be.i, %while.cond.backedge.i.do.body13.i_crit_edge ]
  %cur_buf_ofs.013.i = phi i32 [ 0, %do.body13.lr.ph.i ], [ %cur_buf_ofs.0.be.i, %while.cond.backedge.i.do.body13.i_crit_edge ]
  %call16.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #8
  %22 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx.i, align 4
  %buf_size.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_size.i, align 8
  %packet_w21.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %23, i32 0, i32 6
  %26 = ptrtoint ptr %packet_w21.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %packet_w21.i, align 8
  %packet_r23.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %23, i32 0, i32 7
  %28 = ptrtoint ptr %packet_r23.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %packet_r23.i, align 4
  %sub24.neg.i = sub i32 %29, %27
  %mul25.neg.i = mul i32 %sub24.neg.i, %9
  %sub26.i = add i32 %mul25.neg.i, %25
  %rem.i = srem i32 %27, 18
  %mul29.i = mul i32 %rem.i, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26.i)
  %tobool31.not.i = icmp eq i32 %sub26.i, 0
  br i1 %tobool31.not.i, label %if.then.i, label %if.end36.i

if.then.i:                                        ; preds = %do.body13.i
  %30 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx.i, align 4
  %call33.i = tail call fastcc i32 @wait_for_bt_irq(ptr noundef %3, ptr noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.then.i.while.cond.backedge.i_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i.while.cond.backedge.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i

if.end36.i:                                       ; preds = %do.body13.i
  %rem37.i = urem i32 %count.addr.014.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem37.i)
  %cmp38.not.i = icmp eq i32 %rem37.i, 0
  br i1 %cmp38.not.i, label %lor.lhs.false.i, label %if.end36.i.do.end46.i_crit_edge

if.end36.i.do.end46.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46.i

lor.lhs.false.i:                                  ; preds = %if.end36.i
  %rem40.i = urem i32 %sub26.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem40.i)
  %cmp41.not.i = icmp eq i32 %rem40.i, 0
  br i1 %cmp41.not.i, label %lor.lhs.false.i.if.end51.i_crit_edge, label %lor.lhs.false.i.do.end46.i_crit_edge

lor.lhs.false.i.do.end46.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46.i

lor.lhs.false.i.if.end51.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

do.end46.i:                                       ; preds = %lor.lhs.false.i.do.end46.i_crit_edge, %if.end36.i.do.end46.i_crit_edge
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef %count.addr.014.i, i32 noundef %sub26.i, i32 noundef %9) #11
  %sub48.i = sub nuw i32 %count.addr.014.i, %rem37.i
  %rem49.i = urem i32 %sub26.i, %9
  %sub50.i = sub i32 %sub26.i, %rem49.i
  br label %if.end51.i

if.end51.i:                                       ; preds = %do.end46.i, %lor.lhs.false.i.if.end51.i_crit_edge
  %avail.0.i = phi i32 [ %sub50.i, %do.end46.i ], [ %sub26.i, %lor.lhs.false.i.if.end51.i_crit_edge ]
  %count.addr.1.i = phi i32 [ %sub48.i, %do.end46.i ], [ %count.addr.014.i, %lor.lhs.false.i.if.end51.i_crit_edge ]
  %34 = tail call i32 @llvm.umin.i32(i32 %count.addr.1.i, i32 %avail.0.i) #8
  %35 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx.i, align 4
  %buf_size57.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %buf_size57.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_size57.i, align 8
  %sub58.i = sub i32 %38, %mul29.i
  %39 = tail call i32 @llvm.smin.i32(i32 %34, i32 %sub58.i) #8
  %add.ptr.i = getelementptr i8, ptr %tx_packet_buf.i, i32 %mul29.i
  %add.ptr63.i = getelementptr i8, ptr %buf, i32 %cur_buf_ofs.013.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp9.i.i.i = icmp slt i32 %39, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end51.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.do.end69.i_crit_edge, label %if.then27.i.i.i, !prof !245

land.rhs16.i.i.i.do.end69.i_crit_edge:            ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.84, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %do.end69.i

if.then.i.i.i.i:                                  ; preds = %if.end51.i
  tail call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %39, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.86, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %40 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr63.i, i32 %39, i32 -1226833920) #12, !srcloc !246
  %asmresult.i.i.i = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !245

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef %39) #8
  %41 = tail call i32 @llvm.read_register.i32(metadata !234) #8
  %and.i.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !247
  %and.i.i.i.i.i = and i32 %43, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr.i, ptr noundef %add.ptr63.i, i32 noundef %39) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #8, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %39, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %39, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %do.body73.i, label %if.then11.i.i.i, !prof !245

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = sub i32 %39, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i.i
  %44 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %do.end69.i

do.end69.i:                                       ; preds = %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.do.end69.i_crit_edge
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98) #11
  br label %if.end

do.body73.i:                                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call81.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #8
  %div86.i = udiv i32 %39, %9
  %47 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx.i, align 4
  %packet_w88.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %packet_w88.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %packet_w88.i, align 8
  %add.i = add i32 %50, %div86.i
  store i32 %add.i, ptr %packet_w88.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call81.i) #8
  %add90.i = add i32 %39, %cur_buf_ofs.013.i
  %sub91.i = sub i32 %count.addr.1.i, %39
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %do.body73.i, %if.then.i.while.cond.backedge.i_crit_edge
  %cur_buf_ofs.0.be.i = phi i32 [ %add90.i, %do.body73.i ], [ %cur_buf_ofs.013.i, %if.then.i.while.cond.backedge.i_crit_edge ]
  %count.addr.0.be.i = phi i32 [ %sub91.i, %do.body73.i ], [ %count.addr.014.i, %if.then.i.while.cond.backedge.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %count.addr.0.be.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.if.end_crit_edge, label %while.cond.backedge.i.do.body13.i_crit_edge

while.cond.backedge.i.do.body13.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13.i

while.cond.backedge.i.if.end_crit_edge:           ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  %rx.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 19
  %51 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx.i, align 4
  %packet_size1.i6 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %packet_size1.i6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %packet_size1.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not16.i = icmp eq i32 %count, 0
  br i1 %tobool.not16.i, label %if.else.while.end.i_crit_edge, label %do.body2.lr.ph.i

if.else.while.end.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.body2.lr.ph.i:                                 ; preds = %if.else
  %rx_lock.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 15
  %rx_packet_buf.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %3, i32 0, i32 21
  br label %do.body2.i

do.body2.i:                                       ; preds = %while.cond.backedge.i41.do.body2.i_crit_edge, %do.body2.lr.ph.i
  %count.addr.019.i = phi i32 [ %count, %do.body2.lr.ph.i ], [ %count.addr.0.be.i39, %while.cond.backedge.i41.do.body2.i_crit_edge ]
  %cur_buf_ofs.018.i = phi i32 [ 0, %do.body2.lr.ph.i ], [ %cur_buf_ofs.0.be.i38, %while.cond.backedge.i41.do.body2.i_crit_edge ]
  %read_count.017.i = phi i32 [ 0, %do.body2.lr.ph.i ], [ %read_count.0.be.i, %while.cond.backedge.i41.do.body2.i_crit_edge ]
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock.i) #8
  %55 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx.i, align 4
  %packet_w.i7 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %packet_w.i7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %packet_w.i7, align 8
  %packet_r.i8 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %56, i32 0, i32 7
  %59 = ptrtoint ptr %packet_r.i8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %packet_r.i8, align 4
  %sub.i9 = sub i32 %58, %60
  %mul.i10 = mul i32 %sub.i9, %54
  %and.i = and i32 %60, 63
  %mul10.i = mul i32 %and.i, %54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock.i, i32 noundef %call3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i10)
  %tobool12.not.i = icmp eq i32 %mul.i10, 0
  br i1 %tobool12.not.i, label %if.then.i11, label %if.end17.i

if.then.i11:                                      ; preds = %do.body2.i
  %61 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx.i, align 4
  %call14.i = tail call fastcc i32 @wait_for_bt_irq(ptr noundef %3, ptr noundef %62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then.i11.while.cond.backedge.i41_crit_edge, label %if.then.i11.if.end_crit_edge

if.then.i11.if.end_crit_edge:                     ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i11.while.cond.backedge.i41_crit_edge:    ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i41

if.end17.i:                                       ; preds = %do.body2.i
  %rem.i12 = urem i32 %count.addr.019.i, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i12)
  %cmp18.not.i = icmp eq i32 %rem.i12, 0
  br i1 %cmp18.not.i, label %lor.lhs.false.i13, label %if.end17.i.do.end26.i_crit_edge

if.end17.i.do.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26.i

lor.lhs.false.i13:                                ; preds = %if.end17.i
  %rem20.i = urem i32 %mul.i10, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem20.i)
  %cmp21.not.i = icmp eq i32 %rem20.i, 0
  br i1 %cmp21.not.i, label %lor.lhs.false.i13.if.end31.i_crit_edge, label %lor.lhs.false.i13.do.end26.i_crit_edge

lor.lhs.false.i13.do.end26.i_crit_edge:           ; preds = %lor.lhs.false.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26.i

lor.lhs.false.i13.if.end31.i_crit_edge:           ; preds = %lor.lhs.false.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

do.end26.i:                                       ; preds = %lor.lhs.false.i13.do.end26.i_crit_edge, %if.end17.i.do.end26.i_crit_edge
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef %count.addr.019.i, i32 noundef %mul.i10, i32 noundef %54) #11
  %sub28.i = sub nuw i32 %count.addr.019.i, %rem.i12
  %rem29.i = urem i32 %mul.i10, %54
  %sub30.i = sub i32 %mul.i10, %rem29.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end26.i, %lor.lhs.false.i13.if.end31.i_crit_edge
  %avail.0.i14 = phi i32 [ %sub30.i, %do.end26.i ], [ %mul.i10, %lor.lhs.false.i13.if.end31.i_crit_edge ]
  %count.addr.1.i15 = phi i32 [ %sub28.i, %do.end26.i ], [ %count.addr.019.i, %lor.lhs.false.i13.if.end31.i_crit_edge ]
  %65 = tail call i32 @llvm.umin.i32(i32 %count.addr.1.i15, i32 %avail.0.i14) #8
  %66 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx.i, align 4
  %buf_size.i16 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %buf_size.i16 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf_size.i16, align 8
  %sub37.i = sub i32 %69, %mul10.i
  %70 = tail call i32 @llvm.smin.i32(i32 %65, i32 %sub37.i) #8
  %add.ptr.i17 = getelementptr i8, ptr %buf, i32 %cur_buf_ofs.018.i
  %add.ptr42.i = getelementptr i8, ptr %rx_packet_buf.i, i32 %mul10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp9.i.i.i24 = icmp slt i32 %70, 0
  br i1 %cmp9.i.i.i24, label %land.rhs16.i.i.i27, label %if.then.i.i.i.i30

land.rhs16.i.i.i27:                               ; preds = %if.end31.i
  %.b71.i.i.i26 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i26, label %land.rhs16.i.i.i27.do.end48.i_crit_edge, label %if.then27.i.i.i28, !prof !245

land.rhs16.i.i.i27.do.end48.i_crit_edge:          ; preds = %land.rhs16.i.i.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i

if.then27.i.i.i28:                                ; preds = %land.rhs16.i.i.i27
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.84, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %do.end48.i

if.then.i.i.i.i30:                                ; preds = %if.end31.i
  tail call void @__check_object_size(ptr noundef %add.ptr42.i, i32 noundef %70, i1 noundef zeroext true) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.86, i32 noundef 174) #8
  %call.i.i.i31 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i31, label %if.then.i.i.i.i30.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i35

if.then.i.i.i.i30.copy_to_user.exit.i_crit_edge:  ; preds = %if.then.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i

if.end.i.i.i35:                                   ; preds = %if.then.i.i.i.i30
  %71 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i17, i32 %70, i32 -1226833920) #12, !srcloc !250
  %asmresult.i.i.i33 = extractvalue { i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i33)
  %cmp.i6.i.i34 = icmp eq i32 %asmresult.i.i.i33, 0
  br i1 %cmp.i6.i.i34, label %if.then2.i.i.i, label %if.end.i.i.i35.copy_to_user.exit.i_crit_edge

if.end.i.i.i35.copy_to_user.exit.i_crit_edge:     ; preds = %if.end.i.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr42.i, i32 noundef %70) #8
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr.i17, ptr noundef %add.ptr42.i, i32 noundef %70) #8
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i35.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i30.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %70, %if.then.i.i.i.i30.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %70, %if.end.i.i.i35.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool44.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool44.not.i, label %do.body52.i, label %copy_to_user.exit.i.do.end48.i_crit_edge

copy_to_user.exit.i.do.end48.i_crit_edge:         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i

do.end48.i:                                       ; preds = %copy_to_user.exit.i.do.end48.i_crit_edge, %if.then27.i.i.i28, %land.rhs16.i.i.i27.do.end48.i_crit_edge
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111) #11
  br label %if.end

do.body52.i:                                      ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call60.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock.i) #8
  %div.i = udiv i32 %70, %54
  %74 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rx.i, align 4
  %packet_r66.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %packet_r66.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %packet_r66.i, align 4
  %add.i37 = add i32 %77, %div.i
  store i32 %add.i37, ptr %packet_r66.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock.i, i32 noundef %call60.i) #8
  %add68.i = add i32 %70, %read_count.017.i
  %add69.i = add i32 %70, %cur_buf_ofs.018.i
  %sub70.i = sub i32 %count.addr.1.i15, %70
  br label %while.cond.backedge.i41

while.cond.backedge.i41:                          ; preds = %do.body52.i, %if.then.i11.while.cond.backedge.i41_crit_edge
  %read_count.0.be.i = phi i32 [ %add68.i, %do.body52.i ], [ %read_count.017.i, %if.then.i11.while.cond.backedge.i41_crit_edge ]
  %cur_buf_ofs.0.be.i38 = phi i32 [ %add69.i, %do.body52.i ], [ %cur_buf_ofs.018.i, %if.then.i11.while.cond.backedge.i41_crit_edge ]
  %count.addr.0.be.i39 = phi i32 [ %sub70.i, %do.body52.i ], [ %count.addr.019.i, %if.then.i11.while.cond.backedge.i41_crit_edge ]
  %tobool.not.i40 = icmp eq i32 %count.addr.0.be.i39, 0
  br i1 %tobool.not.i40, label %while.cond.backedge.i41.while.end.i_crit_edge, label %while.cond.backedge.i41.do.body2.i_crit_edge

while.cond.backedge.i41.do.body2.i_crit_edge:     ; preds = %while.cond.backedge.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

while.cond.backedge.i41.while.end.i_crit_edge:    ; preds = %while.cond.backedge.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.backedge.i41.while.end.i_crit_edge, %if.else.while.end.i_crit_edge
  %read_count.0.lcssa.i = phi i32 [ 0, %if.else.while.end.i_crit_edge ], [ %read_count.0.be.i, %while.cond.backedge.i41.while.end.i_crit_edge ]
  %call71.i = tail call i64 @sched_clock() #8
  %78 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx.i, align 4
  %time_stamp.i42 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %time_stamp.i42 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %call71.i, ptr %time_stamp.i42, align 8
  %81 = load ptr, ptr %rx.i, align 4
  %packet_w74.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %packet_w74.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %packet_w74.i, align 8
  %packet_r76.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %81, i32 0, i32 7
  %84 = ptrtoint ptr %packet_r76.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %packet_r76.i, align 4
  %sub77.i = sub i32 %83, %85
  %conv78.i = sext i32 %sub77.i to i64
  %mul81.i = mul nsw i64 %conv78.i, 480000
  %div832.i = lshr exact i64 %mul81.i, 7
  %buf_data_equivalent_time.i43 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %81, i32 0, i32 13
  %86 = ptrtoint ptr %buf_data_equivalent_time.i43 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %div832.i, ptr %buf_data_equivalent_time.i43, align 8
  %mul87.i = mul i32 %read_count.0.lcssa.i, 480000
  %div88.i = udiv i32 %mul87.i, %54
  %div904.i = lshr i32 %div88.i, 7
  %conv91.i = zext i32 %div904.i to i64
  %87 = load ptr, ptr %rx.i, align 4
  %buf_data_equivalent_time93.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %87, i32 0, i32 13
  %88 = ptrtoint ptr %buf_data_equivalent_time93.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %buf_data_equivalent_time93.i, align 8
  %add94.i = add i64 %89, %conv91.i
  store i64 %add94.i, ptr %buf_data_equivalent_time93.i, align 8
  %90 = load ptr, ptr %rx.i, align 4
  %buf_data_equivalent_time96.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %90, i32 0, i32 13
  %91 = ptrtoint ptr %buf_data_equivalent_time96.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %buf_data_equivalent_time96.i, align 8
  %mul97.i = mul i64 %92, 1000
  store i64 %mul97.i, ptr %buf_data_equivalent_time96.i, align 8
  br label %if.end

if.end:                                           ; preds = %while.end.i, %do.end48.i, %if.then.i11.if.end_crit_edge, %while.cond.backedge.i.if.end_crit_edge, %do.end69.i, %if.then.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @btcvsd_band_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %band = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %band, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btcvsd_band_set(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %items = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %items, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp ult i32 %10, %12
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %band = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %5, i32 0, i32 22
  %13 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %band, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btcvsd_band_set.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btcvsd_band_set, %if.then7)) #8
          to label %cleanup [label %if.then7], !srcloc !244

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %16 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %band, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @btcvsd_band_set.__UNIQUE_ID_ddebug243, ptr noundef %15, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77, i32 noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @btcvsd_loopback_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx, align 4
  %state = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  %conv = zext i1 %cmp to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btcvsd_loopback_set(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %tx2 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx2, align 4
  %. = select i1 %tobool.not, i32 1, i32 3
  tail call fastcc void @mtk_btcvsd_snd_set_state(ptr noundef %5, ptr noundef %9, i32 noundef %.)
  %rx3 = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %5, i32 0, i32 19
  %10 = ptrtoint ptr %rx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx3, align 4
  tail call fastcc void @mtk_btcvsd_snd_set_state(ptr noundef %5, ptr noundef %11, i32 noundef %.)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @btcvsd_tx_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mute = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %mute to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %mute, align 8
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %bf.cast.sink = phi i32 [ %bf.cast, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.cast.sink, ptr %9, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @btcvsd_tx_mute_set(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %mute = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %7, i32 0, i32 10
  %10 = trunc i32 %9 to i8
  %11 = ptrtoint ptr %mute to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %mute, align 8
  %bf.value = shl i8 %10, 5
  %bf.shl = and i8 %bf.value, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %mute, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @btcvsd_tx_irq_received_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rw_cnt = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %rw_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rw_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp ne i32 %9, 0
  %cond = zext i1 %tobool3.not to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @btcvsd_tx_timeout_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx, align 4
  %timeout = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %timeout, align 8
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.cast, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @btcvsd_rx_irq_received_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %rx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rw_cnt = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %rw_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rw_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp ne i32 %9, 0
  %cond = zext i1 %tobool3.not to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @btcvsd_rx_timeout_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %rx = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %timeout = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %timeout, align 8
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.cast, ptr %value, align 8
  %10 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx, align 4
  %timeout4 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %timeout4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load5 = load i8, ptr %timeout4, align 8
  %bf.clear6 = and i8 %bf.load5, -65
  store i8 %bf.clear6, ptr %timeout4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_info_ext(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_tlv_callback(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btcvsd_rx_timestamp_get(ptr nocapture noundef readonly %kcontrol, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  %time_buffer_info_rx = alloca %struct.mtk_btcvsd_snd_time_buffer_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %time_buffer_info_rx) #8
  %6 = getelementptr inbounds %struct.mtk_btcvsd_snd_time_buffer_info, ptr %time_buffer_info_rx, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp = icmp ugt i32 %size, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %5, i32 0, i32 19
  %7 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx.i, align 4
  %time_stamp.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %time_stamp.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %time_stamp.i, align 8
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %6, align 8
  %buf_data_equivalent_time.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %8, i32 0, i32 13
  %12 = ptrtoint ptr %buf_data_equivalent_time.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %buf_data_equivalent_time.i, align 8
  %14 = ptrtoint ptr %time_buffer_info_rx to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %time_buffer_info_rx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btcvsd_rx_timestamp_get.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btcvsd_rx_timestamp_get, %if.then5)) #8
          to label %if.end8.i.i [label %if.then5], !srcloc !244

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %6, align 8
  %19 = ptrtoint ptr %time_buffer_info_rx to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %time_buffer_info_rx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @btcvsd_rx_timestamp_get.__UNIQUE_ID_ddebug244, ptr noundef %16, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, i64 noundef %18, i64 noundef %20) #8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5, %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.86, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end8.i.i.do.end12_crit_edge, label %if.end.i.i

if.end8.i.i.do.end12_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

if.end.i.i:                                       ; preds = %if.end8.i.i
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 16, i32 -1226833920) #12, !srcloc !250
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.do.end12_crit_edge

if.end.i.i.do.end12_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %time_buffer_info_rx, i32 noundef 16) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %time_buffer_info_rx, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool8.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool8.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.do.end12_crit_edge

copy_to_user.exit.do.end12_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end12:                                         ; preds = %copy_to_user.exit.do.end12_crit_edge, %if.end.i.i.do.end12_crit_edge, %if.end8.i.i.do.end12_crit_edge
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.81) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %copy_to_user.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %do.end12 ], [ 0, %copy_to_user.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %time_buffer_info_rx) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btcvsd_tx_timestamp_get(ptr nocapture noundef readonly %kcontrol, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  %time_buffer_info_tx = alloca %struct.mtk_btcvsd_snd_time_buffer_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %time_buffer_info_tx) #8
  %6 = getelementptr inbounds %struct.mtk_btcvsd_snd_time_buffer_info, ptr %time_buffer_info_tx, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp = icmp ugt i32 %size, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx.i = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %5, i32 0, i32 18
  %7 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx.i, align 4
  %time_stamp.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %time_stamp.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %time_stamp.i, align 8
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %6, align 8
  %buf_data_equivalent_time.i = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %8, i32 0, i32 13
  %12 = ptrtoint ptr %buf_data_equivalent_time.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %buf_data_equivalent_time.i, align 8
  %14 = ptrtoint ptr %time_buffer_info_tx to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %time_buffer_info_tx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btcvsd_tx_timestamp_get.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btcvsd_tx_timestamp_get, %if.then5)) #8
          to label %if.end8.i.i [label %if.then5], !srcloc !244

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %6, align 8
  %19 = ptrtoint ptr %time_buffer_info_tx to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %time_buffer_info_tx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @btcvsd_tx_timestamp_get.__UNIQUE_ID_ddebug245, ptr noundef %16, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.87, i64 noundef %18, i64 noundef %20) #8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5, %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.86, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end8.i.i.do.end12_crit_edge, label %if.end.i.i

if.end8.i.i.do.end12_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

if.end.i.i:                                       ; preds = %if.end8.i.i
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 16, i32 -1226833920) #12, !srcloc !250
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.do.end12_crit_edge

if.end.i.i.do.end12_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %time_buffer_info_tx, i32 noundef 16) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %time_buffer_info_tx, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool8.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool8.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.do.end12_crit_edge

copy_to_user.exit.do.end12_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end12:                                         ; preds = %copy_to_user.exit.do.end12_crit_edge, %if.end.i.i.do.end12_crit_edge, %if.end8.i.i.do.end12_crit_edge
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.87) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %copy_to_user.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %do.end12 ], [ 0, %copy_to_user.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %time_buffer_info_tx) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_bt_irq(ptr noundef %bt, ptr nocapture noundef %bt_stream) unnamed_addr #2 align 64 {
while.body.lr.ph:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry87 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wait_flag = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %bt_stream, i32 0, i32 10
  %0 = ptrtoint ptr %wait_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %wait_flag, align 8
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, ptr %wait_flag, align 8
  %stream = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, ptr %bt_stream, i32 0, i32 1
  %rx_wait = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 17
  %tx_wait = getelementptr inbounds %struct.mtk_btcvsd_snd, ptr %bt, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end169.while.body_crit_edge, %while.body.lr.ph
  %max_timeout_trial.0276 = phi i32 [ 2, %while.body.lr.ph ], [ %max_timeout_trial.1, %if.end169.while.body_crit_edge ]
  %call = call i64 @sched_clock() #8
  %1 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  %call5 = call i32 @nsecs_to_jiffies(i64 noundef 22500000) #8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 653) #8
  %3 = ptrtoint ptr %wait_flag to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load10 = load i8, ptr %wait_flag, align 8
  %4 = and i8 %bf.load10, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool14.not = icmp eq i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool16.not = icmp eq i32 %call5, 0
  %spec.store.select = select i1 %tobool16.not, i32 1, i32 %call5
  %__ret.0 = select i1 %tobool14.not, i32 %call5, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool19.not = icmp eq i32 %__ret.0, 0
  %not.tobool14.not = xor i1 %tobool14.not, true
  %5 = select i1 %not.tobool14.not, i1 true, i1 %tobool19.not
  br i1 %5, label %if.then.if.end129_crit_edge, label %if.then22

if.then.if.end129_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then22:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call24 = call i32 @nsecs_to_jiffies(i64 noundef 22500000) #8
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call25262 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %7 = ptrtoint ptr %wait_flag to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load28263 = load i8, ptr %wait_flag, align 8
  %8 = and i8 %bf.load28263, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool32.not264 = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool36.not265 = icmp eq i32 %call24, 0
  %spec.store.select175266 = select i1 %tobool36.not265, i32 1, i32 %call24
  %__ret23.1267 = select i1 %tobool32.not264, i32 %call24, i32 %spec.store.select175266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.1267)
  %tobool42.not268 = icmp eq i32 %__ret23.1267, 0
  %not.tobool32.not269 = xor i1 %tobool32.not264, true
  %9 = select i1 %not.tobool32.not269, i1 true, i1 %tobool42.not268
  br i1 %9, label %if.then22.for.end_crit_edge, label %if.then22.if.end48_crit_edge

if.then22.if.end48_crit_edge:                     ; preds = %if.then22
  br label %if.end48

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end48:                                         ; preds = %cleanup.if.end48_crit_edge, %if.then22.if.end48_crit_edge
  %__ret23.1271 = phi i32 [ %__ret23.1, %cleanup.if.end48_crit_edge ], [ %__ret23.1267, %if.then22.if.end48_crit_edge ]
  %call25270 = phi i32 [ %call25, %cleanup.if.end48_crit_edge ], [ %call25262, %if.then22.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25270)
  %tobool49.not = icmp eq i32 %call25270, 0
  br i1 %tobool49.not, label %cleanup, label %if.end48.__out_crit_edge

if.end48.__out_crit_edge:                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end48
  %call52 = call i32 @schedule_timeout(i32 noundef %__ret23.1271) #8
  %call25 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %10 = ptrtoint ptr %wait_flag to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load28 = load i8, ptr %wait_flag, align 8
  %11 = and i8 %bf.load28, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool32.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool36.not = icmp eq i32 %call52, 0
  %spec.store.select175 = select i1 %tobool36.not, i32 1, i32 %call52
  %__ret23.1 = select i1 %tobool32.not, i32 %call52, i32 %spec.store.select175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.1)
  %tobool42.not = icmp eq i32 %__ret23.1, 0
  %not.tobool32.not = xor i1 %tobool32.not, true
  %12 = select i1 %not.tobool32.not, i1 true, i1 %tobool42.not
  br i1 %12, label %cleanup.for.end_crit_edge, label %cleanup.if.end48_crit_edge

cleanup.if.end48_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then22.for.end_crit_edge
  %__ret23.1.lcssa = phi i32 [ %__ret23.1267, %if.then22.for.end_crit_edge ], [ %__ret23.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end, %if.end48.__out_crit_edge
  %__ret23.2229 = phi i32 [ %__ret23.1.lcssa, %for.end ], [ %call25270, %if.end48.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end129

if.else:                                          ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 657) #8
  %13 = ptrtoint ptr %wait_flag to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load67 = load i8, ptr %wait_flag, align 8
  %14 = and i8 %bf.load67, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool71.not = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool75.not = icmp eq i32 %call5, 0
  %spec.store.select176 = select i1 %tobool75.not, i32 1, i32 %call5
  %__ret57.0 = select i1 %tobool71.not, i32 %call5, i32 %spec.store.select176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret57.0)
  %tobool81.not = icmp eq i32 %__ret57.0, 0
  %not.tobool71.not = xor i1 %tobool71.not, true
  %15 = select i1 %not.tobool71.not, i1 true, i1 %tobool81.not
  br i1 %15, label %if.else.if.end129_crit_edge, label %if.then86

if.else.if.end129_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then86:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry87) #8
  %16 = call ptr @memset(ptr %__wq_entry87, i32 255, i32 20)
  %call89 = call i32 @nsecs_to_jiffies(i64 noundef 22500000) #8
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry87, i32 noundef 0) #8
  %call92251 = call i32 @prepare_to_wait_event(ptr noundef %rx_wait, ptr noundef nonnull %__wq_entry87, i32 noundef 1) #8
  %17 = ptrtoint ptr %wait_flag to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load95252 = load i8, ptr %wait_flag, align 8
  %18 = and i8 %bf.load95252, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool99.not253 = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool103.not254 = icmp eq i32 %call89, 0
  %spec.store.select177255 = select i1 %tobool103.not254, i32 1, i32 %call89
  %__ret88.1256 = select i1 %tobool99.not253, i32 %call89, i32 %spec.store.select177255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret88.1256)
  %tobool109.not257 = icmp eq i32 %__ret88.1256, 0
  %not.tobool99.not258 = xor i1 %tobool99.not253, true
  %19 = select i1 %not.tobool99.not258, i1 true, i1 %tobool109.not257
  br i1 %19, label %if.then86.for.end123_crit_edge, label %if.then86.if.end115_crit_edge

if.then86.if.end115_crit_edge:                    ; preds = %if.then86
  br label %if.end115

if.then86.for.end123_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end123

if.end115:                                        ; preds = %cleanup120.if.end115_crit_edge, %if.then86.if.end115_crit_edge
  %__ret88.1260 = phi i32 [ %__ret88.1, %cleanup120.if.end115_crit_edge ], [ %__ret88.1256, %if.then86.if.end115_crit_edge ]
  %call92259 = phi i32 [ %call92, %cleanup120.if.end115_crit_edge ], [ %call92251, %if.then86.if.end115_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92259)
  %tobool116.not = icmp eq i32 %call92259, 0
  br i1 %tobool116.not, label %cleanup120, label %if.end115.__out125_crit_edge

if.end115.__out125_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out125

cleanup120:                                       ; preds = %if.end115
  %call119 = call i32 @schedule_timeout(i32 noundef %__ret88.1260) #8
  %call92 = call i32 @prepare_to_wait_event(ptr noundef %rx_wait, ptr noundef nonnull %__wq_entry87, i32 noundef 1) #8
  %20 = ptrtoint ptr %wait_flag to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load95 = load i8, ptr %wait_flag, align 8
  %21 = and i8 %bf.load95, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool99.not = icmp eq i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool103.not = icmp eq i32 %call119, 0
  %spec.store.select177 = select i1 %tobool103.not, i32 1, i32 %call119
  %__ret88.1 = select i1 %tobool99.not, i32 %call119, i32 %spec.store.select177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret88.1)
  %tobool109.not = icmp eq i32 %__ret88.1, 0
  %not.tobool99.not = xor i1 %tobool99.not, true
  %22 = select i1 %not.tobool99.not, i1 true, i1 %tobool109.not
  br i1 %22, label %cleanup120.for.end123_crit_edge, label %cleanup120.if.end115_crit_edge

cleanup120.if.end115_crit_edge:                   ; preds = %cleanup120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

cleanup120.for.end123_crit_edge:                  ; preds = %cleanup120
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end123

for.end123:                                       ; preds = %cleanup120.for.end123_crit_edge, %if.then86.for.end123_crit_edge
  %__ret88.1.lcssa = phi i32 [ %__ret88.1256, %if.then86.for.end123_crit_edge ], [ %__ret88.1, %cleanup120.for.end123_crit_edge ]
  call void @finish_wait(ptr noundef %rx_wait, ptr noundef nonnull %__wq_entry87) #8
  br label %__out125

__out125:                                         ; preds = %for.end123, %if.end115.__out125_crit_edge
  %__ret88.2236 = phi i32 [ %__ret88.1.lcssa, %for.end123 ], [ %call92259, %if.end115.__out125_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry87) #8
  br label %if.end129

if.end129:                                        ; preds = %__out125, %if.else.if.end129_crit_edge, %__out, %if.then.if.end129_crit_edge
  %ret.0 = phi i32 [ %__ret.0, %if.then.if.end129_crit_edge ], [ %__ret23.2229, %__out ], [ %__ret57.0, %if.else.if.end129_crit_edge ], [ %__ret88.2236, %__out125 ]
  %call130 = call i64 @sched_clock() #8
  %sub = sub i64 %call130, %call
  call void @__sanitizer_cov_trace_const_cmp8(i64 22500000, i64 %sub)
  %cmp131 = icmp ugt i64 %sub, 22500000
  br i1 %cmp131, label %do.end135, label %if.end129.if.end142_crit_edge

if.end129.if.end142_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142

do.end135:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bt, align 4
  %25 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stream, align 4
  %27 = ptrtoint ptr %wait_flag to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load138 = load i8, ptr %wait_flag, align 8
  %bf.lshr139 = lshr i8 %bf.load138, 3
  %bf.clear140 = and i8 %bf.lshr139, 1
  %bf.cast141 = zext i8 %bf.clear140 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef %26, i64 noundef %sub, i64 noundef 22500000, i32 noundef %ret.0, i32 noundef %bf.cast141) #11
  br label %if.end142

if.end142:                                        ; preds = %do.end135, %if.end129.if.end142_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp143 = icmp slt i32 %ret.0, 0
  br i1 %cmp143, label %do.end147, label %if.else153

do.end147:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bt, align 4
  %30 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stream, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.103, i32 noundef %31, i32 noundef %max_timeout_trial.0276) #11
  br label %cleanup170.sink.split

if.else153:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp154 = icmp eq i32 %ret.0, 0
  br i1 %cmp154, label %if.then155, label %if.else153.if.end169_crit_edge

if.else153.if.end169_crit_edge:                   ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

if.then155:                                       ; preds = %if.else153
  %dec = add i32 %max_timeout_trial.0276, -1
  %32 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bt, align 4
  %34 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stream, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.103, i32 noundef %35, i32 noundef %dec) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp161 = icmp slt i32 %dec, 1
  br i1 %cmp161, label %if.then155.cleanup170.sink.split_crit_edge, label %if.then155.if.end169_crit_edge

if.then155.if.end169_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

if.then155.cleanup170.sink.split_crit_edge:       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup170.sink.split

if.end169:                                        ; preds = %if.then155.if.end169_crit_edge, %if.else153.if.end169_crit_edge
  %max_timeout_trial.1 = phi i32 [ 1, %if.then155.if.end169_crit_edge ], [ %max_timeout_trial.0276, %if.else153.if.end169_crit_edge ]
  %36 = ptrtoint ptr %wait_flag to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load2 = load i8, ptr %wait_flag, align 8
  %37 = and i8 %bf.load2, 8
  %tobool4.not = icmp eq i8 %37, 0
  br i1 %tobool4.not, label %if.end169.while.body_crit_edge, label %if.end169.cleanup170_crit_edge

if.end169.cleanup170_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup170

if.end169.while.body_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup170.sink.split:                            ; preds = %if.then155.cleanup170.sink.split_crit_edge, %do.end147
  %retval.0.ph = phi i32 [ %ret.0, %do.end147 ], [ -62, %if.then155.cleanup170.sink.split_crit_edge ]
  %38 = ptrtoint ptr %wait_flag to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load164 = load i8, ptr %wait_flag, align 8
  %bf.set166 = or i8 %bf.load164, 64
  store i8 %bf.set166, ptr %wait_flag, align 8
  br label %cleanup170

cleanup170:                                       ; preds = %cleanup170.sink.split, %if.end169.cleanup170_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup170.sink.split ], [ 0, %if.end169.cleanup170_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !152, !154, !156, !158, !160, !161, !162, !164, !165, !166, !168, !169, !171, !173, !175, !176, !178, !179, !181, !182, !183, !185, !187, !188, !189, !191, !192, !193, !194, !196, !197, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232}
!llvm.named.register.sp = !{!234}
!llvm.module.flags = !{!235, !236, !237, !238, !239, !240, !241, !242}
!llvm.ident = !{!243}

!0 = !{ptr @__initcall__kmod_mtk_btcvsd__246_1416_mtk_btcvsd_snd_driver_init6, !1, !"__initcall__kmod_mtk_btcvsd__246_1416_mtk_btcvsd_snd_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1416, i32 1}
!2 = !{ptr @__exitcall_mtk_btcvsd_snd_driver_exit, !1, !"__exitcall_mtk_btcvsd_snd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description247, !4, !"__UNIQUE_ID_description247", i1 false, i1 false}
!4 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1418, i32 1}
!5 = !{ptr @__UNIQUE_ID_author248, !6, !"__UNIQUE_ID_author248", i1 false, i1 false}
!6 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1419, i32 1}
!7 = !{ptr @__UNIQUE_ID_file249, !8, !"__UNIQUE_ID_file249", i1 false, i1 false}
!8 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1420, i32 1}
!9 = !{ptr @__UNIQUE_ID_license250, !8, !"__UNIQUE_ID_license250", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1409, i32 11}
!12 = !{ptr @mtk_btcvsd_snd_driver, !13, !"mtk_btcvsd_snd_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1407, i32 31}
!14 = !{ptr @mtk_btcvsd_snd_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1306, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mtk_btcvsd_snd_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1307, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtk_btcvsd_snd_probe.__key.4, !21, !"__key", i1 false, i1 false}
!21 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1309, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mtk_btcvsd_snd_probe.__key.6, !24, !"__key", i1 false, i1 false}
!24 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1310, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1321, i32 29}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1324, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mtk_btcvsd_snd_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtk_btcvsd_snd_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1333, i32 3}
!38 = !{ptr @mtk_btcvsd_snd_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mtk_btcvsd_snd_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1339, i32 3}
!42 = !{ptr @mtk_btcvsd_snd_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtk_btcvsd_snd_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1345, i32 8}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1347, i32 3}
!48 = !{ptr @mtk_btcvsd_snd_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mtk_btcvsd_snd_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1354, i32 49}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1358, i32 3}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mtk_btcvsd_snd_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @mtk_btcvsd_snd_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 492, i32 3}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mtk_btcvsd_snd_irq_handler._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @mtk_btcvsd_snd_irq_handler._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 501, i32 3}
!64 = !{ptr @mtk_btcvsd_snd_irq_handler._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 507, i32 3}
!68 = !{ptr @mtk_btcvsd_snd_irq_handler._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 533, i32 4}
!72 = !{ptr @mtk_btcvsd_snd_irq_handler._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 563, i32 5}
!76 = !{ptr @mtk_btcvsd_snd_irq_handler._entry.40, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.42, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 580, i32 4}
!80 = !{ptr @mtk_btcvsd_snd_irq_handler._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 596, i32 5}
!84 = !{ptr @mtk_btcvsd_snd_irq_handler._entry.46, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.48, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 612, i32 4}
!88 = !{ptr @mtk_btcvsd_snd_irq_handler._entry.49, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mtk_btcvsd_snd_irq_handler._entry_ptr.51, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @btsco_packet_info, !91, !"btsco_packet_info", i1 false, i1 false}
!91 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 157, i32 27}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 377, i32 3}
!94 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @mtk_btcvsd_read_from_bt._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @mtk_btcvsd_read_from_bt._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = distinct !{null, !98, !"btsco_packet_valid_mask", i1 false, i1 false}
!98 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 148, i32 27}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 428, i32 3}
!101 = !{ptr @mtk_btcvsd_write_to_bt._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @mtk_btcvsd_write_to_bt._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 470, i32 3}
!105 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @mtk_btcvsd_write_to_bt._entry.55, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @mtk_btcvsd_write_to_bt._entry_ptr.58, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 336, i32 2}
!110 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @btcvsd_tx_clean_buffer._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @btcvsd_tx_clean_buffer._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 342, i32 3}
!115 = !{ptr @btcvsd_tx_clean_buffer._entry.61, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @btcvsd_tx_clean_buffer._entry_ptr.63, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @table_msbc_silence, !118, !"table_msbc_silence", i1 false, i1 false}
!118 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 172, i32 17}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 209, i32 2}
!121 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.66, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @mtk_btcvsd_snd_set_state.__UNIQUE_ID_ddebug238, !120, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!124 = !{ptr @mtk_btcvsd_snd_platform, !125, !"mtk_btcvsd_snd_platform", i1 false, i1 false}
!125 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1269, i32 46}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1240, i32 2}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1242, i32 2}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1244, i32 2}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1246, i32 2}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1248, i32 2}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1250, i32 2}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1252, i32 2}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1254, i32 2}
!142 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1257, i32 2}
!144 = !{ptr @mtk_btcvsd_snd_controls, !145, !"mtk_btcvsd_snd_controls", i1 false, i1 false}
!145 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1239, i32 38}
!146 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1076, i32 2}
!148 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @btcvsd_band_set.__UNIQUE_ID_ddebug243, !147, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!150 = !{ptr @btcvsd_enum, !151, !"btcvsd_enum", i1 false, i1 false}
!151 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1051, i32 30}
!152 = !{ptr @.str.79, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1049, i32 46}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1049, i32 52}
!156 = !{ptr @btsco_band_str, !157, !"btsco_band_str", i1 false, i1 false}
!157 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1049, i32 26}
!158 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1175, i32 2}
!160 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @btcvsd_rx_timestamp_get.__UNIQUE_ID_ddebug244, !159, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1182, i32 3}
!164 = !{ptr @btcvsd_rx_timestamp_get._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @btcvsd_rx_timestamp_get._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = distinct !{null, !167, !"__already_done", i1 false, i1 false}
!167 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!168 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!171 = !{ptr @.str.86, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!173 = !{ptr @.str.87, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1225, i32 2}
!175 = !{ptr @btcvsd_tx_timestamp_get.__UNIQUE_ID_ddebug245, !174, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!176 = !{ptr @btcvsd_tx_timestamp_get._entry, !177, !"_entry", i1 false, i1 false}
!177 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1232, i32 3}
!178 = !{ptr @btcvsd_tx_timestamp_get._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 884, i32 2}
!181 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @mtk_pcm_btcvsd_open.__UNIQUE_ID_ddebug239, !180, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!183 = !{ptr @mtk_btcvsd_hardware, !184, !"mtk_btcvsd_hardware", i1 false, i1 false}
!184 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 867, i32 38}
!185 = !{ptr @.str.90, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 906, i32 2}
!187 = !{ptr @.str.91, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @mtk_pcm_btcvsd_close.__UNIQUE_ID_ddebug240, !186, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 921, i32 3}
!191 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @mtk_pcm_btcvsd_hw_params._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @mtk_pcm_btcvsd_hw_params._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 948, i32 2}
!196 = !{ptr @mtk_pcm_btcvsd_prepare.__UNIQUE_ID_ddebug241, !195, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!197 = !{ptr @.str.95, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 962, i32 2}
!199 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @mtk_pcm_btcvsd_trigger.__UNIQUE_ID_ddebug242, !198, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!201 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 822, i32 4}
!203 = !{ptr @.str.98, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @mtk_btcvsd_snd_write._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @mtk_btcvsd_snd_write._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 842, i32 4}
!208 = !{ptr @mtk_btcvsd_snd_write._entry.99, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @mtk_btcvsd_snd_write._entry_ptr.101, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 664, i32 4}
!212 = !{ptr @.str.103, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @wait_for_bt_irq._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @wait_for_bt_irq._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 675, i32 4}
!217 = !{ptr @wait_for_bt_irq._entry.104, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @wait_for_bt_irq._entry_ptr.106, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 684, i32 4}
!221 = !{ptr @wait_for_bt_irq._entry.107, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @wait_for_bt_irq._entry_ptr.109, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.110, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 729, i32 4}
!225 = !{ptr @.str.111, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @mtk_btcvsd_snd_read._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @mtk_btcvsd_snd_read._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 749, i32 4}
!230 = !{ptr @mtk_btcvsd_snd_read._entry.112, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @mtk_btcvsd_snd_read._entry_ptr.114, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @mtk_btcvsd_snd_dt_match, !233, !"mtk_btcvsd_snd_dt_match", i1 false, i1 false}
!233 = !{!"../sound/soc/mediatek/common/mtk-btcvsd.c", i32 1401, i32 34}
!234 = !{!"sp"}
!235 = !{i32 1, !"wchar_size", i32 2}
!236 = !{i32 1, !"min_enum_size", i32 4}
!237 = !{i32 8, !"branch-target-enforcement", i32 0}
!238 = !{i32 8, !"sign-return-address", i32 0}
!239 = !{i32 8, !"sign-return-address-all", i32 0}
!240 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!241 = !{i32 7, !"uwtable", i32 1}
!242 = !{i32 7, !"frame-pointer", i32 2}
!243 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!244 = !{i64 2148994413, i64 2148994418, i64 2148994431, i64 2148994475, i64 2148994509, i64 2148994530}
!245 = !{!"branch_weights", i32 2000, i32 1}
!246 = !{i64 2153801379, i64 2153801404}
!247 = !{i64 6296934}
!248 = !{i64 6297131}
!249 = !{i64 2153782364}
!250 = !{i64 2153802060, i64 2153802085}
