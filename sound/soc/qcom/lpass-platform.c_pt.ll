; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/lpass-platform.c_pt.bc'
source_filename = "../sound/soc/qcom/lpass-platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+asoc_qcom_lpass_platform_register\22, \22a\22\09"
module asm "\09.weak\09__crc_asoc_qcom_lpass_platform_register\09\09\09\09"
module asm "\09.long\09__crc_asoc_qcom_lpass_platform_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asoc_qcom_lpass_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22asoc_qcom_lpass_platform_register\22\09\09\09\09\09"
module asm "__kstrtabns_asoc_qcom_lpass_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.lpass_data = type { ptr, [8 x ptr], [8 x ptr], [8 x i32], [8 x i32], [8 x i8], i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, [8 x ptr], [4 x ptr], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], [4 x ptr], ptr, ptr, [4 x ptr], ptr, ptr }
%struct.lpass_variant = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.lpaif_dmactl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.lpass_pcm_data = type { i32, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lpass-irq-lpaif\00", [16 x i8] zeroinitializer }, align 32
@asoc_qcom_lpass_platform_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 846, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error writing to irqen reg: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"asoc_qcom_lpass_platform_register\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/qcom/lpass-platform.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@asoc_qcom_lpass_platform_register._entry_ptr = internal global ptr @asoc_qcom_lpass_platform_register._entry, section ".printk_index", align 4
@asoc_qcom_lpass_platform_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 854, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"irq request failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@asoc_qcom_lpass_platform_register._entry_ptr.8 = internal global ptr @asoc_qcom_lpass_platform_register._entry.6, section ".printk_index", align 4
@asoc_qcom_lpass_platform_register._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 862, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error initializing dmactl fields: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@asoc_qcom_lpass_platform_register._entry_ptr.11 = internal global ptr @asoc_qcom_lpass_platform_register._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpass-irq-hdmi\00", [17 x i8] zeroinitializer }, align 32
@asoc_qcom_lpass_platform_register._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 874, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq hdmi request failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@asoc_qcom_lpass_platform_register._entry_ptr.15 = internal global ptr @asoc_qcom_lpass_platform_register._entry.13, section ".printk_index", align 4
@asoc_qcom_lpass_platform_register._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 880, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error writing to hdmi irqen reg: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@asoc_qcom_lpass_platform_register._entry_ptr.18 = internal global ptr @asoc_qcom_lpass_platform_register._entry.16, section ".printk_index", align 4
@asoc_qcom_lpass_platform_register._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 888, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error initializing hdmidmactl fields: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@asoc_qcom_lpass_platform_register._entry_ptr.21 = internal global ptr @asoc_qcom_lpass_platform_register._entry.19, section ".printk_index", align 4
@lpass_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.43, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @lpass_platform_pcmops_suspend, ptr @lpass_platform_pcmops_resume, ptr null, ptr null, ptr @lpass_platform_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lpass_platform_pcmops_open, ptr @lpass_platform_pcmops_close, ptr null, ptr @lpass_platform_pcmops_hw_params, ptr @lpass_platform_pcmops_hw_free, ptr @lpass_platform_pcmops_prepare, ptr @lpass_platform_pcmops_trigger, ptr null, ptr @lpass_platform_pcmops_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_asoc_qcom_lpass_platform_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_asoc_qcom_lpass_platform_register = external dso_local constant [0 x i8], align 1
@__ksymtab_asoc_qcom_lpass_platform_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asoc_qcom_lpass_platform_register to i32), ptr @__kstrtab_asoc_qcom_lpass_platform_register, ptr @__kstrtabns_asoc_qcom_lpass_platform_register }, section "___ksymtab_gpl+asoc_qcom_lpass_platform_register", align 4
@__UNIQUE_ID_description240 = internal constant [61 x i8] c"snd_soc_lpass_platform.description=QTi LPASS Platform Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [66 x i8] c"snd_soc_lpass_platform.file=sound/soc/qcom/snd-soc-lpass-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [38 x i8] c"snd_soc_lpass_platform.license=GPL v2\00", section ".modinfo", align 1
@lpass_platform_lpaif_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013error reading from irqstat reg: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lpass_platform_lpaif_irq\00", [39 x i8] zeroinitializer }, align 32
@lpass_platform_lpaif_irq._entry_ptr = internal global ptr @lpass_platform_lpaif_irq._entry, section ".printk_index", align 4
@lpass_dma_interrupt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 664, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: invalid  %d interface\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lpass_dma_interrupt_handler\00", [36 x i8] zeroinitializer }, align 32
@lpass_dma_interrupt_handler._entry_ptr = internal global ptr @lpass_dma_interrupt_handler._entry, section ".printk_index", align 4
@lpass_dma_interrupt_handler._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 671, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error writing to irqclear reg: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@lpass_dma_interrupt_handler._entry_ptr.28 = internal global ptr @lpass_dma_interrupt_handler._entry.26, section ".printk_index", align 4
@lpass_dma_interrupt_handler._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 682, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpass_dma_interrupt_handler._entry_ptr.30 = internal global ptr @lpass_dma_interrupt_handler._entry.29, section ".printk_index", align 4
@lpass_dma_interrupt_handler._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.3, i32 685, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xrun warning\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lpass_dma_interrupt_handler._entry_ptr.34 = internal global ptr @lpass_dma_interrupt_handler._entry.31, section ".printk_index", align 4
@lpass_dma_interrupt_handler._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 694, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpass_dma_interrupt_handler._entry_ptr.36 = internal global ptr @lpass_dma_interrupt_handler._entry.35, section ".printk_index", align 4
@lpass_dma_interrupt_handler._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.25, ptr @.str.3, i32 697, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bus access error\0A\00", [46 x i8] zeroinitializer }, align 32
@lpass_dma_interrupt_handler._entry_ptr.39 = internal global ptr @lpass_dma_interrupt_handler._entry.37, section ".printk_index", align 4
@lpass_dma_interrupt_handler._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 706, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpass_dma_interrupt_handler._entry_ptr.41 = internal global ptr @lpass_dma_interrupt_handler._entry.40, section ".printk_index", align 4
@lpass_platform_hdmiif_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.42, ptr @.str.3, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lpass_platform_hdmiif_irq\00", [38 x i8] zeroinitializer }, align 32
@lpass_platform_hdmiif_irq._entry_ptr = internal global ptr @lpass_platform_hdmiif_irq._entry, section ".printk_index", align 4
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpass-platform\00", [17 x i8] zeroinitializer }, align 32
@lpass_platform_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 786691, i64 2184, i32 8190, i32 8000, i32 192000, i32 1, i32 8, i32 49152, i32 24576, i32 24576, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error writing to rdmactl reg: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpass_platform_pcmops_open\00", [37 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_open._entry_ptr = internal global ptr @lpass_platform_pcmops_open._entry, section ".printk_index", align 4
@lpass_platform_pcmops_open._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"setting constraints failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_open._entry_ptr.48 = internal global ptr @lpass_platform_pcmops_open._entry.46, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lpass_platform_pcmops_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid bit width given: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lpass_platform_pcmops_hw_params\00", [32 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_hw_params._entry_ptr = internal global ptr @lpass_platform_pcmops_hw_params._entry, section ".printk_index", align 4
@lpass_platform_pcmops_hw_params._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error updating bursten field: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_hw_params._entry_ptr.53 = internal global ptr @lpass_platform_pcmops_hw_params._entry.51, section ".printk_index", align 4
@lpass_platform_pcmops_hw_params._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error updating fifowm field: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_hw_params._entry_ptr.56 = internal global ptr @lpass_platform_pcmops_hw_params._entry.54, section ".printk_index", align 4
@lpass_platform_pcmops_hw_params._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error updating burst8en field: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_hw_params._entry_ptr.59 = internal global ptr @lpass_platform_pcmops_hw_params._entry.57, section ".printk_index", align 4
@lpass_platform_pcmops_hw_params._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.50, ptr @.str.3, i32 246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error updating burst16en field: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_hw_params._entry_ptr.62 = internal global ptr @lpass_platform_pcmops_hw_params._entry.60, section ".printk_index", align 4
@lpass_platform_pcmops_hw_params._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.50, ptr @.str.3, i32 252, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error updating dynbursten field: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_hw_params._entry_ptr.65 = internal global ptr @lpass_platform_pcmops_hw_params._entry.63, section ".printk_index", align 4
@lpass_platform_pcmops_hw_params._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.50, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error updating audio interface field: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_hw_params._entry_ptr.68 = internal global ptr @lpass_platform_pcmops_hw_params._entry.66, section ".printk_index", align 4
@lpass_platform_pcmops_hw_params._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.50, ptr @.str.3, i32 271, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: invalid  interface: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_hw_params._entry_ptr.71 = internal global ptr @lpass_platform_pcmops_hw_params._entry.69, section ".printk_index", align 4
@lpass_platform_pcmops_hw_params._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.50, ptr @.str.3, i32 292, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid PCM config given: bw=%d, ch=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_hw_params._entry_ptr.74 = internal global ptr @lpass_platform_pcmops_hw_params._entry.72, section ".printk_index", align 4
@lpass_platform_pcmops_hw_params._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.50, ptr @.str.3, i32 324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_hw_params._entry_ptr.76 = internal global ptr @lpass_platform_pcmops_hw_params._entry.75, section ".printk_index", align 4
@lpass_platform_pcmops_hw_params._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.50, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_hw_params._entry_ptr.78 = internal global ptr @lpass_platform_pcmops_hw_params._entry.77, section ".printk_index", align 4
@lpass_platform_pcmops_hw_params._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.50, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error writing to dmactl reg: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_hw_params._entry_ptr.81 = internal global ptr @lpass_platform_pcmops_hw_params._entry.79, section ".printk_index", align 4
@lpass_platform_pcmops_hw_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.82, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lpass_platform_pcmops_hw_free\00", [34 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_hw_free._entry_ptr = internal global ptr @lpass_platform_pcmops_hw_free._entry, section ".printk_index", align 4
@lpass_platform_pcmops_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error writing to rdmabase reg: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lpass_platform_pcmops_prepare\00", [34 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_prepare._entry_ptr = internal global ptr @lpass_platform_pcmops_prepare._entry, section ".printk_index", align 4
@lpass_platform_pcmops_prepare._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error writing to rdmabuff reg: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_prepare._entry_ptr.87 = internal global ptr @lpass_platform_pcmops_prepare._entry.85, section ".printk_index", align 4
@lpass_platform_pcmops_prepare._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.3, i32 425, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error writing to rdmaper reg: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_prepare._entry_ptr.90 = internal global ptr @lpass_platform_pcmops_prepare._entry.88, section ".printk_index", align 4
@lpass_platform_pcmops_prepare._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.84, ptr @.str.3, i32 432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_prepare._entry_ptr.92 = internal global ptr @lpass_platform_pcmops_prepare._entry.91, section ".printk_index", align 4
@lpass_platform_pcmops_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.93, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lpass_platform_pcmops_trigger\00", [34 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_trigger._entry_ptr = internal global ptr @lpass_platform_pcmops_trigger._entry, section ".printk_index", align 4
@lpass_platform_pcmops_trigger._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.93, ptr @.str.3, i32 490, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_trigger._entry_ptr.95 = internal global ptr @lpass_platform_pcmops_trigger._entry.94, section ".printk_index", align 4
@lpass_platform_pcmops_trigger._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.93, ptr @.str.3, i32 523, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: invalid %d interface\0A\00", [38 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_trigger._entry_ptr.98 = internal global ptr @lpass_platform_pcmops_trigger._entry.96, section ".printk_index", align 4
@lpass_platform_pcmops_trigger._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.93, ptr @.str.3, i32 529, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_trigger._entry_ptr.100 = internal global ptr @lpass_platform_pcmops_trigger._entry.99, section ".printk_index", align 4
@lpass_platform_pcmops_trigger._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.93, ptr @.str.3, i32 534, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_trigger._entry_ptr.102 = internal global ptr @lpass_platform_pcmops_trigger._entry.101, section ".printk_index", align 4
@lpass_platform_pcmops_trigger._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.93, ptr @.str.3, i32 545, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_trigger._entry_ptr.104 = internal global ptr @lpass_platform_pcmops_trigger._entry.103, section ".printk_index", align 4
@lpass_platform_pcmops_trigger._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.93, ptr @.str.3, i32 554, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_trigger._entry_ptr.106 = internal global ptr @lpass_platform_pcmops_trigger._entry.105, section ".printk_index", align 4
@lpass_platform_pcmops_trigger._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.93, ptr @.str.3, i32 574, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_trigger._entry_ptr.108 = internal global ptr @lpass_platform_pcmops_trigger._entry.107, section ".printk_index", align 4
@lpass_platform_pcmops_trigger._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.93, ptr @.str.3, i32 581, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_trigger._entry_ptr.110 = internal global ptr @lpass_platform_pcmops_trigger._entry.109, section ".printk_index", align 4
@lpass_platform_pcmops_pointer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 616, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error reading from rdmabase reg: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lpass_platform_pcmops_pointer\00", [34 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_pointer._entry_ptr = internal global ptr @lpass_platform_pcmops_pointer._entry, section ".printk_index", align 4
@lpass_platform_pcmops_pointer._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.3, i32 624, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error reading from rdmacurr reg: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@lpass_platform_pcmops_pointer._entry_ptr.115 = internal global ptr @lpass_platform_pcmops_pointer._entry.113, section ".printk_index", align 4
@switch.table.lpass_platform_pcmops_hw_params = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 0, i32 3], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.116 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.118 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.119 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.120 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.121 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 838, i32 53 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 846, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 854, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 861, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 867, i32 55 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 874, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 880, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 887, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant [23 x i8] c"lpass_component_driver\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 817, i32 46 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 725, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 664, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 670, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 681, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 685, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 693, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 697, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 705, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 753, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 818, i32 11 }
@___asan_gen_.236 = private unnamed_addr constant [28 x i8] c"lpass_platform_pcm_hardware\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 29, i32 38 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 142, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 154, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 218, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 225, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 231, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 240, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 246, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 252, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 264, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 271, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 291, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 323, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 329, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 336, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 366, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 408, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 416, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 424, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 431, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 480, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 489, i32 5 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 523, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 529, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 534, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 544, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 553, i32 5 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 574, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 580, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 615, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.399 = private constant [35 x i8] c"../sound/soc/qcom/lpass-platform.c\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 623, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant [45 x i8] c"switch.table.lpass_platform_pcmops_hw_params\00", align 1
@llvm.compiler.used = appending global [143 x ptr] [ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__ksymtab_asoc_qcom_lpass_platform_register, ptr @asoc_qcom_lpass_platform_register._entry, ptr @asoc_qcom_lpass_platform_register._entry.13, ptr @asoc_qcom_lpass_platform_register._entry.16, ptr @asoc_qcom_lpass_platform_register._entry.19, ptr @asoc_qcom_lpass_platform_register._entry.6, ptr @asoc_qcom_lpass_platform_register._entry.9, ptr @asoc_qcom_lpass_platform_register._entry_ptr, ptr @asoc_qcom_lpass_platform_register._entry_ptr.11, ptr @asoc_qcom_lpass_platform_register._entry_ptr.15, ptr @asoc_qcom_lpass_platform_register._entry_ptr.18, ptr @asoc_qcom_lpass_platform_register._entry_ptr.21, ptr @asoc_qcom_lpass_platform_register._entry_ptr.8, ptr @lpass_dma_interrupt_handler._entry, ptr @lpass_dma_interrupt_handler._entry.26, ptr @lpass_dma_interrupt_handler._entry.29, ptr @lpass_dma_interrupt_handler._entry.31, ptr @lpass_dma_interrupt_handler._entry.35, ptr @lpass_dma_interrupt_handler._entry.37, ptr @lpass_dma_interrupt_handler._entry.40, ptr @lpass_dma_interrupt_handler._entry_ptr, ptr @lpass_dma_interrupt_handler._entry_ptr.28, ptr @lpass_dma_interrupt_handler._entry_ptr.30, ptr @lpass_dma_interrupt_handler._entry_ptr.34, ptr @lpass_dma_interrupt_handler._entry_ptr.36, ptr @lpass_dma_interrupt_handler._entry_ptr.39, ptr @lpass_dma_interrupt_handler._entry_ptr.41, ptr @lpass_platform_hdmiif_irq._entry, ptr @lpass_platform_hdmiif_irq._entry_ptr, ptr @lpass_platform_lpaif_irq._entry, ptr @lpass_platform_lpaif_irq._entry_ptr, ptr @lpass_platform_pcmops_hw_free._entry, ptr @lpass_platform_pcmops_hw_free._entry_ptr, ptr @lpass_platform_pcmops_hw_params._entry, ptr @lpass_platform_pcmops_hw_params._entry.51, ptr @lpass_platform_pcmops_hw_params._entry.54, ptr @lpass_platform_pcmops_hw_params._entry.57, ptr @lpass_platform_pcmops_hw_params._entry.60, ptr @lpass_platform_pcmops_hw_params._entry.63, ptr @lpass_platform_pcmops_hw_params._entry.66, ptr @lpass_platform_pcmops_hw_params._entry.69, ptr @lpass_platform_pcmops_hw_params._entry.72, ptr @lpass_platform_pcmops_hw_params._entry.75, ptr @lpass_platform_pcmops_hw_params._entry.77, ptr @lpass_platform_pcmops_hw_params._entry.79, ptr @lpass_platform_pcmops_hw_params._entry_ptr, ptr @lpass_platform_pcmops_hw_params._entry_ptr.53, ptr @lpass_platform_pcmops_hw_params._entry_ptr.56, ptr @lpass_platform_pcmops_hw_params._entry_ptr.59, ptr @lpass_platform_pcmops_hw_params._entry_ptr.62, ptr @lpass_platform_pcmops_hw_params._entry_ptr.65, ptr @lpass_platform_pcmops_hw_params._entry_ptr.68, ptr @lpass_platform_pcmops_hw_params._entry_ptr.71, ptr @lpass_platform_pcmops_hw_params._entry_ptr.74, ptr @lpass_platform_pcmops_hw_params._entry_ptr.76, ptr @lpass_platform_pcmops_hw_params._entry_ptr.78, ptr @lpass_platform_pcmops_hw_params._entry_ptr.81, ptr @lpass_platform_pcmops_open._entry, ptr @lpass_platform_pcmops_open._entry.46, ptr @lpass_platform_pcmops_open._entry_ptr, ptr @lpass_platform_pcmops_open._entry_ptr.48, ptr @lpass_platform_pcmops_pointer._entry, ptr @lpass_platform_pcmops_pointer._entry.113, ptr @lpass_platform_pcmops_pointer._entry_ptr, ptr @lpass_platform_pcmops_pointer._entry_ptr.115, ptr @lpass_platform_pcmops_prepare._entry, ptr @lpass_platform_pcmops_prepare._entry.85, ptr @lpass_platform_pcmops_prepare._entry.88, ptr @lpass_platform_pcmops_prepare._entry.91, ptr @lpass_platform_pcmops_prepare._entry_ptr, ptr @lpass_platform_pcmops_prepare._entry_ptr.87, ptr @lpass_platform_pcmops_prepare._entry_ptr.90, ptr @lpass_platform_pcmops_prepare._entry_ptr.92, ptr @lpass_platform_pcmops_trigger._entry, ptr @lpass_platform_pcmops_trigger._entry.101, ptr @lpass_platform_pcmops_trigger._entry.103, ptr @lpass_platform_pcmops_trigger._entry.105, ptr @lpass_platform_pcmops_trigger._entry.107, ptr @lpass_platform_pcmops_trigger._entry.109, ptr @lpass_platform_pcmops_trigger._entry.94, ptr @lpass_platform_pcmops_trigger._entry.96, ptr @lpass_platform_pcmops_trigger._entry.99, ptr @lpass_platform_pcmops_trigger._entry_ptr, ptr @lpass_platform_pcmops_trigger._entry_ptr.100, ptr @lpass_platform_pcmops_trigger._entry_ptr.102, ptr @lpass_platform_pcmops_trigger._entry_ptr.104, ptr @lpass_platform_pcmops_trigger._entry_ptr.106, ptr @lpass_platform_pcmops_trigger._entry_ptr.108, ptr @lpass_platform_pcmops_trigger._entry_ptr.110, ptr @lpass_platform_pcmops_trigger._entry_ptr.95, ptr @lpass_platform_pcmops_trigger._entry_ptr.98, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @lpass_component_driver, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.32, ptr @.str.33, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @lpass_platform_pcm_hardware, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.93, ptr @.str.97, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @switch.table.lpass_platform_pcmops_hw_params], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_qcom_lpass_platform_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_qcom_lpass_platform_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_qcom_lpass_platform_register._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_qcom_lpass_platform_register._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_qcom_lpass_platform_register._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_qcom_lpass_platform_register._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_lpaif_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_dma_interrupt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_dma_interrupt_handler._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_dma_interrupt_handler._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_dma_interrupt_handler._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_dma_interrupt_handler._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_dma_interrupt_handler._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_dma_interrupt_handler._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_hdmiif_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_open._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_hw_params._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_hw_params._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_hw_params._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_hw_params._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_hw_params._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_hw_params._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_hw_params._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_hw_params._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_hw_params._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_hw_params._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_hw_params._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_hw_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_prepare._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_prepare._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_prepare._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_trigger._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_trigger._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_trigger._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_trigger._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_trigger._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_trigger._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_trigger._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_trigger._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_pointer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_platform_pcmops_pointer._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lpass_platform_pcmops_hw_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asoc_qcom_lpass_platform_register(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %variant = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %call1 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str) #6
  %lpaif_irq = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %lpaif_irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %lpaif_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lpaif_map = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %lpaif_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lpaif_map, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.1, i32 noundef %call4) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %lpaif_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lpaif_irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev7, i32 noundef %10, ptr noundef nonnull @lpass_platform_lpaif_irq, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.7, i32 noundef %call.i) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %lpaif_map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lpaif_map, align 4
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %variant.i = getelementptr inbounds %struct.lpass_data, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %variant.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev7, i32 noundef 36, i32 noundef 3520) #6
  %rd_dmactl2.i = getelementptr inbounds %struct.lpass_data, ptr %14, i32 0, i32 21
  %17 = ptrtoint ptr %rd_dmactl2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %rd_dmactl2.i, align 4
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.end16.do.end24_crit_edge, label %if.end.i

if.end16.do.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end.i:                                         ; preds = %if.end16
  %call.i34.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev7, i32 noundef 36, i32 noundef 3520) #6
  %wr_dmactl5.i = getelementptr inbounds %struct.lpass_data, ptr %14, i32 0, i32 22
  %18 = ptrtoint ptr %wr_dmactl5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i34.i, ptr %wr_dmactl5.i, align 4
  %cmp7.i = icmp eq ptr %call.i34.i, null
  br i1 %cmp7.i, label %if.end.i.do.end24_crit_edge, label %if.end9.i

if.end.i.do.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end9.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %rd_dmactl2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rd_dmactl2.i, align 4
  %rdma_intf.i = getelementptr inbounds %struct.lpass_variant, ptr %16, i32 0, i32 74
  %call12.i = tail call i32 @devm_regmap_field_bulk_alloc(ptr noundef %dev7, ptr noundef %12, ptr noundef %20, ptr noundef %rdma_intf.i, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %lpass_platform_alloc_dmactl_fields.exit, label %if.end9.i.do.end24_crit_edge

if.end9.i.do.end24_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

lpass_platform_alloc_dmactl_fields.exit:          ; preds = %if.end9.i
  %wrdma_intf.i = getelementptr inbounds %struct.lpass_variant, ptr %16, i32 0, i32 80
  %call16.i = tail call i32 @devm_regmap_field_bulk_alloc(ptr noundef %dev7, ptr noundef %12, ptr noundef nonnull %call.i34.i, ptr noundef %wrdma_intf.i, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool20.not = icmp eq i32 %call16.i, 0
  br i1 %tobool20.not, label %if.end26, label %lpass_platform_alloc_dmactl_fields.exit.do.end24_crit_edge

lpass_platform_alloc_dmactl_fields.exit.do.end24_crit_edge: ; preds = %lpass_platform_alloc_dmactl_fields.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.end24:                                         ; preds = %lpass_platform_alloc_dmactl_fields.exit.do.end24_crit_edge, %if.end9.i.do.end24_crit_edge, %if.end.i.do.end24_crit_edge, %if.end16.do.end24_crit_edge
  %retval.0.i123 = phi i32 [ %call16.i, %lpass_platform_alloc_dmactl_fields.exit.do.end24_crit_edge ], [ %call12.i, %if.end9.i.do.end24_crit_edge ], [ -12, %if.end.i.do.end24_crit_edge ], [ -12, %if.end16.do.end24_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i123) #9
  br label %cleanup

if.end26:                                         ; preds = %lpass_platform_alloc_dmactl_fields.exit
  %hdmi_port_enable = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %hdmi_port_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hdmi_port_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool27.not = icmp eq i32 %22, 0
  br i1 %tobool27.not, label %if.end26.if.end63_crit_edge, label %if.then28

if.end26.if.end63_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then28:                                        ; preds = %if.end26
  %call29 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.12) #6
  %hdmiif_irq = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %hdmiif_irq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call29, ptr %hdmiif_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp31 = icmp slt i32 %call29, 0
  br i1 %cmp31, label %if.then28.cleanup_crit_edge, label %if.end33

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.then28
  %call.i114 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev7, i32 noundef %call29, ptr noundef nonnull @lpass_platform_hdmiif_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool37.not = icmp eq i32 %call.i114, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.14, i32 noundef %call.i114) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %hdmiif_map = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %hdmiif_map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdmiif_map, align 4
  %hdmi_irq_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %3, i32 0, i32 24
  %26 = ptrtoint ptr %hdmi_irq_reg_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hdmi_irq_reg_base, align 4
  %add44 = add i32 %27, 4
  %call45 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %add44, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.17, i32 noundef %call45) #9
  br label %cleanup

if.end52:                                         ; preds = %if.end43
  %28 = ptrtoint ptr %hdmiif_map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdmiif_map, align 4
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i, align 4
  %variant.i116 = getelementptr inbounds %struct.lpass_data, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %variant.i116 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %variant.i116, align 4
  %call.i.i117 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev7, i32 noundef 36, i32 noundef 3520) #6
  %cmp.i118 = icmp eq ptr %call.i.i117, null
  br i1 %cmp.i118, label %if.end52.do.end60_crit_edge, label %lpass_platform_alloc_hdmidmactl_fields.exit

if.end52.do.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

lpass_platform_alloc_hdmidmactl_fields.exit:      ; preds = %if.end52
  %hdmi_rd_dmactl.i = getelementptr inbounds %struct.lpass_data, ptr %31, i32 0, i32 23
  %34 = ptrtoint ptr %hdmi_rd_dmactl.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i117, ptr %hdmi_rd_dmactl.i, align 4
  %bursten.i = getelementptr inbounds %struct.lpaif_dmactl, ptr %call.i.i117, i32 0, i32 1
  %hdmi_rdma_bursten.i = getelementptr inbounds %struct.lpass_variant, ptr %33, i32 0, i32 66
  %call2.i = tail call i32 @devm_regmap_field_bulk_alloc(ptr noundef %dev7, ptr noundef %29, ptr noundef %bursten.i, ptr noundef %hdmi_rdma_bursten.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool56.not = icmp eq i32 %call2.i, 0
  br i1 %tobool56.not, label %lpass_platform_alloc_hdmidmactl_fields.exit.if.end63_crit_edge, label %lpass_platform_alloc_hdmidmactl_fields.exit.do.end60_crit_edge

lpass_platform_alloc_hdmidmactl_fields.exit.do.end60_crit_edge: ; preds = %lpass_platform_alloc_hdmidmactl_fields.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

lpass_platform_alloc_hdmidmactl_fields.exit.if.end63_crit_edge: ; preds = %lpass_platform_alloc_hdmidmactl_fields.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.end60:                                         ; preds = %lpass_platform_alloc_hdmidmactl_fields.exit.do.end60_crit_edge, %if.end52.do.end60_crit_edge
  %retval.0.i120126 = phi i32 [ %call2.i, %lpass_platform_alloc_hdmidmactl_fields.exit.do.end60_crit_edge ], [ -12, %if.end52.do.end60_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i120126) #9
  br label %cleanup

if.end63:                                         ; preds = %lpass_platform_alloc_hdmidmactl_fields.exit.if.end63_crit_edge, %if.end26.if.end63_crit_edge
  %call65 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev7, ptr noundef nonnull @lpass_component_driver, ptr noundef null, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end60, %do.end50, %do.end41, %if.then28.cleanup_crit_edge, %do.end24, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call.i, %do.end14 ], [ %retval.0.i123, %do.end24 ], [ %call.i114, %do.end41 ], [ %call45, %do.end50 ], [ %retval.0.i120126, %do.end60 ], [ %call65, %if.end63 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_platform_lpaif_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %irqs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.lpass_data, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqs) #6
  %2 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irqs, align 4, !annotation !204
  %lpaif_map = getelementptr inbounds %struct.lpass_data, ptr %data, i32 0, i32 9
  %3 = ptrtoint ptr %lpaif_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lpaif_map, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %add = add i32 %6, 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %irqs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %do.end

for.body.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irqs, align 4
  %and = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %for.body.preheader.for.inc_crit_edge, label %land.lhs.true

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call) #9
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body.preheader
  %arrayidx = getelementptr %struct.lpass_data, ptr %data, i32 0, i32 16, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %land.lhs.true.for.inc_crit_edge, label %if.then6

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then6:                                         ; preds = %land.lhs.true
  %call9 = call fastcc i32 @lpass_dma_interrupt_handler(ptr noundef nonnull %10, ptr noundef %data, i32 noundef 0, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 1
  br i1 %cmp10.not, label %if.then6.for.inc_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.then6.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %11 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irqs, align 4
  %and.1 = and i32 %12, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool4.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.lpass_data, ptr %data, i32 0, i32 16, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1, align 4
  %tobool5.not.1 = icmp eq ptr %14, null
  br i1 %tobool5.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then6.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then6.1:                                       ; preds = %land.lhs.true.1
  %call9.1 = call fastcc i32 @lpass_dma_interrupt_handler(ptr noundef nonnull %14, ptr noundef %data, i32 noundef 1, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.1)
  %cmp10.not.1 = icmp eq i32 %call9.1, 1
  br i1 %cmp10.not.1, label %if.then6.1.for.inc.1_crit_edge, label %if.then6.1.cleanup_crit_edge

if.then6.1.cleanup_crit_edge:                     ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.1.for.inc.1_crit_edge:                   ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then6.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %15 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irqs, align 4
  %and.2 = and i32 %16, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool4.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool4.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.lpass_data, ptr %data, i32 0, i32 16, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.2, align 4
  %tobool5.not.2 = icmp eq ptr %18, null
  br i1 %tobool5.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.then6.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then6.2:                                       ; preds = %land.lhs.true.2
  %call9.2 = call fastcc i32 @lpass_dma_interrupt_handler(ptr noundef nonnull %18, ptr noundef %data, i32 noundef 2, i32 noundef %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.2)
  %cmp10.not.2 = icmp eq i32 %call9.2, 1
  br i1 %cmp10.not.2, label %if.then6.2.for.inc.2_crit_edge, label %if.then6.2.cleanup_crit_edge

if.then6.2.cleanup_crit_edge:                     ; preds = %if.then6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.2.for.inc.2_crit_edge:                   ; preds = %if.then6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then6.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %19 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irqs, align 4
  %and.3 = and i32 %20, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool4.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool4.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.lpass_data, ptr %data, i32 0, i32 16, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.3, align 4
  %tobool5.not.3 = icmp eq ptr %22, null
  br i1 %tobool5.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %if.then6.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then6.3:                                       ; preds = %land.lhs.true.3
  %call9.3 = call fastcc i32 @lpass_dma_interrupt_handler(ptr noundef nonnull %22, ptr noundef %data, i32 noundef 3, i32 noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.3)
  %cmp10.not.3 = icmp eq i32 %call9.3, 1
  br i1 %cmp10.not.3, label %if.then6.3.for.inc.3_crit_edge, label %if.then6.3.cleanup_crit_edge

if.then6.3.cleanup_crit_edge:                     ; preds = %if.then6.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.3.for.inc.3_crit_edge:                   ; preds = %if.then6.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then6.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %23 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irqs, align 4
  %and.4 = and i32 %24, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool4.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool4.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.lpass_data, ptr %data, i32 0, i32 16, i32 4
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.4, align 4
  %tobool5.not.4 = icmp eq ptr %26, null
  br i1 %tobool5.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %if.then6.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then6.4:                                       ; preds = %land.lhs.true.4
  %call9.4 = call fastcc i32 @lpass_dma_interrupt_handler(ptr noundef nonnull %26, ptr noundef %data, i32 noundef 4, i32 noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.4)
  %cmp10.not.4 = icmp eq i32 %call9.4, 1
  br i1 %cmp10.not.4, label %if.then6.4.for.inc.4_crit_edge, label %if.then6.4.cleanup_crit_edge

if.then6.4.cleanup_crit_edge:                     ; preds = %if.then6.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.4.for.inc.4_crit_edge:                   ; preds = %if.then6.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then6.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %27 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irqs, align 4
  %and.5 = and i32 %28, 229376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool4.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool4.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.lpass_data, ptr %data, i32 0, i32 16, i32 5
  %29 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.5, align 4
  %tobool5.not.5 = icmp eq ptr %30, null
  br i1 %tobool5.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %if.then6.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then6.5:                                       ; preds = %land.lhs.true.5
  %call9.5 = call fastcc i32 @lpass_dma_interrupt_handler(ptr noundef nonnull %30, ptr noundef %data, i32 noundef 5, i32 noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.5)
  %cmp10.not.5 = icmp eq i32 %call9.5, 1
  br i1 %cmp10.not.5, label %if.then6.5.for.inc.5_crit_edge, label %if.then6.5.cleanup_crit_edge

if.then6.5.cleanup_crit_edge:                     ; preds = %if.then6.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.5.for.inc.5_crit_edge:                   ; preds = %if.then6.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then6.5.for.inc.5_crit_edge, %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %31 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irqs, align 4
  %and.6 = and i32 %32, 1835008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool4.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool4.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %arrayidx.6 = getelementptr %struct.lpass_data, ptr %data, i32 0, i32 16, i32 6
  %33 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.6, align 4
  %tobool5.not.6 = icmp eq ptr %34, null
  br i1 %tobool5.not.6, label %land.lhs.true.6.for.inc.6_crit_edge, label %if.then6.6

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.then6.6:                                       ; preds = %land.lhs.true.6
  %call9.6 = call fastcc i32 @lpass_dma_interrupt_handler(ptr noundef nonnull %34, ptr noundef %data, i32 noundef 6, i32 noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.6)
  %cmp10.not.6 = icmp eq i32 %call9.6, 1
  br i1 %cmp10.not.6, label %if.then6.6.for.inc.6_crit_edge, label %if.then6.6.cleanup_crit_edge

if.then6.6.cleanup_crit_edge:                     ; preds = %if.then6.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.6.for.inc.6_crit_edge:                   ; preds = %if.then6.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then6.6.for.inc.6_crit_edge, %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %35 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irqs, align 4
  %and.7 = and i32 %36, 14680064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool4.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool4.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %arrayidx.7 = getelementptr %struct.lpass_data, ptr %data, i32 0, i32 16, i32 7
  %37 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.7, align 4
  %tobool5.not.7 = icmp eq ptr %38, null
  br i1 %tobool5.not.7, label %land.lhs.true.7.for.inc.7_crit_edge, label %if.then6.7

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.then6.7:                                       ; preds = %land.lhs.true.7
  %call9.7 = call fastcc i32 @lpass_dma_interrupt_handler(ptr noundef nonnull %38, ptr noundef %data, i32 noundef 7, i32 noundef %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.7)
  %cmp10.not.7 = icmp eq i32 %call9.7, 1
  br i1 %cmp10.not.7, label %if.then6.7.for.inc.7_crit_edge, label %if.then6.7.cleanup_crit_edge

if.then6.7.cleanup_crit_edge:                     ; preds = %if.then6.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.7.for.inc.7_crit_edge:                   ; preds = %if.then6.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then6.7.for.inc.7_crit_edge, %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %if.then6.7.cleanup_crit_edge, %if.then6.6.cleanup_crit_edge, %if.then6.5.cleanup_crit_edge, %if.then6.4.cleanup_crit_edge, %if.then6.3.cleanup_crit_edge, %if.then6.2.cleanup_crit_edge, %if.then6.1.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call9, %if.then6.cleanup_crit_edge ], [ %call9.1, %if.then6.1.cleanup_crit_edge ], [ %call9.2, %if.then6.2.cleanup_crit_edge ], [ %call9.3, %if.then6.3.cleanup_crit_edge ], [ %call9.4, %if.then6.4.cleanup_crit_edge ], [ %call9.5, %if.then6.5.cleanup_crit_edge ], [ %call9.6, %if.then6.6.cleanup_crit_edge ], [ %call9.7, %if.then6.7.cleanup_crit_edge ], [ 1, %for.inc.7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqs) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_platform_hdmiif_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %irqs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.lpass_data, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqs) #6
  %2 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irqs, align 4, !annotation !204
  %hdmiif_map = getelementptr inbounds %struct.lpass_data, ptr %data, i32 0, i32 10
  %3 = ptrtoint ptr %hdmiif_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdmiif_map, align 4
  %hdmi_irq_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %hdmi_irq_reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hdmi_irq_reg_base, align 4
  %add = add i32 %6, 8
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %irqs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %do.end

for.body.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irqs, align 4
  %and = and i32 %8, 25182215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %for.body.preheader.for.inc_crit_edge, label %land.lhs.true

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call) #9
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body.preheader
  %arrayidx = getelementptr %struct.lpass_data, ptr %data, i32 0, i32 17, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %if.then10

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10:                                        ; preds = %land.lhs.true
  %call13 = call fastcc i32 @lpass_dma_interrupt_handler(ptr noundef nonnull %10, ptr noundef %data, i32 noundef 0, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 1
  br i1 %cmp14.not, label %if.then10.for.inc_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.then10.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %11 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irqs, align 4
  %and.1 = and i32 %12, 41975864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool8.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool8.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.lpass_data, ptr %data, i32 0, i32 17, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1, align 4
  %tobool9.not.1 = icmp eq ptr %14, null
  br i1 %tobool9.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then10.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then10.1:                                      ; preds = %land.lhs.true.1
  %call13.1 = call fastcc i32 @lpass_dma_interrupt_handler(ptr noundef nonnull %14, ptr noundef %data, i32 noundef 1, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.1)
  %cmp14.not.1 = icmp eq i32 %call13.1, 1
  br i1 %cmp14.not.1, label %if.then10.1.for.inc.1_crit_edge, label %if.then10.1.cleanup_crit_edge

if.then10.1.cleanup_crit_edge:                    ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.1.for.inc.1_crit_edge:                  ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then10.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %15 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irqs, align 4
  %and.2 = and i32 %16, 75563456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool8.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool8.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.lpass_data, ptr %data, i32 0, i32 17, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.2, align 4
  %tobool9.not.2 = icmp eq ptr %18, null
  br i1 %tobool9.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.then10.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then10.2:                                      ; preds = %land.lhs.true.2
  %call13.2 = call fastcc i32 @lpass_dma_interrupt_handler(ptr noundef nonnull %18, ptr noundef %data, i32 noundef 2, i32 noundef %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.2)
  %cmp14.not.2 = icmp eq i32 %call13.2, 1
  br i1 %cmp14.not.2, label %if.then10.2.for.inc.2_crit_edge, label %if.then10.2.cleanup_crit_edge

if.then10.2.cleanup_crit_edge:                    ; preds = %if.then10.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.2.for.inc.2_crit_edge:                  ; preds = %if.then10.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then10.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %19 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irqs, align 4
  %and.3 = and i32 %20, 142740992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool8.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool8.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.lpass_data, ptr %data, i32 0, i32 17, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.3, align 4
  %tobool9.not.3 = icmp eq ptr %22, null
  br i1 %tobool9.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %if.then10.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then10.3:                                      ; preds = %land.lhs.true.3
  %call13.3 = call fastcc i32 @lpass_dma_interrupt_handler(ptr noundef nonnull %22, ptr noundef %data, i32 noundef 3, i32 noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.3)
  %cmp14.not.3 = icmp eq i32 %call13.3, 1
  br i1 %cmp14.not.3, label %if.then10.3.for.inc.3_crit_edge, label %if.then10.3.cleanup_crit_edge

if.then10.3.cleanup_crit_edge:                    ; preds = %if.then10.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.3.for.inc.3_crit_edge:                  ; preds = %if.then10.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then10.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %if.then10.3.cleanup_crit_edge, %if.then10.2.cleanup_crit_edge, %if.then10.1.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call13, %if.then10.cleanup_crit_edge ], [ %call13.1, %if.then10.1.cleanup_crit_edge ], [ %call13.2, %if.then10.2.cleanup_crit_edge ], [ %call13.3, %if.then10.3.cleanup_crit_edge ], [ 1, %for.inc.3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqs) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpass_dma_interrupt_handler(ptr noundef %substream, ptr nocapture noundef readonly %drvdata, i32 noundef %chan, i32 noundef %interrupts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %variant = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 13
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %mul = mul i32 %chan, 3
  %shl = shl i32 7, %mul
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end [
    i32 5, label %sw.bb
    i32 0, label %entry.sw.bb6_crit_edge
    i32 1, label %entry.sw.bb6_crit_edge134
    i32 2, label %entry.sw.bb6_crit_edge135
    i32 3, label %entry.sw.bb6_crit_edge136
    i32 4, label %entry.sw.bb6_crit_edge137
  ]

entry.sw.bb6_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb6_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb6_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb6_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hdmiif_map = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 10
  %hdmi_irq_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %7, i32 0, i32 24
  %add1 = add i32 %chan, 14
  %shl2 = shl nuw i32 1, %add1
  %add3 = add i32 %chan, 24
  %shl4 = shl nuw i32 1, %add3
  %or = or i32 %shl4, %shl2
  %or5 = or i32 %or, 8388608
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge134, %entry.sw.bb6_crit_edge135, %entry.sw.bb6_crit_edge136, %entry.sw.bb6_crit_edge137
  %lpaif_map = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %11) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %reg.0.in.in = phi ptr [ %7, %sw.bb6 ], [ %hdmi_irq_reg_base, %sw.bb ]
  %val.0 = phi i32 [ 0, %sw.bb6 ], [ %or5, %sw.bb ]
  %map.0.in = phi ptr [ %lpaif_map, %sw.bb6 ], [ %hdmiif_map, %sw.bb ]
  %15 = ptrtoint ptr %map.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %map.0 = load ptr, ptr %map.0.in, align 4
  %16 = ptrtoint ptr %reg.0.in.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %reg.0.in = load i32, ptr %reg.0.in.in, align 4
  %reg.0 = add i32 %reg.0.in, 12
  %shl11 = shl nuw i32 1, %mul
  %and = and i32 %shl11, %interrupts
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.if.end21_crit_edge, label %if.then

sw.epilog.if.end21_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then:                                          ; preds = %sw.epilog
  %or14 = or i32 %val.0, %shl11
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %map.0, i32 noundef %reg.0, i32 noundef %shl, i32 noundef %or14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end, label %do.end19

do.end19:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.27, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_period_elapsed(ptr noundef %substream) #6
  br label %if.end21

if.end21:                                         ; preds = %if.end, %sw.epilog.if.end21_crit_edge
  %ret.0 = phi i32 [ 1, %if.end ], [ 0, %sw.epilog.if.end21_crit_edge ]
  %shl23 = shl i32 2, %mul
  %and24 = and i32 %shl23, %interrupts
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end21.if.end43_crit_edge, label %if.then26

if.end21.if.end43_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then26:                                        ; preds = %if.end21
  %or29 = or i32 %val.0, %shl23
  %call.i132 = tail call i32 @regmap_update_bits_base(ptr noundef %map.0, i32 noundef %reg.0, i32 noundef %shl, i32 noundef %or29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool31.not = icmp eq i32 %call.i132, 0
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  br i1 %tobool31.not, label %do.end40, label %do.end35

do.end35:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.27, i32 noundef %call.i132) #9
  br label %cleanup

do.end40:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.32) #9
  %call42 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %substream) #6
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.end21.if.end43_crit_edge
  %ret.1 = phi i32 [ 1, %do.end40 ], [ %ret.0, %if.end21.if.end43_crit_edge ]
  %shl45 = shl i32 4, %mul
  %and46 = and i32 %shl45, %interrupts
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end43.if.end65_crit_edge, label %if.then48

if.end43.if.end65_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then48:                                        ; preds = %if.end43
  %or51 = or i32 %val.0, %shl45
  %call.i133 = tail call i32 @regmap_update_bits_base(ptr noundef %map.0, i32 noundef %reg.0, i32 noundef %shl, i32 noundef %or51, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool53.not = icmp eq i32 %call.i133, 0
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  br i1 %tobool53.not, label %do.end62, label %do.end57

do.end57:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.27, i32 noundef %call.i133) #9
  br label %cleanup

do.end62:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.38) #9
  %call64 = tail call i32 @snd_pcm_stop(ptr noundef %substream, i32 noundef 8) #6
  br label %if.end65

if.end65:                                         ; preds = %do.end62, %if.end43.if.end65_crit_edge
  %ret.2 = phi i32 [ 1, %do.end62 ], [ %ret.1, %if.end43.if.end65_crit_edge ]
  %and66 = and i32 %val.0, %interrupts
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.cleanup_crit_edge, label %if.then68

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then68:                                        ; preds = %if.end65
  %call69 = tail call i32 @regmap_write(ptr noundef %map.0, i32 noundef %reg.0, i32 noundef %val.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then68.cleanup_crit_edge, label %do.end74

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end74:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.27, i32 noundef %call69) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %if.then68.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %do.end57, %do.end35, %do.end19, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end19 ], [ 0, %do.end35 ], [ 0, %do.end57 ], [ 0, %do.end74 ], [ %ret.2, %if.end65.cleanup_crit_edge ], [ 1, %if.then68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_field_bulk_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_platform_pcmops_suspend(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp eq i32 %5, 5
  %hdmiif_map = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 10
  %lpaif_map = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 9
  %map.0.in = select i1 %cmp, ptr %hdmiif_map, ptr %lpaif_map
  %6 = ptrtoint ptr %map.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %map.0 = load ptr, ptr %map.0.in, align 4
  tail call void @regcache_cache_only(ptr noundef %map.0, i1 noundef zeroext true) #6
  tail call void @regcache_mark_dirty(ptr noundef %map.0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_platform_pcmops_resume(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp eq i32 %5, 5
  %hdmiif_map = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 10
  %lpaif_map = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 9
  %map.0.in = select i1 %cmp, ptr %hdmiif_map, ptr %lpaif_map
  %6 = ptrtoint ptr %map.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %map.0 = load ptr, ptr %map.0.in, align 4
  tail call void @regcache_cache_only(ptr noundef %map.0, i1 noundef zeroext false) #6
  %call1 = tail call i32 @regcache_sync(ptr noundef %map.0) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_platform_pcm_new(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %soc_runtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %soc_runtime, i32 0, i32 7
  %0 = ptrtoint ptr %pcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 2, ptr noundef %3, i32 noundef 49152, i32 noundef 0) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_platform_pcmops_open(ptr nocapture noundef %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %variant = getelementptr inbounds %struct.lpass_data, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %id2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 1
  %20 = ptrtoint ptr %id2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %id2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver, align 4
  %id5 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id5, align 4
  %i2s_port = getelementptr inbounds %struct.lpass_pcm_data, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %i2s_port to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %i2s_port, align 4
  %private_data6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %27 = ptrtoint ptr %private_data6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %private_data6, align 8
  %alloc_dma_channel = getelementptr inbounds %struct.lpass_variant, ptr %13, i32 0, i32 90
  %28 = ptrtoint ptr %alloc_dma_channel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %alloc_dma_channel, align 4
  %tobool7.not = icmp eq ptr %29, null
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %if.end11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end11:                                         ; preds = %if.end
  %call10 = tail call i32 %29(ptr noundef %11, i32 noundef %15, i32 noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then12, label %if.end11.if.end13_crit_edge

if.end11.if.end13_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end11.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %dma_ch.0107 = phi i32 [ %call10, %if.end11.if.end13_crit_edge ], [ 0, %if.end.if.end13_crit_edge ]
  %30 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver, align 4
  %id15 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %id15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %33)
  %cmp16 = icmp eq i32 %33, 5
  %lpaif_map = getelementptr inbounds %struct.lpass_data, ptr %11, i32 0, i32 9
  %arrayidx21 = getelementptr %struct.lpass_data, ptr %11, i32 0, i32 16, i32 %dma_ch.0107
  %hdmiif_map = getelementptr inbounds %struct.lpass_data, ptr %11, i32 0, i32 10
  %arrayidx18 = getelementptr %struct.lpass_data, ptr %11, i32 0, i32 17, i32 %dma_ch.0107
  %arrayidx21.sink = select i1 %cmp16, ptr %arrayidx18, ptr %arrayidx21
  %map.0.in = select i1 %cmp16, ptr %hdmiif_map, ptr %lpaif_map
  %34 = ptrtoint ptr %map.0.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %map.0 = load ptr, ptr %map.0.in, align 4
  %35 = ptrtoint ptr %arrayidx21.sink to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %substream, ptr %arrayidx21.sink, align 4
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %dma_ch.0107, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp24 = icmp eq i32 %15, 0
  br i1 %cmp24, label %cond.true, label %cond.false32

cond.true:                                        ; preds = %if.end13
  %37 = ptrtoint ptr %i2s_port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i2s_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %38)
  %cmp26 = icmp eq i32 %38, 5
  br i1 %cmp26, label %cond.true27, label %cond.false

cond.true27:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %hdmi_rdma_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %13, i32 0, i32 6
  %39 = ptrtoint ptr %hdmi_rdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hdmi_rdma_reg_base, align 4
  %hdmi_rdma_reg_stride = getelementptr inbounds %struct.lpass_variant, ptr %13, i32 0, i32 7
  %41 = ptrtoint ptr %hdmi_rdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hdmi_rdma_reg_stride, align 4
  %mul = mul i32 %42, %dma_ch.0107
  %add28 = add i32 %mul, %40
  br label %cond.end36

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %rdma_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %13, i32 0, i32 3
  %43 = ptrtoint ptr %rdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rdma_reg_base, align 4
  %rdma_reg_stride = getelementptr inbounds %struct.lpass_variant, ptr %13, i32 0, i32 4
  %45 = ptrtoint ptr %rdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rdma_reg_stride, align 4
  %mul30 = mul i32 %46, %dma_ch.0107
  %add31 = add i32 %mul30, %44
  br label %cond.end36

cond.false32:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %wrdma_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %13, i32 0, i32 9
  %47 = ptrtoint ptr %wrdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wrdma_reg_base, align 4
  %wrdma_reg_stride = getelementptr inbounds %struct.lpass_variant, ptr %13, i32 0, i32 10
  %49 = ptrtoint ptr %wrdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wrdma_reg_stride, align 4
  %wrdma_channel_start = getelementptr inbounds %struct.lpass_variant, ptr %13, i32 0, i32 87
  %51 = ptrtoint ptr %wrdma_channel_start to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wrdma_channel_start, align 4
  %sub = sub i32 %dma_ch.0107, %52
  %mul34 = mul i32 %sub, %50
  %add35 = add i32 %mul34, %48
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false32, %cond.false, %cond.true27
  %cond37 = phi i32 [ %add35, %cond.false32 ], [ %add28, %cond.true27 ], [ %add31, %cond.false ]
  %call38 = tail call i32 @regmap_write(ptr noundef %map.0, i32 noundef %cond37, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %do.end

do.end:                                           ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.44, i32 noundef %call38) #9
  br label %cleanup

if.end41:                                         ; preds = %cond.end36
  %call42 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @lpass_platform_pcm_hardware) #6
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %55 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 49152, ptr %dma_bytes, align 4
  %call43 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.47, i32 noundef %call43) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end41.cleanup_crit_edge, %do.end, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ %call38, %do.end ], [ -22, %if.then45 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_platform_pcmops_close(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %variant = getelementptr inbounds %struct.lpass_data, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %18 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp = icmp eq i32 %17, 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %arrayidx6 = getelementptr %struct.lpass_data, ptr %11, i32 0, i32 16, i32 %21
  %arrayidx3 = getelementptr %struct.lpass_data, ptr %11, i32 0, i32 17, i32 %21
  %arrayidx6.sink = select i1 %cmp, ptr %arrayidx3, ptr %arrayidx6
  %22 = ptrtoint ptr %arrayidx6.sink to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx6.sink, align 4
  %free_dma_channel = getelementptr inbounds %struct.lpass_variant, ptr %13, i32 0, i32 91
  %23 = ptrtoint ptr %free_dma_channel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %free_dma_channel, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then7

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %19, align 4
  %call10 = tail call i32 %24(ptr noundef %11, i32 noundef %26, i32 noundef %17) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %entry.if.end11_crit_edge
  tail call void @kfree(ptr noundef %19) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_platform_pcmops_hw_params(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data1, align 8
  %variant = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 13
  %14 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %17, %entry.if.then.i.i_crit_edge ], [ %20, %for.inc.i.i.if.then.i.i_crit_edge ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #6, !range !205
  %add.i.i = or i32 %18, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.1.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %arrayidx.i.i194 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i194, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %23 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stream, align 4
  %i2s_port = getelementptr inbounds %struct.lpass_pcm_data, ptr %13, i32 0, i32 1
  %25 = ptrtoint ptr %i2s_port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i2s_port, align 4
  %dmactl_audif_start = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 86
  %27 = ptrtoint ptr %dmactl_audif_start to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dmactl_audif_start, align 4
  %add = add i32 %28, %26
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 3
  %29 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver, align 4
  %id4 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp eq i32 %24, 0
  br i1 %cmp, label %if.then, label %if.else7

if.then:                                          ; preds = %params_format.exit
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp5 = icmp eq i32 %32, 5
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %hdmi_rd_dmactl = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 23
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %rd_dmactl = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 21
  br label %if.end9

if.else7:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %wr_dmactl = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 22
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %13, align 4
  %wrdma_channel_start = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 87
  %37 = ptrtoint ptr %wrdma_channel_start to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wrdma_channel_start, align 4
  %sub = sub i32 %36, %38
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.else, %if.then6
  %dmactl.0.in = phi ptr [ %hdmi_rd_dmactl, %if.then6 ], [ %rd_dmactl, %if.else ], [ %wr_dmactl, %if.else7 ]
  %id.0 = phi i32 [ %34, %if.then6 ], [ %34, %if.else ], [ %sub, %if.else7 ]
  %39 = ptrtoint ptr %dmactl.0.in to i32
  call void @__asan_load4_noabort(i32 %39)
  %dmactl.0 = load ptr, ptr %dmactl.0.in, align 4
  %call10 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.49, i32 noundef %call10) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %bursten = getelementptr inbounds %struct.lpaif_dmactl, ptr %dmactl.0, i32 0, i32 1
  %42 = ptrtoint ptr %bursten to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bursten, align 4
  %call.i = tail call i32 @regmap_fields_update_bits_base(ptr noundef %43, i32 noundef %id.0, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.52, i32 noundef %call.i) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %fifowm = getelementptr inbounds %struct.lpaif_dmactl, ptr %dmactl.0, i32 0, i32 3
  %46 = ptrtoint ptr %fifowm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fifowm, align 4
  %call.i195 = tail call i32 @regmap_fields_update_bits_base(ptr noundef %47, i32 noundef %id.0, i32 noundef -1, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool22.not = icmp eq i32 %call.i195, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.55, i32 noundef %call.i195) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %50 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %32, label %do.end64 [
    i32 5, label %sw.bb
    i32 0, label %if.end28.sw.bb53_crit_edge
    i32 1, label %if.end28.sw.bb53_crit_edge201
    i32 2, label %if.end28.sw.bb53_crit_edge202
    i32 3, label %if.end28.sw.bb53_crit_edge203
    i32 4, label %if.end28.sw.bb53_crit_edge204
  ]

if.end28.sw.bb53_crit_edge204:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb53

if.end28.sw.bb53_crit_edge203:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb53

if.end28.sw.bb53_crit_edge202:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb53

if.end28.sw.bb53_crit_edge201:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb53

if.end28.sw.bb53_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb53

sw.bb:                                            ; preds = %if.end28
  %burst8 = getelementptr inbounds %struct.lpaif_dmactl, ptr %dmactl.0, i32 0, i32 6
  %51 = ptrtoint ptr %burst8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %burst8, align 4
  %call.i196 = tail call i32 @regmap_fields_update_bits_base(ptr noundef %52, i32 noundef %id.0, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool30.not = icmp eq i32 %call.i196, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.58, i32 noundef %call.i196) #9
  br label %cleanup

if.end36:                                         ; preds = %sw.bb
  %burst16 = getelementptr inbounds %struct.lpaif_dmactl, ptr %dmactl.0, i32 0, i32 7
  %55 = ptrtoint ptr %burst16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %burst16, align 4
  %call.i197 = tail call i32 @regmap_fields_update_bits_base(ptr noundef %56, i32 noundef %id.0, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %tobool38.not = icmp eq i32 %call.i197, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.61, i32 noundef %call.i197) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %dynburst = getelementptr inbounds %struct.lpaif_dmactl, ptr %dmactl.0, i32 0, i32 8
  %59 = ptrtoint ptr %dynburst to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dynburst, align 4
  %call.i198 = tail call i32 @regmap_fields_update_bits_base(ptr noundef %60, i32 noundef %id.0, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool46.not = icmp eq i32 %call.i198, 0
  br i1 %tobool46.not, label %if.end44.sw.epilog_crit_edge, label %do.end50

if.end44.sw.epilog_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.64, i32 noundef %call.i198) #9
  br label %cleanup

sw.bb53:                                          ; preds = %if.end28.sw.bb53_crit_edge, %if.end28.sw.bb53_crit_edge201, %if.end28.sw.bb53_crit_edge202, %if.end28.sw.bb53_crit_edge203, %if.end28.sw.bb53_crit_edge204
  %63 = ptrtoint ptr %dmactl.0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dmactl.0, align 4
  %call.i199 = tail call i32 @regmap_fields_update_bits_base(ptr noundef %64, i32 noundef %id.0, i32 noundef -1, i32 noundef %add, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool55.not = icmp eq i32 %call.i199, 0
  br i1 %tobool55.not, label %sw.bb53.sw.epilog_crit_edge, label %do.end59

sw.bb53.sw.epilog_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end59:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.67, i32 noundef %call.i199) #9
  br label %cleanup

do.end64:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.50, i32 noundef %32) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end64, %sw.bb53.sw.epilog_crit_edge, %if.end44.sw.epilog_crit_edge
  %69 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %call10, label %do.end99 [
    i32 16, label %sw.bb66
    i32 24, label %sw.epilog.sw.bb77_crit_edge
    i32 32, label %sw.epilog.sw.bb77_crit_edge205
  ]

sw.epilog.sw.bb77_crit_edge205:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb77

sw.epilog.sw.bb77_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb77

sw.bb66:                                          ; preds = %sw.epilog
  %switch.tableidx = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %70 = icmp ult i32 %switch.tableidx, 8
  br i1 %70, label %switch.hole_check, label %sw.bb66.do.end74_crit_edge

sw.bb66.do.end74_crit_edge:                       ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end74

do.end74:                                         ; preds = %switch.hole_check.do.end74_crit_edge, %sw.bb66.do.end74_crit_edge
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.73, i32 noundef 16, i32 noundef %22) #9
  br label %cleanup

sw.bb77:                                          ; preds = %sw.epilog.sw.bb77_crit_edge, %sw.epilog.sw.bb77_crit_edge205
  %73 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %22, label %do.end93 [
    i32 1, label %sw.bb77.sw.epilog101_crit_edge
    i32 2, label %sw.bb79
    i32 4, label %sw.bb81
    i32 6, label %sw.bb84
    i32 8, label %sw.bb87
  ]

sw.bb77.sw.epilog101_crit_edge:                   ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog101

sw.bb79:                                          ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp80 = icmp ne i32 %32, 5
  %cond = zext i1 %cmp80 to i32
  br label %sw.epilog101

sw.bb81:                                          ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp82 = icmp eq i32 %32, 5
  %cond83 = select i1 %cmp82, i32 1, i32 3
  br label %sw.epilog101

sw.bb84:                                          ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp85 = icmp eq i32 %32, 5
  %cond86 = select i1 %cmp85, i32 2, i32 5
  br label %sw.epilog101

sw.bb87:                                          ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp88 = icmp eq i32 %32, 5
  %cond89 = select i1 %cmp88, i32 3, i32 7
  br label %sw.epilog101

do.end93:                                         ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.73, i32 noundef %call10, i32 noundef %22) #9
  br label %cleanup

do.end99:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.73, i32 noundef %call10, i32 noundef %22) #9
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb66
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -85, %switch.maskindex
  %78 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %switch.lobit.not = icmp eq i8 %78, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end74_crit_edge, label %switch.lookup

switch.hole_check.do.end74_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end74

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.lpass_platform_pcmops_hw_params, i32 0, i32 %switch.tableidx
  %79 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %79)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog101

sw.epilog101:                                     ; preds = %switch.lookup, %sw.bb87, %sw.bb84, %sw.bb81, %sw.bb79, %sw.bb77.sw.epilog101_crit_edge
  %regval.0 = phi i32 [ %cond89, %sw.bb87 ], [ %cond86, %sw.bb84 ], [ %cond83, %sw.bb81 ], [ %cond, %sw.bb79 ], [ 0, %sw.bb77.sw.epilog101_crit_edge ], [ %switch.load, %switch.lookup ]
  %wpscnt = getelementptr inbounds %struct.lpaif_dmactl, ptr %dmactl.0, i32 0, i32 2
  %80 = ptrtoint ptr %wpscnt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wpscnt, align 4
  %call.i200 = tail call i32 @regmap_fields_update_bits_base(ptr noundef %81, i32 noundef %id.0, i32 noundef -1, i32 noundef %regval.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %tobool103.not = icmp eq i32 %call.i200, 0
  br i1 %tobool103.not, label %sw.epilog101.cleanup_crit_edge, label %do.end107

sw.epilog101.cleanup_crit_edge:                   ; preds = %sw.epilog101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end107:                                        ; preds = %sw.epilog101
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.80, i32 noundef %call.i200) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end107, %sw.epilog101.cleanup_crit_edge, %do.end99, %do.end93, %do.end74, %do.end59, %do.end50, %do.end42, %do.end34, %do.end26, %do.end18, %do.end
  %retval.0 = phi i32 [ %call10, %do.end ], [ %call.i, %do.end18 ], [ %call.i195, %do.end26 ], [ -22, %do.end99 ], [ -22, %do.end93 ], [ %call.i200, %do.end107 ], [ -22, %do.end74 ], [ %call.i199, %do.end59 ], [ %call.i196, %do.end34 ], [ %call.i197, %do.end42 ], [ %call.i198, %do.end50 ], [ 0, %sw.epilog101.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_platform_pcmops_hw_free(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data1, align 8
  %variant = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 13
  %14 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp = icmp eq i32 %19, 5
  %hdmiif_map = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 10
  %lpaif_map = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 9
  %map.0.in = select i1 %cmp, ptr %hdmiif_map, ptr %lpaif_map
  %20 = ptrtoint ptr %map.0.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %map.0 = load ptr, ptr %map.0.in, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %21 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2 = icmp eq i32 %22, 0
  br i1 %cmp2, label %cond.true, label %cond.false10

cond.true:                                        ; preds = %entry
  br i1 %cmp, label %cond.true4, label %cond.false

cond.true4:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %hdmi_rdma_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 6
  %23 = ptrtoint ptr %hdmi_rdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hdmi_rdma_reg_base, align 4
  %hdmi_rdma_reg_stride = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 7
  %25 = ptrtoint ptr %hdmi_rdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hdmi_rdma_reg_stride, align 4
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %13, align 4
  %mul = mul i32 %28, %26
  %add5 = add i32 %mul, %24
  br label %cond.end15

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %rdma_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 3
  %29 = ptrtoint ptr %rdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rdma_reg_base, align 4
  %rdma_reg_stride = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 4
  %31 = ptrtoint ptr %rdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rdma_reg_stride, align 4
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %13, align 4
  %mul8 = mul i32 %34, %32
  %add9 = add i32 %mul8, %30
  br label %cond.end15

cond.false10:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wrdma_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 9
  %35 = ptrtoint ptr %wrdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wrdma_reg_base, align 4
  %wrdma_reg_stride = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 10
  %37 = ptrtoint ptr %wrdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wrdma_reg_stride, align 4
  %39 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %13, align 4
  %wrdma_channel_start = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 87
  %41 = ptrtoint ptr %wrdma_channel_start to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wrdma_channel_start, align 4
  %sub = sub i32 %40, %42
  %mul13 = mul i32 %sub, %38
  %add14 = add i32 %mul13, %36
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false10, %cond.false, %cond.true4
  %cond16 = phi i32 [ %add14, %cond.false10 ], [ %add5, %cond.true4 ], [ %add9, %cond.false ]
  %call17 = tail call i32 @regmap_write(ptr noundef %map.0, i32 noundef %cond16, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %cond.end15.if.end19_crit_edge, label %do.end

cond.end15.if.end19_crit_edge:                    ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end:                                           ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.44, i32 noundef %call17) #9
  br label %if.end19

if.end19:                                         ; preds = %do.end, %cond.end15.if.end19_crit_edge
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_platform_pcmops_prepare(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %private_data3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %12 = ptrtoint ptr %private_data3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data3, align 8
  %variant = getelementptr inbounds %struct.lpass_data, ptr %11, i32 0, i32 13
  %14 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver, align 4
  %id4 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id4, align 4
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %cond.true, label %cond.end25.thread

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp5 = icmp eq i32 %21, 5
  %hdmi_rd_dmactl = getelementptr inbounds %struct.lpass_data, ptr %11, i32 0, i32 23
  %hdmiif_map = getelementptr inbounds %struct.lpass_data, ptr %11, i32 0, i32 10
  %rd_dmactl = getelementptr inbounds %struct.lpass_data, ptr %11, i32 0, i32 21
  %lpaif_map = getelementptr inbounds %struct.lpass_data, ptr %11, i32 0, i32 9
  %dmactl.0.in = select i1 %cmp5, ptr %hdmi_rd_dmactl, ptr %rd_dmactl
  %map.0.in = select i1 %cmp5, ptr %hdmiif_map, ptr %lpaif_map
  %24 = ptrtoint ptr %map.0.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %map.1198 = load ptr, ptr %map.0.in, align 4
  %25 = ptrtoint ptr %dmactl.0.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %dmactl.1199 = load ptr, ptr %dmactl.0.in, align 4
  br i1 %cmp5, label %cond.end25, label %cond.end25.thread226

cond.end25:                                       ; preds = %cond.true
  %hdmi_rdma_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 6
  %26 = ptrtoint ptr %hdmi_rdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hdmi_rdma_reg_base, align 4
  %add = add i32 %27, 4
  %hdmi_rdma_reg_stride = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 7
  %28 = ptrtoint ptr %hdmi_rdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hdmi_rdma_reg_stride, align 4
  %mul = mul i32 %29, %23
  %add15 = add i32 %add, %mul
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %30 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_addr, align 8
  %call27 = tail call i32 @regmap_write(ptr noundef %map.1198, i32 noundef %add15, i32 noundef %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool.not = icmp eq i32 %call27, 0
  br i1 %tobool.not, label %cond.true33, label %cond.end25.do.end_crit_edge

cond.end25.do.end_crit_edge:                      ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cond.end25.thread226:                             ; preds = %cond.true
  %rdma_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 3
  %32 = ptrtoint ptr %rdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rdma_reg_base, align 4
  %add16 = add i32 %33, 4
  %rdma_reg_stride = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 4
  %34 = ptrtoint ptr %rdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rdma_reg_stride, align 4
  %mul17 = mul i32 %35, %23
  %add18 = add i32 %add16, %mul17
  %dma_addr228 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %36 = ptrtoint ptr %dma_addr228 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_addr228, align 8
  %call27229 = tail call i32 @regmap_write(ptr noundef %map.1198, i32 noundef %add18, i32 noundef %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27229)
  %tobool.not230 = icmp eq i32 %call27229, 0
  br i1 %tobool.not230, label %cond.false39, label %cond.end25.thread226.do.end_crit_edge

cond.end25.thread226.do.end_crit_edge:            ; preds = %cond.end25.thread226
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cond.end25.thread:                                ; preds = %entry
  %wr_dmactl = getelementptr inbounds %struct.lpass_data, ptr %11, i32 0, i32 22
  %wrdma_channel_start = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 87
  %38 = ptrtoint ptr %wrdma_channel_start to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wrdma_channel_start, align 4
  %lpaif_map10 = getelementptr inbounds %struct.lpass_data, ptr %11, i32 0, i32 9
  %40 = ptrtoint ptr %lpaif_map10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %map.1 = load ptr, ptr %lpaif_map10, align 4
  %41 = ptrtoint ptr %wr_dmactl to i32
  call void @__asan_load4_noabort(i32 %41)
  %dmactl.1 = load ptr, ptr %wr_dmactl, align 4
  %wrdma_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 9
  %42 = ptrtoint ptr %wrdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wrdma_reg_base, align 4
  %add20 = add i32 %43, 4
  %wrdma_reg_stride = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 10
  %44 = ptrtoint ptr %wrdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wrdma_reg_stride, align 4
  %sub22 = sub i32 %23, %39
  %mul23 = mul i32 %sub22, %45
  %add24 = add i32 %add20, %mul23
  %dma_addr210 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %46 = ptrtoint ptr %dma_addr210 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_addr210, align 8
  %call27211 = tail call i32 @regmap_write(ptr noundef %map.1, i32 noundef %add24, i32 noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27211)
  %tobool.not212 = icmp eq i32 %call27211, 0
  br i1 %tobool.not212, label %cond.false47, label %cond.end25.thread.do.end_crit_edge

cond.end25.thread.do.end_crit_edge:               ; preds = %cond.end25.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %cond.end25.thread.do.end_crit_edge, %cond.end25.thread226.do.end_crit_edge, %cond.end25.do.end_crit_edge
  %call27216 = phi i32 [ %call27211, %cond.end25.thread.do.end_crit_edge ], [ %call27, %cond.end25.do.end_crit_edge ], [ %call27229, %cond.end25.thread226.do.end_crit_edge ]
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.83, i32 noundef %call27216) #9
  br label %cleanup

cond.true33:                                      ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #8
  %hdmi_rdma_reg_base34 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 6
  %50 = ptrtoint ptr %hdmi_rdma_reg_base34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hdmi_rdma_reg_base34, align 4
  %add35 = add i32 %51, 8
  %hdmi_rdma_reg_stride36 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 7
  %52 = ptrtoint ptr %hdmi_rdma_reg_stride36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hdmi_rdma_reg_stride36, align 4
  %mul37 = mul i32 %53, %23
  %add38 = add i32 %add35, %mul37
  br label %cond.end55

cond.false39:                                     ; preds = %cond.end25.thread226
  call void @__sanitizer_cov_trace_pc() #8
  %rdma_reg_base40 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 3
  %54 = ptrtoint ptr %rdma_reg_base40 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rdma_reg_base40, align 4
  %add41 = add i32 %55, 8
  %rdma_reg_stride42 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 4
  %56 = ptrtoint ptr %rdma_reg_stride42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rdma_reg_stride42, align 4
  %mul43 = mul i32 %57, %23
  %add44 = add i32 %add41, %mul43
  br label %cond.end55

cond.false47:                                     ; preds = %cond.end25.thread
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %wrdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wrdma_reg_base, align 4
  %add49 = add i32 %59, 8
  %60 = ptrtoint ptr %wrdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %wrdma_reg_stride, align 4
  %62 = ptrtoint ptr %wrdma_channel_start to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wrdma_channel_start, align 4
  %sub52 = sub i32 %23, %63
  %mul53 = mul i32 %sub52, %61
  %add54 = add i32 %add49, %mul53
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false47, %cond.false39, %cond.true33
  %dmactl.1204213224 = phi ptr [ %dmactl.1, %cond.false47 ], [ %dmactl.1199, %cond.true33 ], [ %dmactl.1199, %cond.false39 ]
  %map.1202214222 = phi ptr [ %map.1, %cond.false47 ], [ %map.1198, %cond.true33 ], [ %map.1198, %cond.false39 ]
  %id.0200215220 = phi i32 [ %sub22, %cond.false47 ], [ %23, %cond.true33 ], [ %23, %cond.false39 ]
  %cond56 = phi i32 [ %add54, %cond.false47 ], [ %add38, %cond.true33 ], [ %add44, %cond.false39 ]
  %64 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %runtime1, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %65, i32 0, i32 18
  %66 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %65, i32 0, i32 21
  %68 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %69, %67
  %div1.i.i = lshr i32 %mul.i.i, 5
  %sub58 = add nsw i32 %div1.i.i, -1
  %call59 = tail call i32 @regmap_write(ptr noundef %map.1202214222, i32 noundef %cond56, i32 noundef %sub58) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.86, i32 noundef %call59) #9
  br label %cleanup

if.end66:                                         ; preds = %cond.end55
  br i1 %cmp, label %cond.true68, label %cond.false84

cond.true68:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp69 = icmp eq i32 %21, 5
  br i1 %cmp69, label %cond.true70, label %cond.false76

cond.true70:                                      ; preds = %cond.true68
  call void @__sanitizer_cov_trace_pc() #8
  %hdmi_rdma_reg_base71 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 6
  %72 = ptrtoint ptr %hdmi_rdma_reg_base71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hdmi_rdma_reg_base71, align 4
  %add72 = add i32 %73, 16
  %hdmi_rdma_reg_stride73 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 7
  %74 = ptrtoint ptr %hdmi_rdma_reg_stride73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hdmi_rdma_reg_stride73, align 4
  %mul74 = mul i32 %75, %23
  %add75 = add i32 %add72, %mul74
  br label %cond.end92

cond.false76:                                     ; preds = %cond.true68
  call void @__sanitizer_cov_trace_pc() #8
  %rdma_reg_base77 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 3
  %76 = ptrtoint ptr %rdma_reg_base77 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rdma_reg_base77, align 4
  %add78 = add i32 %77, 16
  %rdma_reg_stride79 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 4
  %78 = ptrtoint ptr %rdma_reg_stride79 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rdma_reg_stride79, align 4
  %mul80 = mul i32 %79, %23
  %add81 = add i32 %add78, %mul80
  br label %cond.end92

cond.false84:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %wrdma_reg_base85 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 9
  %80 = ptrtoint ptr %wrdma_reg_base85 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %wrdma_reg_base85, align 4
  %add86 = add i32 %81, 16
  %wrdma_reg_stride87 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 10
  %82 = ptrtoint ptr %wrdma_reg_stride87 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wrdma_reg_stride87, align 4
  %wrdma_channel_start88 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 87
  %84 = ptrtoint ptr %wrdma_channel_start88 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %wrdma_channel_start88, align 4
  %sub89 = sub i32 %23, %85
  %mul90 = mul i32 %sub89, %83
  %add91 = add i32 %add86, %mul90
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false84, %cond.false76, %cond.true70
  %cond93 = phi i32 [ %add91, %cond.false84 ], [ %add75, %cond.true70 ], [ %add81, %cond.false76 ]
  %86 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %87, i32 0, i32 16
  %88 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i192 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %87, i32 0, i32 21
  %90 = ptrtoint ptr %frame_bits.i.i192 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %frame_bits.i.i192, align 8
  %mul.i.i193 = mul i32 %91, %89
  %div1.i.i194 = lshr i32 %mul.i.i193, 5
  %sub96 = add nsw i32 %div1.i.i194, -1
  %call97 = tail call i32 @regmap_write(ptr noundef %map.1202214222, i32 noundef %cond93, i32 noundef %sub96) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end104, label %do.end102

do.end102:                                        ; preds = %cond.end92
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.89, i32 noundef %call97) #9
  br label %cleanup

if.end104:                                        ; preds = %cond.end92
  %enable = getelementptr inbounds %struct.lpaif_dmactl, ptr %dmactl.1204213224, i32 0, i32 4
  %94 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %enable, align 4
  %call.i = tail call i32 @regmap_fields_update_bits_base(ptr noundef %95, i32 noundef %id.0200215220, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool106.not = icmp eq i32 %call.i, 0
  br i1 %tobool106.not, label %if.end104.cleanup_crit_edge, label %do.end110

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end110:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.44, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %if.end104.cleanup_crit_edge, %do.end102, %do.end64, %do.end
  %retval.0 = phi i32 [ %call27216, %do.end ], [ %call59, %do.end64 ], [ %call97, %do.end102 ], [ %call.i, %do.end110 ], [ 0, %if.end104.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_platform_pcmops_trigger(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data1, align 8
  %variant = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 13
  %14 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver, align 4
  %id2 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id2, align 4
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp4 = icmp eq i32 %21, 5
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %hdmi_rd_dmactl = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 23
  %hdmiif_map = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 10
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %rd_dmactl = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 21
  %lpaif_map = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 9
  br label %if.end9

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wr_dmactl = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 22
  %wrdma_channel_start = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 87
  %24 = ptrtoint ptr %wrdma_channel_start to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wrdma_channel_start, align 4
  %sub = sub i32 %23, %25
  %lpaif_map8 = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 9
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.else, %if.then5
  %dmactl.0.in = phi ptr [ %hdmi_rd_dmactl, %if.then5 ], [ %rd_dmactl, %if.else ], [ %wr_dmactl, %if.else6 ]
  %map.0.in = phi ptr [ %hdmiif_map, %if.then5 ], [ %lpaif_map, %if.else ], [ %lpaif_map8, %if.else6 ]
  %id.0 = phi i32 [ %23, %if.then5 ], [ %23, %if.else ], [ %sub, %if.else6 ]
  %26 = ptrtoint ptr %map.0.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %map.0 = load ptr, ptr %map.0.in, align 4
  %27 = ptrtoint ptr %dmactl.0.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %dmactl.0 = load ptr, ptr %dmactl.0.in, align 4
  %28 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %cmd, label %if.end9.cleanup_crit_edge [
    i32 1, label %if.end9.sw.bb_crit_edge
    i32 6, label %if.end9.sw.bb_crit_edge239
    i32 4, label %if.end9.sw.bb_crit_edge240
    i32 0, label %if.end9.sw.bb83_crit_edge
    i32 5, label %if.end9.sw.bb83_crit_edge241
    i32 3, label %if.end9.sw.bb83_crit_edge242
  ]

if.end9.sw.bb83_crit_edge242:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb83

if.end9.sw.bb83_crit_edge241:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb83

if.end9.sw.bb83_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb83

if.end9.sw.bb_crit_edge240:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end9.sw.bb_crit_edge239:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge239, %if.end9.sw.bb_crit_edge240
  %enable = getelementptr inbounds %struct.lpaif_dmactl, ptr %dmactl.0, i32 0, i32 4
  %29 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %enable, align 4
  %call.i = tail call i32 @regmap_fields_update_bits_base(ptr noundef %30, i32 noundef %id.0, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end12, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.44, i32 noundef %call.i) #9
  br label %cleanup

if.end12:                                         ; preds = %sw.bb
  %33 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %21, label %do.end65 [
    i32 5, label %sw.bb13
    i32 0, label %if.end12.sw.bb48_crit_edge
    i32 1, label %if.end12.sw.bb48_crit_edge243
    i32 2, label %if.end12.sw.bb48_crit_edge244
    i32 3, label %if.end12.sw.bb48_crit_edge245
    i32 4, label %if.end12.sw.bb48_crit_edge246
  ]

if.end12.sw.bb48_crit_edge246:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb48

if.end12.sw.bb48_crit_edge245:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb48

if.end12.sw.bb48_crit_edge244:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb48

if.end12.sw.bb48_crit_edge243:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb48

if.end12.sw.bb48_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb48

sw.bb13:                                          ; preds = %if.end12
  %dyncclk = getelementptr inbounds %struct.lpaif_dmactl, ptr %dmactl.0, i32 0, i32 5
  %34 = ptrtoint ptr %dyncclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dyncclk, align 4
  %call.i233 = tail call i32 @regmap_fields_update_bits_base(ptr noundef %35, i32 noundef %id.0, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %tobool15.not = icmp eq i32 %call.i233, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.44, i32 noundef %call.i233) #9
  br label %cleanup

if.end21:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %hdmi_irq_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 24
  %38 = ptrtoint ptr %hdmi_irq_reg_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hdmi_irq_reg_base, align 4
  %mul = mul i32 %23, 3
  %shl = shl i32 7, %mul
  %add22 = add i32 %23, 14
  %shl23 = shl nuw i32 1, %add22
  %add25 = add i32 %23, 24
  %shl26 = shl nuw i32 1, %add25
  %or = or i32 %shl23, %shl
  %or24 = or i32 %or, %shl26
  %or27 = or i32 %or24, 8388608
  %add29 = add i32 %39, 4
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end12.sw.bb48_crit_edge, %if.end12.sw.bb48_crit_edge243, %if.end12.sw.bb48_crit_edge244, %if.end12.sw.bb48_crit_edge245, %if.end12.sw.bb48_crit_edge246
  %40 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %15, align 4
  %mul52 = mul i32 %23, 3
  %shl53 = shl i32 7, %mul52
  br label %sw.epilog

do.end65:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.93, i32 noundef %21) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb48, %if.end21
  %reg_irqclr.0.in = phi i32 [ %41, %sw.bb48 ], [ %39, %if.end21 ]
  %reg_irqen.0 = phi i32 [ %41, %sw.bb48 ], [ %add29, %if.end21 ]
  %val_mask.0 = phi i32 [ %shl53, %sw.bb48 ], [ %or27, %if.end21 ]
  %reg_irqclr.0 = add i32 %reg_irqclr.0.in, 12
  %call.i234 = tail call i32 @regmap_update_bits_base(ptr noundef %map.0, i32 noundef %reg_irqclr.0, i32 noundef %val_mask.0, i32 noundef %val_mask.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool68.not = icmp eq i32 %call.i234, 0
  br i1 %tobool68.not, label %if.end74, label %do.end72

do.end72:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.27, i32 noundef %call.i234) #9
  br label %cleanup

if.end74:                                         ; preds = %sw.epilog
  %call.i235 = tail call i32 @regmap_update_bits_base(ptr noundef %map.0, i32 noundef %reg_irqen.0, i32 noundef %val_mask.0, i32 noundef %val_mask.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool76.not = icmp eq i32 %call.i235, 0
  br i1 %tobool76.not, label %if.end74.cleanup_crit_edge, label %do.end80

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.1, i32 noundef %call.i235) #9
  br label %cleanup

sw.bb83:                                          ; preds = %if.end9.sw.bb83_crit_edge, %if.end9.sw.bb83_crit_edge241, %if.end9.sw.bb83_crit_edge242
  %enable84 = getelementptr inbounds %struct.lpaif_dmactl, ptr %dmactl.0, i32 0, i32 4
  %48 = ptrtoint ptr %enable84 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %enable84, align 4
  %call.i236 = tail call i32 @regmap_fields_update_bits_base(ptr noundef %49, i32 noundef %id.0, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i236)
  %tobool86.not = icmp eq i32 %call.i236, 0
  br i1 %tobool86.not, label %if.end92, label %do.end90

do.end90:                                         ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.44, i32 noundef %call.i236) #9
  br label %cleanup

if.end92:                                         ; preds = %sw.bb83
  %52 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %21, label %do.end125 [
    i32 5, label %sw.bb93
    i32 0, label %if.end92.sw.bb114_crit_edge
    i32 1, label %if.end92.sw.bb114_crit_edge247
    i32 2, label %if.end92.sw.bb114_crit_edge248
    i32 3, label %if.end92.sw.bb114_crit_edge249
    i32 4, label %if.end92.sw.bb114_crit_edge250
  ]

if.end92.sw.bb114_crit_edge250:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb114

if.end92.sw.bb114_crit_edge249:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb114

if.end92.sw.bb114_crit_edge248:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb114

if.end92.sw.bb114_crit_edge247:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb114

if.end92.sw.bb114_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb114

sw.bb93:                                          ; preds = %if.end92
  %dyncclk94 = getelementptr inbounds %struct.lpaif_dmactl, ptr %dmactl.0, i32 0, i32 5
  %53 = ptrtoint ptr %dyncclk94 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dyncclk94, align 4
  %call.i237 = tail call i32 @regmap_fields_update_bits_base(ptr noundef %54, i32 noundef %id.0, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool96.not = icmp eq i32 %call.i237, 0
  br i1 %tobool96.not, label %if.end102, label %do.end100

do.end100:                                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.44, i32 noundef %call.i237) #9
  br label %cleanup

if.end102:                                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #8
  %hdmi_irq_reg_base103 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 24
  %57 = ptrtoint ptr %hdmi_irq_reg_base103 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hdmi_irq_reg_base103, align 4
  %add104 = add i32 %58, 4
  %mul105 = mul i32 %23, 3
  %shl106 = shl i32 7, %mul105
  %add107 = add i32 %23, 14
  %shl108 = shl nuw i32 1, %add107
  %add111 = add i32 %23, 24
  %shl112 = shl nuw i32 1, %add111
  %or109 = or i32 %shl108, %shl106
  %or110 = or i32 %or109, %shl112
  %or113 = or i32 %or110, 8388608
  br label %sw.epilog127

sw.bb114:                                         ; preds = %if.end92.sw.bb114_crit_edge, %if.end92.sw.bb114_crit_edge247, %if.end92.sw.bb114_crit_edge248, %if.end92.sw.bb114_crit_edge249, %if.end92.sw.bb114_crit_edge250
  %59 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %15, align 4
  %mul120 = mul i32 %23, 3
  %shl121 = shl i32 7, %mul120
  br label %sw.epilog127

do.end125:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.93, i32 noundef %21) #9
  br label %cleanup

sw.epilog127:                                     ; preds = %sw.bb114, %if.end102
  %reg_irqen.1 = phi i32 [ %60, %sw.bb114 ], [ %add104, %if.end102 ]
  %val_mask.1 = phi i32 [ %shl121, %sw.bb114 ], [ %or113, %if.end102 ]
  %call.i238 = tail call i32 @regmap_update_bits_base(ptr noundef %map.0, i32 noundef %reg_irqen.1, i32 noundef %val_mask.1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool129.not = icmp eq i32 %call.i238, 0
  br i1 %tobool129.not, label %sw.epilog127.cleanup_crit_edge, label %do.end133

sw.epilog127.cleanup_crit_edge:                   ; preds = %sw.epilog127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end133:                                        ; preds = %sw.epilog127
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.1, i32 noundef %call.i238) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end133, %sw.epilog127.cleanup_crit_edge, %do.end125, %do.end100, %do.end90, %do.end80, %if.end74.cleanup_crit_edge, %do.end72, %do.end65, %do.end19, %do.end, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i236, %do.end90 ], [ -22, %do.end125 ], [ %call.i238, %do.end133 ], [ %call.i237, %do.end100 ], [ %call.i, %do.end ], [ -22, %do.end65 ], [ %call.i234, %do.end72 ], [ %call.i235, %do.end80 ], [ %call.i233, %do.end19 ], [ 0, %sw.epilog127.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_platform_pcmops_pointer(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  %base_addr = alloca i32, align 4
  %curr_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data1, align 8
  %variant = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 13
  %14 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_addr) #6
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %base_addr, align 4, !annotation !204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_addr) #6
  %17 = ptrtoint ptr %curr_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %curr_addr, align 4, !annotation !204
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %18 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp = icmp eq i32 %23, 5
  %hdmiif_map = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 10
  %lpaif_map = getelementptr inbounds %struct.lpass_data, ptr %9, i32 0, i32 9
  %map.0.in = select i1 %cmp, ptr %hdmiif_map, ptr %lpaif_map
  %24 = ptrtoint ptr %map.0.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %map.0 = load ptr, ptr %map.0.in, align 4
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2 = icmp eq i32 %19, 0
  br i1 %cmp2, label %cond.true, label %cond.end13.thread

cond.true:                                        ; preds = %entry
  br i1 %cmp, label %cond.end13, label %cond.end13.thread106

cond.end13:                                       ; preds = %cond.true
  %hdmi_rdma_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 6
  %27 = ptrtoint ptr %hdmi_rdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hdmi_rdma_reg_base, align 4
  %add = add i32 %28, 4
  %hdmi_rdma_reg_stride = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 7
  %29 = ptrtoint ptr %hdmi_rdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hdmi_rdma_reg_stride, align 4
  %mul = mul i32 %30, %26
  %add5 = add i32 %add, %mul
  %call15 = call i32 @regmap_read(ptr noundef %map.0, i32 noundef %add5, ptr noundef nonnull %base_addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %cond.true21, label %cond.end13.do.end_crit_edge

cond.end13.do.end_crit_edge:                      ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cond.end13.thread106:                             ; preds = %cond.true
  %rdma_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 3
  %31 = ptrtoint ptr %rdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rdma_reg_base, align 4
  %add6 = add i32 %32, 4
  %rdma_reg_stride = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 4
  %33 = ptrtoint ptr %rdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rdma_reg_stride, align 4
  %mul7 = mul i32 %34, %26
  %add8 = add i32 %add6, %mul7
  %call15108 = call i32 @regmap_read(ptr noundef %map.0, i32 noundef %add8, ptr noundef nonnull %base_addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15108)
  %tobool.not109 = icmp eq i32 %call15108, 0
  br i1 %tobool.not109, label %cond.false27, label %cond.end13.thread106.do.end_crit_edge

cond.end13.thread106.do.end_crit_edge:            ; preds = %cond.end13.thread106
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cond.end13.thread:                                ; preds = %entry
  %wrdma_reg_base = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 9
  %35 = ptrtoint ptr %wrdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wrdma_reg_base, align 4
  %add10 = add i32 %36, 4
  %wrdma_reg_stride = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 10
  %37 = ptrtoint ptr %wrdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wrdma_reg_stride, align 4
  %wrdma_channel_start = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 87
  %39 = ptrtoint ptr %wrdma_channel_start to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wrdma_channel_start, align 4
  %sub = sub i32 %26, %40
  %mul11 = mul i32 %sub, %38
  %add12 = add i32 %add10, %mul11
  %call15103 = call i32 @regmap_read(ptr noundef %map.0, i32 noundef %add12, ptr noundef nonnull %base_addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15103)
  %tobool.not104 = icmp eq i32 %call15103, 0
  br i1 %tobool.not104, label %cond.false35, label %cond.end13.thread.do.end_crit_edge

cond.end13.thread.do.end_crit_edge:               ; preds = %cond.end13.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %cond.end13.thread.do.end_crit_edge, %cond.end13.thread106.do.end_crit_edge, %cond.end13.do.end_crit_edge
  %call15105 = phi i32 [ %call15103, %cond.end13.thread.do.end_crit_edge ], [ %call15, %cond.end13.do.end_crit_edge ], [ %call15108, %cond.end13.thread106.do.end_crit_edge ]
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.111, i32 noundef %call15105) #9
  br label %cleanup

cond.true21:                                      ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  %hdmi_rdma_reg_base22 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 6
  %43 = ptrtoint ptr %hdmi_rdma_reg_base22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hdmi_rdma_reg_base22, align 4
  %add23 = add i32 %44, 12
  %hdmi_rdma_reg_stride24 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 7
  %45 = ptrtoint ptr %hdmi_rdma_reg_stride24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hdmi_rdma_reg_stride24, align 4
  %mul25 = mul i32 %46, %26
  %add26 = add i32 %add23, %mul25
  br label %cond.end43

cond.false27:                                     ; preds = %cond.end13.thread106
  call void @__sanitizer_cov_trace_pc() #8
  %rdma_reg_base28 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 3
  %47 = ptrtoint ptr %rdma_reg_base28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rdma_reg_base28, align 4
  %add29 = add i32 %48, 12
  %rdma_reg_stride30 = getelementptr inbounds %struct.lpass_variant, ptr %15, i32 0, i32 4
  %49 = ptrtoint ptr %rdma_reg_stride30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rdma_reg_stride30, align 4
  %mul31 = mul i32 %50, %26
  %add32 = add i32 %add29, %mul31
  br label %cond.end43

cond.false35:                                     ; preds = %cond.end13.thread
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %wrdma_reg_base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wrdma_reg_base, align 4
  %add37 = add i32 %52, 12
  %53 = ptrtoint ptr %wrdma_reg_stride to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wrdma_reg_stride, align 4
  %55 = ptrtoint ptr %wrdma_channel_start to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wrdma_channel_start, align 4
  %sub40 = sub i32 %26, %56
  %mul41 = mul i32 %sub40, %54
  %add42 = add i32 %add37, %mul41
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false35, %cond.false27, %cond.true21
  %cond44 = phi i32 [ %add42, %cond.false35 ], [ %add26, %cond.true21 ], [ %add32, %cond.false27 ]
  %call45 = call i32 @regmap_read(ptr noundef %map.0, i32 noundef %cond44, ptr noundef nonnull %curr_addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.114, i32 noundef %call45) #9
  br label %cleanup

if.end52:                                         ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %runtime, align 4
  %61 = ptrtoint ptr %curr_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %curr_addr, align 4
  %63 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base_addr, align 4
  %sub54 = sub i32 %62, %64
  %mul.i = shl i32 %sub54, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %60, i32 0, i32 21
  %65 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %66
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end50, %do.end
  %retval.0 = phi i32 [ %call15105, %do.end ], [ %call45, %do.end50 ], [ %div.i, %if.end52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_addr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_addr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_fields_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !190, !191, !193, !194}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/lpass-platform.c", i32 838, i32 53}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/qcom/lpass-platform.c", i32 846, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @asoc_qcom_lpass_platform_register._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @asoc_qcom_lpass_platform_register._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/qcom/lpass-platform.c", i32 854, i32 3}
!12 = !{ptr @asoc_qcom_lpass_platform_register._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @asoc_qcom_lpass_platform_register._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/lpass-platform.c", i32 861, i32 3}
!16 = !{ptr @asoc_qcom_lpass_platform_register._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @asoc_qcom_lpass_platform_register._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/qcom/lpass-platform.c", i32 867, i32 55}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/qcom/lpass-platform.c", i32 874, i32 4}
!22 = !{ptr @asoc_qcom_lpass_platform_register._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @asoc_qcom_lpass_platform_register._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/qcom/lpass-platform.c", i32 880, i32 4}
!26 = !{ptr @asoc_qcom_lpass_platform_register._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @asoc_qcom_lpass_platform_register._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/qcom/lpass-platform.c", i32 887, i32 4}
!30 = !{ptr @asoc_qcom_lpass_platform_register._entry.19, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @asoc_qcom_lpass_platform_register._entry_ptr.21, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_asoc_qcom_lpass_platform_register, !33, !"__ksymtab_asoc_qcom_lpass_platform_register", i1 false, i1 false}
!33 = !{!"../sound/soc/qcom/lpass-platform.c", i32 895, i32 1}
!34 = !{ptr @__UNIQUE_ID_description240, !35, !"__UNIQUE_ID_description240", i1 false, i1 false}
!35 = !{!"../sound/soc/qcom/lpass-platform.c", i32 897, i32 1}
!36 = !{ptr @__UNIQUE_ID_file241, !37, !"__UNIQUE_ID_file241", i1 false, i1 false}
!37 = !{!"../sound/soc/qcom/lpass-platform.c", i32 898, i32 1}
!38 = !{ptr @__UNIQUE_ID_license242, !37, !"__UNIQUE_ID_license242", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/qcom/lpass-platform.c", i32 725, i32 3}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @lpass_platform_lpaif_irq._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @lpass_platform_lpaif_irq._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/qcom/lpass-platform.c", i32 664, i32 2}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @lpass_dma_interrupt_handler._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @lpass_dma_interrupt_handler._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/qcom/lpass-platform.c", i32 670, i32 4}
!51 = !{ptr @lpass_dma_interrupt_handler._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @lpass_dma_interrupt_handler._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @lpass_dma_interrupt_handler._entry.29, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../sound/soc/qcom/lpass-platform.c", i32 681, i32 4}
!55 = !{ptr @lpass_dma_interrupt_handler._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/qcom/lpass-platform.c", i32 685, i32 3}
!58 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @lpass_dma_interrupt_handler._entry.31, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @lpass_dma_interrupt_handler._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @lpass_dma_interrupt_handler._entry.35, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../sound/soc/qcom/lpass-platform.c", i32 693, i32 4}
!63 = !{ptr @lpass_dma_interrupt_handler._entry_ptr.36, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/qcom/lpass-platform.c", i32 697, i32 3}
!66 = !{ptr @lpass_dma_interrupt_handler._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @lpass_dma_interrupt_handler._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @lpass_dma_interrupt_handler._entry.40, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../sound/soc/qcom/lpass-platform.c", i32 705, i32 4}
!70 = !{ptr @lpass_dma_interrupt_handler._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/qcom/lpass-platform.c", i32 753, i32 3}
!73 = !{ptr @lpass_platform_hdmiif_irq._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @lpass_platform_hdmiif_irq._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/qcom/lpass-platform.c", i32 818, i32 11}
!77 = !{ptr @lpass_component_driver, !78, !"lpass_component_driver", i1 false, i1 false}
!78 = !{!"../sound/soc/qcom/lpass-platform.c", i32 817, i32 46}
!79 = !{ptr @lpass_platform_pcm_hardware, !80, !"lpass_platform_pcm_hardware", i1 false, i1 false}
!80 = !{!"../sound/soc/qcom/lpass-platform.c", i32 29, i32 38}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/qcom/lpass-platform.c", i32 142, i32 3}
!83 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @lpass_platform_pcmops_open._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @lpass_platform_pcmops_open._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/qcom/lpass-platform.c", i32 154, i32 3}
!88 = !{ptr @lpass_platform_pcmops_open._entry.46, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @lpass_platform_pcmops_open._entry_ptr.48, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/qcom/lpass-platform.c", i32 218, i32 3}
!92 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @lpass_platform_pcmops_hw_params._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @lpass_platform_pcmops_hw_params._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/qcom/lpass-platform.c", i32 225, i32 3}
!97 = !{ptr @lpass_platform_pcmops_hw_params._entry.51, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @lpass_platform_pcmops_hw_params._entry_ptr.53, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/qcom/lpass-platform.c", i32 231, i32 3}
!101 = !{ptr @lpass_platform_pcmops_hw_params._entry.54, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @lpass_platform_pcmops_hw_params._entry_ptr.56, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/qcom/lpass-platform.c", i32 240, i32 4}
!105 = !{ptr @lpass_platform_pcmops_hw_params._entry.57, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @lpass_platform_pcmops_hw_params._entry_ptr.59, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/qcom/lpass-platform.c", i32 246, i32 4}
!109 = !{ptr @lpass_platform_pcmops_hw_params._entry.60, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @lpass_platform_pcmops_hw_params._entry_ptr.62, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/qcom/lpass-platform.c", i32 252, i32 4}
!113 = !{ptr @lpass_platform_pcmops_hw_params._entry.63, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @lpass_platform_pcmops_hw_params._entry_ptr.65, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/qcom/lpass-platform.c", i32 264, i32 4}
!117 = !{ptr @lpass_platform_pcmops_hw_params._entry.66, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @lpass_platform_pcmops_hw_params._entry_ptr.68, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.70, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/qcom/lpass-platform.c", i32 271, i32 3}
!121 = !{ptr @lpass_platform_pcmops_hw_params._entry.69, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @lpass_platform_pcmops_hw_params._entry_ptr.71, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.73, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/qcom/lpass-platform.c", i32 291, i32 4}
!125 = !{ptr @lpass_platform_pcmops_hw_params._entry.72, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @lpass_platform_pcmops_hw_params._entry_ptr.74, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @lpass_platform_pcmops_hw_params._entry.75, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../sound/soc/qcom/lpass-platform.c", i32 323, i32 4}
!129 = !{ptr @lpass_platform_pcmops_hw_params._entry_ptr.76, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @lpass_platform_pcmops_hw_params._entry.77, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../sound/soc/qcom/lpass-platform.c", i32 329, i32 3}
!132 = !{ptr @lpass_platform_pcmops_hw_params._entry_ptr.78, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.80, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/qcom/lpass-platform.c", i32 336, i32 3}
!135 = !{ptr @lpass_platform_pcmops_hw_params._entry.79, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @lpass_platform_pcmops_hw_params._entry_ptr.81, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.82, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/qcom/lpass-platform.c", i32 366, i32 3}
!139 = !{ptr @lpass_platform_pcmops_hw_free._entry, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @lpass_platform_pcmops_hw_free._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.83, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/qcom/lpass-platform.c", i32 408, i32 3}
!143 = !{ptr @.str.84, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @lpass_platform_pcmops_prepare._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @lpass_platform_pcmops_prepare._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.86, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/qcom/lpass-platform.c", i32 416, i32 3}
!148 = !{ptr @lpass_platform_pcmops_prepare._entry.85, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @lpass_platform_pcmops_prepare._entry_ptr.87, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.89, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/qcom/lpass-platform.c", i32 424, i32 3}
!152 = !{ptr @lpass_platform_pcmops_prepare._entry.88, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @lpass_platform_pcmops_prepare._entry_ptr.90, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @lpass_platform_pcmops_prepare._entry.91, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../sound/soc/qcom/lpass-platform.c", i32 431, i32 3}
!156 = !{ptr @lpass_platform_pcmops_prepare._entry_ptr.92, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.93, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/qcom/lpass-platform.c", i32 480, i32 4}
!159 = !{ptr @lpass_platform_pcmops_trigger._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @lpass_platform_pcmops_trigger._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @lpass_platform_pcmops_trigger._entry.94, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../sound/soc/qcom/lpass-platform.c", i32 489, i32 5}
!163 = !{ptr @lpass_platform_pcmops_trigger._entry_ptr.95, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.97, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/qcom/lpass-platform.c", i32 523, i32 4}
!166 = !{ptr @lpass_platform_pcmops_trigger._entry.96, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @lpass_platform_pcmops_trigger._entry_ptr.98, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @lpass_platform_pcmops_trigger._entry.99, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../sound/soc/qcom/lpass-platform.c", i32 529, i32 4}
!170 = !{ptr @lpass_platform_pcmops_trigger._entry_ptr.100, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @lpass_platform_pcmops_trigger._entry.101, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../sound/soc/qcom/lpass-platform.c", i32 534, i32 4}
!173 = !{ptr @lpass_platform_pcmops_trigger._entry_ptr.102, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @lpass_platform_pcmops_trigger._entry.103, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../sound/soc/qcom/lpass-platform.c", i32 544, i32 4}
!176 = !{ptr @lpass_platform_pcmops_trigger._entry_ptr.104, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @lpass_platform_pcmops_trigger._entry.105, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../sound/soc/qcom/lpass-platform.c", i32 553, i32 5}
!179 = !{ptr @lpass_platform_pcmops_trigger._entry_ptr.106, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @lpass_platform_pcmops_trigger._entry.107, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../sound/soc/qcom/lpass-platform.c", i32 574, i32 4}
!182 = !{ptr @lpass_platform_pcmops_trigger._entry_ptr.108, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @lpass_platform_pcmops_trigger._entry.109, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../sound/soc/qcom/lpass-platform.c", i32 580, i32 4}
!185 = !{ptr @lpass_platform_pcmops_trigger._entry_ptr.110, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.111, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/qcom/lpass-platform.c", i32 615, i32 3}
!188 = !{ptr @.str.112, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @lpass_platform_pcmops_pointer._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @lpass_platform_pcmops_pointer._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.114, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/qcom/lpass-platform.c", i32 623, i32 3}
!193 = !{ptr @lpass_platform_pcmops_pointer._entry.113, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @lpass_platform_pcmops_pointer._entry_ptr.115, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{!"auto-init"}
!205 = !{i32 0, i32 33}
