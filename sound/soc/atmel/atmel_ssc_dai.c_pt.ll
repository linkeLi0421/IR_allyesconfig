; ModuleID = '/llk/IR_all_yes/sound/soc/atmel/atmel_ssc_dai.c_pt.bc'
source_filename = "../sound/soc/atmel/atmel_ssc_dai.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+atmel_ssc_set_audio\22, \22a\22\09"
module asm "\09.weak\09__crc_atmel_ssc_set_audio\09\09\09\09"
module asm "\09.long\09__crc_atmel_ssc_set_audio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_ssc_set_audio:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_ssc_set_audio\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_ssc_set_audio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+atmel_ssc_put_audio\22, \22a\22\09"
module asm "\09.weak\09__crc_atmel_ssc_put_audio\09\09\09\09"
module asm "\09.long\09__crc_atmel_ssc_put_audio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_ssc_put_audio:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_ssc_put_audio\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_ssc_put_audio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atmel_ssc_info = type { ptr, ptr, i16, i16, i16, i16, i16, i16, i32, [2 x ptr], %struct.atmel_ssc_state, i32 }
%struct.atmel_ssc_state = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.atmel_pcm_dma_params = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.snd_ratnum = type { i32, i32, i32, i32 }
%struct.atmel_pdc_regs = type { i32, i32, i32, i32, i32 }
%struct.atmel_ssc_mask = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ssc_device = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, i32, i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
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
%struct.atmel_ssc_platform_data = type { i32, i32 }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }

@atmel_ssc_set_audio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Unable to parent ASoC SSC DAI on SSC: %ld\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_ssc_set_audio\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/atmel/atmel_ssc_dai.c\00", [32 x i8] zeroinitializer }, align 32
@atmel_ssc_set_audio._entry_ptr = internal global ptr @atmel_ssc_set_audio._entry, section ".printk_index", align 4
@ssc_info = internal global { [3 x %struct.atmel_ssc_info], [32 x i8] } { [3 x %struct.atmel_ssc_info] [%struct.atmel_ssc_info { ptr @.str.3, ptr null, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i32 0, [2 x ptr] zeroinitializer, %struct.atmel_ssc_state zeroinitializer, i32 0 }, %struct.atmel_ssc_info { ptr @.str.4, ptr null, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i32 0, [2 x ptr] zeroinitializer, %struct.atmel_ssc_state zeroinitializer, i32 0 }, %struct.atmel_ssc_info { ptr @.str.5, ptr null, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i32 0, [2 x ptr] zeroinitializer, %struct.atmel_ssc_state zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@__kstrtab_atmel_ssc_set_audio = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_ssc_set_audio = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_ssc_set_audio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_ssc_set_audio to i32), ptr @__kstrtab_atmel_ssc_set_audio, ptr @__kstrtabns_atmel_ssc_set_audio }, section "___ksymtab_gpl+atmel_ssc_set_audio", align 4
@__kstrtab_atmel_ssc_put_audio = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_ssc_put_audio = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_ssc_put_audio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_ssc_put_audio to i32), ptr @__kstrtab_atmel_ssc_put_audio, ptr @__kstrtabns_atmel_ssc_put_audio }, section "___ksymtab_gpl+atmel_ssc_put_audio", align 4
@__UNIQUE_ID_author245 = internal constant [83 x i8] c"snd_soc_atmel_ssc_dai.author=Sedji Gaouaou, sedji.gaouaou@atmel.com, www.atmel.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [59 x i8] c"snd_soc_atmel_ssc_dai.description=ATMEL SSC ASoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [65 x i8] c"snd_soc_atmel_ssc_dai.file=sound/soc/atmel/snd-soc-atmel_ssc_dai\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [34 x i8] c"snd_soc_atmel_ssc_dai.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssc0\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssc1\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssc2\00", [27 x i8] zeroinitializer }, align 32
@atmel_ssc_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.13, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @atmel_ssc_suspend, ptr @atmel_ssc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@atmel_ssc_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @atmel_ssc_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1093, i32 1073741824, i32 8000, i32 384000, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1093, i32 1073741824, i32 8000, i32 384000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@asoc_ssc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 871, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not register DAI: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"asoc_ssc_init\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@asoc_ssc_init._entry_ptr = internal global ptr @asoc_ssc_init._entry, section ".printk_index", align 4
@asoc_ssc_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.2, i32 881, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not register PCM: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@asoc_ssc_init._entry_ptr.12 = internal global ptr @asoc_ssc_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel-ssc\00", [22 x i8] zeroinitializer }, align 32
@atmel_ssc_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr @atmel_ssc_set_dai_clkdiv, ptr null, ptr @atmel_ssc_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_ssc_startup, ptr @atmel_ssc_shutdown, ptr @atmel_ssc_hw_params, ptr null, ptr @atmel_ssc_prepare, ptr @atmel_ssc_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@atmel_ssc_startup.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_soc_atmel_ssc_dai\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_ssc_startup\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"atmel_ssc_startup: SSC_SR=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@atmel_ssc_startup.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atmel_ssc_dai: Starting clock\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_ssc_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 305, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to specify rate rule: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_ssc_startup._entry_ptr = internal global ptr @atmel_ssc_startup._entry, section ".printk_index", align 4
@ssc_dma_params = internal global { [3 x [2 x %struct.atmel_pcm_dma_params]], [56 x i8] } { [3 x [2 x %struct.atmel_pcm_dma_params]] [[2 x %struct.atmel_pcm_dma_params] [%struct.atmel_pcm_dma_params { ptr @.str.19, i32 0, ptr null, ptr @pdc_tx_reg, ptr @ssc_tx_mask, ptr null, ptr null }, %struct.atmel_pcm_dma_params { ptr @.str.20, i32 0, ptr null, ptr @pdc_rx_reg, ptr @ssc_rx_mask, ptr null, ptr null }], [2 x %struct.atmel_pcm_dma_params] [%struct.atmel_pcm_dma_params { ptr @.str.21, i32 0, ptr null, ptr @pdc_tx_reg, ptr @ssc_tx_mask, ptr null, ptr null }, %struct.atmel_pcm_dma_params { ptr @.str.22, i32 0, ptr null, ptr @pdc_rx_reg, ptr @ssc_rx_mask, ptr null, ptr null }], [2 x %struct.atmel_pcm_dma_params] [%struct.atmel_pcm_dma_params { ptr @.str.23, i32 0, ptr null, ptr @pdc_tx_reg, ptr @ssc_tx_mask, ptr null, ptr null }, %struct.atmel_pcm_dma_params { ptr @.str.24, i32 0, ptr null, ptr @pdc_rx_reg, ptr @ssc_rx_mask, ptr null, ptr null }]], [56 x i8] zeroinitializer }, align 32
@__const.atmel_ssc_hw_rule_rate.r = private unnamed_addr constant %struct.snd_ratnum { i32 0, i32 1, i32 4095, i32 1 }, align 4
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SSC0 PCM out\00", [19 x i8] zeroinitializer }, align 32
@pdc_tx_reg = internal global { %struct.atmel_pdc_regs, [44 x i8] } { %struct.atmel_pdc_regs { i32 264, i32 268, i32 280, i32 284, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ssc_tx_mask = internal global { %struct.atmel_ssc_mask, [36 x i8] } { %struct.atmel_ssc_mask { i32 256, i32 512, i32 32, i32 4, i32 8, i32 256, i32 512 }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SSC0 PCM in\00", [20 x i8] zeroinitializer }, align 32
@pdc_rx_reg = internal global { %struct.atmel_pdc_regs, [44 x i8] } { %struct.atmel_pdc_regs { i32 256, i32 260, i32 272, i32 276, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ssc_rx_mask = internal global { %struct.atmel_ssc_mask, [36 x i8] } { %struct.atmel_ssc_mask { i32 1, i32 2, i32 32, i32 64, i32 128, i32 1, i32 2 }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SSC1 PCM out\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SSC1 PCM in\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SSC2 PCM out\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SSC2 PCM in\00", [20 x i8] zeroinitializer }, align 32
@atmel_ssc_shutdown.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel_ssc_shutdown\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atmel_ssc_dai: Stopping clock\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_ssc_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 492, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to calculate cmr_div: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_ssc_hw_params\00", [44 x i8] zeroinitializer }, align 32
@atmel_ssc_hw_params._entry_ptr = internal global ptr @atmel_ssc_hw_params._entry, section ".printk_index", align 4
@atmel_ssc_hw_params._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 511, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to calculate tx/rx cmr_period: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@atmel_ssc_hw_params._entry_ptr.31 = internal global ptr @atmel_ssc_hw_params._entry.29, section ".printk_index", align 4
@atmel_ssc_hw_params._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014atmel_ssc_dai: unsupported PCM format\00", [56 x i8] zeroinitializer }, align 32
@atmel_ssc_hw_params._entry_ptr.34 = internal global ptr @atmel_ssc_hw_params._entry.32, section ".printk_index", align 4
@atmel_ssc_hw_params._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014atmel_ssc_dai: unsupported DAI format 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@atmel_ssc_hw_params._entry_ptr.37 = internal global ptr @atmel_ssc_hw_params._entry.35, section ".printk_index", align 4
@atmel_ssc_hw_params._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.2, i32 659, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sample size %d is too large for SSC device\0A\00", [52 x i8] zeroinitializer }, align 32
@atmel_ssc_hw_params._entry_ptr.40 = internal global ptr @atmel_ssc_hw_params._entry.38, section ".printk_index", align 4
@atmel_ssc_hw_params.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.28, ptr @.str.2, ptr @.str.41, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"atmel_ssc_hw_params: RCMR=%08x RFMR=%08x TCMR=%08x TFMR=%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@atmel_ssc_hw_params._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.28, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014atmel_ssc_dai: request_irq failure\0A\00", [58 x i8] zeroinitializer }, align 32
@atmel_ssc_hw_params._entry_ptr.44 = internal global ptr @atmel_ssc_hw_params._entry.42, section ".printk_index", align 4
@atmel_ssc_hw_params.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.28, ptr @.str.2, ptr @.str.45, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Atmel_ssc_dai: Stopping clock\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_ssc_hw_params.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.28, ptr @.str.2, ptr @.str.46, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"atmel_ssc_dai,hw_params: SSC initialized\0A\00", [54 x i8] zeroinitializer }, align 32
@atmel_ssc_prepare.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_ssc_prepare\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s enabled SSC_SR=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"receive\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"transmit\00", [23 x i8] zeroinitializer }, align 32
@switch.table.atmel_ssc_hw_params = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 1, i32 4, i32 1, i32 4], [40 x i8] zeroinitializer }, align 32
@switch.table.atmel_ssc_hw_params.51 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8, i32 16, i32 8, i32 24, i32 8, i32 32], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 6]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 12288, i64 16384]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 900, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"ssc_info\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 116, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 118, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 123, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 128, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"atmel_ssc_component\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 857, i32 46 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"atmel_ssc_dai\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 839, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 871, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 881, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 858, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"atmel_ssc_dai_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 829, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 278, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 282, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 305, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"ssc_dma_params\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 82, i32 36 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 84, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant [11 x i8] c"pdc_tx_reg\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 41, i32 30 }
@___asan_gen_.139 = private unnamed_addr constant [12 x i8] c"ssc_tx_mask\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 58, i32 30 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 89, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant [11 x i8] c"pdc_rx_reg\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 48, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"ssc_rx_mask\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 68, i32 30 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 94, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 99, i32 11 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 104, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 109, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 367, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 491, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 509, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 546, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 595, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 658, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 663, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 683, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 685, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 704, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [35 x i8] c"../sound/soc/atmel/atmel_ssc_dai.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 727, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [33 x i8] c"switch.table.atmel_ssc_hw_params\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [36 x i8] c"switch.table.atmel_ssc_hw_params.51\00", align 1
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__ksymtab_atmel_ssc_put_audio, ptr @__ksymtab_atmel_ssc_set_audio, ptr @asoc_ssc_init._entry, ptr @asoc_ssc_init._entry.10, ptr @asoc_ssc_init._entry_ptr, ptr @asoc_ssc_init._entry_ptr.12, ptr @atmel_ssc_hw_params._entry, ptr @atmel_ssc_hw_params._entry.29, ptr @atmel_ssc_hw_params._entry.32, ptr @atmel_ssc_hw_params._entry.35, ptr @atmel_ssc_hw_params._entry.38, ptr @atmel_ssc_hw_params._entry.42, ptr @atmel_ssc_hw_params._entry_ptr, ptr @atmel_ssc_hw_params._entry_ptr.31, ptr @atmel_ssc_hw_params._entry_ptr.34, ptr @atmel_ssc_hw_params._entry_ptr.37, ptr @atmel_ssc_hw_params._entry_ptr.40, ptr @atmel_ssc_hw_params._entry_ptr.44, ptr @atmel_ssc_set_audio._entry, ptr @atmel_ssc_set_audio._entry_ptr, ptr @atmel_ssc_startup._entry, ptr @atmel_ssc_startup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ssc_info, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @atmel_ssc_component, ptr @atmel_ssc_dai, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @atmel_ssc_dai_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ssc_dma_params, ptr @.str.19, ptr @pdc_tx_reg, ptr @ssc_tx_mask, ptr @.str.20, ptr @pdc_rx_reg, ptr @ssc_rx_mask, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @switch.table.atmel_ssc_hw_params, ptr @switch.table.atmel_ssc_hw_params.51], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ssc_set_audio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssc_info to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ssc_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ssc_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_ssc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_ssc_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ssc_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ssc_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssc_dma_params to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_tx_reg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssc_tx_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_rx_reg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssc_rx_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ssc_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ssc_hw_params._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ssc_hw_params._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ssc_hw_params._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ssc_hw_params._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ssc_hw_params._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atmel_ssc_hw_params to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atmel_ssc_hw_params.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atmel_ssc_set_audio(i32 noundef %ssc_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ssc_request(i32 noundef %ssc_id) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %ssc5 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %ssc_id, i32 1
  %1 = ptrtoint ptr %ssc5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %ssc5, align 4
  %pdev = getelementptr inbounds %struct.ssc_device, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @atmel_ssc_component, ptr noundef nonnull @atmel_ssc_dai, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call1.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %pdata.i = getelementptr inbounds %struct.ssc_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 @atmel_pcm_dma_platform_register(ptr noundef %dev) #6
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 @atmel_pcm_pdc_platform_register(ptr noundef %dev) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then3.i
  %ret.0.i = phi i32 [ %call4.i, %if.then3.i ], [ %call5.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool7.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.cleanup_crit_edge, label %do.end11.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %ret.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i, %if.end6.i.cleanup_crit_edge, %do.end.i, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %call1.i, %do.end.i ], [ %ret.0.i, %do.end11.i ], [ 0, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ssc_request(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atmel_ssc_put_audio(i32 noundef %ssc_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ssc1 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %ssc_id, i32 1
  %0 = ptrtoint ptr %ssc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ssc1, align 4
  tail call void @ssc_free(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_pcm_dma_platform_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_pcm_pdc_platform_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ssc_suspend(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %active.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 5
  %0 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %id = getelementptr i8, ptr %3, i32 -12
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %ssc = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 1
  %6 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr1 = getelementptr i8, ptr %9, i32 64
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !131
  %ssc_state = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10
  %ssc_sr = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10, i32 5
  %11 = ptrtoint ptr %ssc_sr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ssc_sr, align 4
  %12 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ssc, align 4
  %regs4 = getelementptr inbounds %struct.ssc_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 514) #6, !srcloc !132
  %16 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ssc, align 4
  %regs7 = getelementptr inbounds %struct.ssc_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %regs7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs7, align 4
  %add.ptr8 = getelementptr i8, ptr %19, i32 76
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !131
  %ssc_imr = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10, i32 6
  %21 = ptrtoint ptr %ssc_imr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ssc_imr, align 4
  %22 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ssc, align 4
  %regs14 = getelementptr inbounds %struct.ssc_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %regs14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs14, align 4
  %add.ptr15 = getelementptr i8, ptr %25, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %20) #6, !srcloc !132
  %26 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ssc, align 4
  %regs17 = getelementptr inbounds %struct.ssc_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %regs17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs17, align 4
  %add.ptr18 = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #6, !srcloc !131
  %31 = ptrtoint ptr %ssc_state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ssc_state, align 4
  %32 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ssc, align 4
  %regs22 = getelementptr inbounds %struct.ssc_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %regs22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs22, align 4
  %add.ptr23 = getelementptr i8, ptr %35, i32 16
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #6, !srcloc !131
  %ssc_rcmr = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10, i32 1
  %37 = ptrtoint ptr %ssc_rcmr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ssc_rcmr, align 4
  %38 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ssc, align 4
  %regs27 = getelementptr inbounds %struct.ssc_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %regs27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs27, align 4
  %add.ptr28 = getelementptr i8, ptr %41, i32 20
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !131
  %ssc_rfmr = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10, i32 2
  %43 = ptrtoint ptr %ssc_rfmr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %ssc_rfmr, align 4
  %44 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ssc, align 4
  %regs32 = getelementptr inbounds %struct.ssc_device, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs32, align 4
  %add.ptr33 = getelementptr i8, ptr %47, i32 24
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #6, !srcloc !131
  %ssc_tcmr = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10, i32 3
  %49 = ptrtoint ptr %ssc_tcmr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %ssc_tcmr, align 4
  %50 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ssc, align 4
  %regs37 = getelementptr inbounds %struct.ssc_device, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %regs37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs37, align 4
  %add.ptr38 = getelementptr i8, ptr %53, i32 28
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #6, !srcloc !131
  %ssc_tfmr = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10, i32 4
  %55 = ptrtoint ptr %ssc_tfmr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %ssc_tfmr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ssc_resume(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %active.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 5
  %0 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %id = getelementptr i8, ptr %3, i32 -12
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %ssc_state = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10
  %ssc_tfmr = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10, i32 4
  %6 = ptrtoint ptr %ssc_tfmr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ssc_tfmr, align 4
  %ssc = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 1
  %8 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr1 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %7) #6, !srcloc !132
  %ssc_tcmr = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10, i32 3
  %12 = ptrtoint ptr %ssc_tcmr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ssc_tcmr, align 4
  %14 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ssc, align 4
  %regs4 = getelementptr inbounds %struct.ssc_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs4, align 4
  %add.ptr5 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %13) #6, !srcloc !132
  %ssc_rfmr = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10, i32 2
  %18 = ptrtoint ptr %ssc_rfmr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ssc_rfmr, align 4
  %20 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ssc, align 4
  %regs8 = getelementptr inbounds %struct.ssc_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %regs8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs8, align 4
  %add.ptr9 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %19) #6, !srcloc !132
  %ssc_rcmr = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10, i32 1
  %24 = ptrtoint ptr %ssc_rcmr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ssc_rcmr, align 4
  %26 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ssc, align 4
  %regs12 = getelementptr inbounds %struct.ssc_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs12, align 4
  %add.ptr13 = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %25) #6, !srcloc !132
  %30 = ptrtoint ptr %ssc_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ssc_state, align 4
  %32 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ssc, align 4
  %regs16 = getelementptr inbounds %struct.ssc_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs16, align 4
  %add.ptr17 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %31) #6, !srcloc !132
  %ssc_imr = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10, i32 6
  %36 = ptrtoint ptr %ssc_imr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ssc_imr, align 4
  %38 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ssc, align 4
  %regs20 = getelementptr inbounds %struct.ssc_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %regs20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs20, align 4
  %add.ptr21 = getelementptr i8, ptr %41, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %37) #6, !srcloc !132
  %ssc_sr = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %5, i32 10, i32 5
  %42 = ptrtoint ptr %ssc_sr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ssc_sr, align 4
  %and = lshr i32 %43, 17
  %and.lobit = and i32 %and, 1
  %and26 = lshr i32 %43, 8
  %44 = and i32 %and26, 256
  %or29 = or i32 %and.lobit, %44
  %45 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ssc, align 4
  %regs31 = getelementptr inbounds %struct.ssc_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %or29) #6, !srcloc !132
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_ssc_set_dai_clkdiv(ptr nocapture noundef readonly %cpu_dai, i32 noundef %div_id, i32 noundef %div) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %id = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = zext i32 %div_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div_id, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb22
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dir_mask = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 2
  %5 = ptrtoint ptr %dir_mask to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dir_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp.not = icmp eq i16 %6, 3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = trunc i32 %div to i16
  %cmr_div = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 5
  %7 = ptrtoint ptr %cmr_div to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv2, ptr %cmr_div, align 2
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.bb
  %cmr_div3 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 5
  %8 = ptrtoint ptr %cmr_div3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cmr_div3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp5 = icmp eq i16 %9, 0
  br i1 %cmp5, label %if.then7, label %if.else10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv8 = trunc i32 %div to i16
  %10 = ptrtoint ptr %cmr_div3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv8, ptr %cmr_div3, align 2
  br label %cleanup.sink.split

if.else10:                                        ; preds = %if.else
  %conv4 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %div)
  %cmp13.not = icmp eq i32 %conv4, %div
  br i1 %cmp13.not, label %if.else10.cleanup.sink.split_crit_edge, label %if.else10.cleanup_crit_edge

if.else10.cleanup_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else10.cleanup.sink.split_crit_edge:           ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv19 = trunc i32 %div to i16
  %tcmr_period = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 6
  %11 = ptrtoint ptr %tcmr_period to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv19, ptr %tcmr_period, align 4
  br label %cleanup.sink.split

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv23 = trunc i32 %div to i16
  %rcmr_period = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 7
  %12 = ptrtoint ptr %rcmr_period to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv23, ptr %rcmr_period, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb22, %sw.bb18, %if.else10.cleanup.sink.split_crit_edge, %if.then7, %if.then
  %.sink40 = phi i32 [ 2, %sw.bb18 ], [ 4, %sw.bb22 ], [ 1, %if.then7 ], [ 1, %if.else10.cleanup.sink.split_crit_edge ], [ 1, %if.then ]
  %forced_divider24 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 8
  %13 = ptrtoint ptr %forced_divider24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %forced_divider24, align 4
  %or = or i32 %14, %.sink40
  store i32 %or, ptr %forced_divider24, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.else10.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_ssc_set_dai_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %id = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %conv = trunc i32 %fmt to i16
  %daifmt = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 4
  %4 = ptrtoint ptr %daifmt to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %daifmt, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ssc_startup(ptr noundef %substream, ptr nocapture noundef %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %id = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ssc_startup.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ssc_startup, %if.then)) #6
          to label %do.body6 [label %if.then], !srcloc !133

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ssc = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !131
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atmel_ssc_startup.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.16, i32 noundef %8) #6
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ssc_startup.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ssc_startup, %if.then18)) #6
          to label %do.end21 [label %if.then18], !srcloc !133

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atmel_ssc_startup.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.17) #6
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body6
  %ssc22 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 1
  %9 = ptrtoint ptr %ssc22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ssc22, align 4
  %clk = getelementptr inbounds %struct.ssc_device, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call23 = tail call i32 @clk_enable(ptr noundef %12) #6
  %13 = ptrtoint ptr %ssc22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ssc22, align 4
  %clk25 = getelementptr inbounds %struct.ssc_device, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %clk25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk25, align 4
  %call26 = tail call i32 @clk_get_rate(ptr noundef %16) #6
  %mck_rate = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 11
  %17 = ptrtoint ptr %mck_rate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call26, ptr %mck_rate, align 4
  %initialized = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 3
  %18 = ptrtoint ptr %initialized to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %initialized, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool27.not = icmp eq i16 %19, 0
  br i1 %tobool27.not, label %if.then28, label %do.end21.if.end32_crit_edge

do.end21.if.end32_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then28:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %ssc22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ssc22, align 4
  %regs30 = getelementptr inbounds %struct.ssc_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %regs30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 32768) #6, !srcloc !132
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %do.end21.if.end32_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %24 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  %.86 = select i1 %cmp, i32 1, i32 2
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %26 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %runtime, align 4
  %call35 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %27, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @atmel_ssc_hw_rule_rate, ptr noundef %arrayidx, i32 noundef 9, i32 noundef 10, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.18, i32 noundef %call35) #9
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  %not.cmp = xor i1 %cmp, true
  %. = zext i1 %not.cmp to i32
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %arrayidx45 = getelementptr [3 x [2 x %struct.atmel_pcm_dma_params]], ptr @ssc_dma_params, i32 0, i32 %31, i32 %.
  %32 = ptrtoint ptr %ssc22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ssc22, align 4
  %ssc47 = getelementptr [3 x [2 x %struct.atmel_pcm_dma_params]], ptr @ssc_dma_params, i32 0, i32 %31, i32 %., i32 2
  %34 = ptrtoint ptr %ssc47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %ssc47, align 4
  %substream48 = getelementptr [3 x [2 x %struct.atmel_pcm_dma_params]], ptr @ssc_dma_params, i32 0, i32 %31, i32 %., i32 5
  %35 = ptrtoint ptr %substream48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %substream, ptr %substream48, align 4
  %arrayidx50 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 9, i32 %.
  %36 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx45, ptr %arrayidx50, align 4
  %37 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i = icmp eq i32 %38, 0
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.sink.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %39 = ptrtoint ptr %capture_dma_data.sink.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx45, ptr %capture_dma_data.sink.i, align 4
  %dir_mask51 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 2
  %40 = ptrtoint ptr %dir_mask51 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %dir_mask51, align 4
  %conv = zext i16 %41 to i32
  %and = and i32 %.86, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %if.end54, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %42 = trunc i32 %.86 to i16
  %conv57 = or i16 %41, %42
  %43 = ptrtoint ptr %dir_mask51 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv57, ptr %dir_mask51, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end42.cleanup_crit_edge, %do.end40
  %retval.0 = phi i32 [ %call35, %do.end40 ], [ 0, %if.end54 ], [ -16, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_ssc_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %id = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp ne i32 %5, 0
  %. = zext i1 %cmp to i32
  %arrayidx2 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 9, i32 %.
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %cmp3.not = icmp eq ptr %7, null
  br i1 %cmp3.not, label %entry.if.end8_crit_edge, label %if.then4

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ssc = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ssc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ssc, align 4
  %substream5 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %substream5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %substream5, align 4
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx2, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %entry.if.end8_crit_edge
  %shl = shl nuw nsw i32 1, %.
  %dir_mask9 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 2
  %11 = ptrtoint ptr %dir_mask9 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dir_mask9, align 4
  %13 = trunc i32 %shl to i16
  %14 = xor i16 %13, -1
  %conv10 = and i16 %12, %14
  store i16 %conv10, ptr %dir_mask9, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv10)
  %tobool.not = icmp eq i16 %conv10, 0
  br i1 %tobool.not, label %if.then12, label %if.end8.do.body_crit_edge

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then12:                                        ; preds = %if.end8
  %initialized = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 3
  %15 = ptrtoint ptr %initialized to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %initialized, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool13.not = icmp eq i16 %16, 0
  br i1 %tobool13.not, label %if.then12.if.end17_crit_edge, label %if.then14

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %ssc15 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 1
  %17 = ptrtoint ptr %ssc15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ssc15, align 4
  %irq = getelementptr inbounds %struct.ssc_device, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %20, ptr noundef %arrayidx) #6
  %21 = ptrtoint ptr %initialized to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %initialized, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then12.if.end17_crit_edge
  %ssc18 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 1
  %22 = ptrtoint ptr %ssc18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ssc18, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 32768) #6, !srcloc !132
  %cmr_div = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 5
  %26 = call ptr @memset(ptr %cmr_div, i32 0, i32 10)
  br label %do.body

do.body:                                          ; preds = %if.end17, %if.end8.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ssc_shutdown.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ssc_shutdown, %if.then26)) #6
          to label %do.end [label %if.then26], !srcloc !133

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atmel_ssc_shutdown.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.26) #6
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body
  %ssc28 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 1
  %27 = ptrtoint ptr %ssc28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ssc28, align 4
  %clk = getelementptr inbounds %struct.ssc_device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %30) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ssc_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %id1 = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id1, align 4
  %arrayidx = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3
  %ssc2 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ssc2, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp ne i32 %7, 0
  %. = zext i1 %cmp to i32
  %cmr_div3 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 5
  %8 = ptrtoint ptr %cmr_div3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cmr_div3, align 2
  %conv = zext i16 %9 to i32
  %forced_divider = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 8
  %10 = ptrtoint ptr %forced_divider to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %forced_divider, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %daifmt.i = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 4
  %12 = ptrtoint ptr %daifmt.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %daifmt.i, align 4
  %14 = add i16 %13, -8192
  %switch.and.i = and i16 %14, -12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i)
  %switch.selectcmp.i.not = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp.i.not, label %if.then5, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then5:                                         ; preds = %land.lhs.true
  %call6 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %params) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.27, i32 noundef %call6) #9
  br label %cleanup266

cleanup:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %mck_rate = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 11
  %17 = ptrtoint ptr %mck_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mck_rate, align 4
  %mul = shl nuw i32 %call6, 1
  %div = sdiv i32 %mul, 2
  %add = add i32 %18, %div
  %div13 = udiv i32 %add, %mul
  br label %if.end14

if.end14:                                         ; preds = %cleanup, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %cmr_div.1 = phi i32 [ %conv, %entry.if.end14_crit_edge ], [ %div13, %cleanup ], [ %conv, %land.lhs.true.if.end14_crit_edge ]
  %tcmr_period15 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 6
  %19 = ptrtoint ptr %tcmr_period15 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tcmr_period15, align 4
  %conv16 = zext i16 %20 to i32
  %rcmr_period17 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 7
  %21 = ptrtoint ptr %rcmr_period17 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rcmr_period17, align 2
  %conv18 = zext i16 %22 to i32
  %daifmt.i371 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 4
  %23 = ptrtoint ptr %daifmt.i371 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %daifmt.i371, align 4
  %25 = add i16 %24, -20480
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8192, i16 %25)
  %switch.selectcmp.i372 = icmp ult i16 %25, -8192
  br i1 %switch.selectcmp.i372, label %if.end14.if.end47_crit_edge, label %if.then21

if.end14.if.end47_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then21:                                        ; preds = %if.end14
  %call22 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %cleanup44.thread, label %cleanup44

cleanup44.thread:                                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.30, i32 noundef %call22) #9
  br label %cleanup266

cleanup44:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %forced_divider to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %forced_divider, align 4
  %and32 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %div35390391 = lshr i32 %call22, 1
  %sub = add nsw i32 %div35390391, -1
  %tcmr_period.0 = select i1 %tobool33.not, i32 %sub, i32 %conv16
  %and38 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %rcmr_period.0 = select i1 %tobool39.not, i32 %sub, i32 %conv18
  br label %if.end47

if.end47:                                         ; preds = %cleanup44, %if.end14.if.end47_crit_edge
  %tcmr_period.2 = phi i32 [ %tcmr_period.0, %cleanup44 ], [ %conv16, %if.end14.if.end47_crit_edge ]
  %rcmr_period.2 = phi i32 [ %rcmr_period.0, %cleanup44 ], [ %conv18, %if.end14.if.end47_crit_edge ]
  %arrayidx49 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 9, i32 %.
  %30 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx49, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i373 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %arrayidx.i.i373 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i373, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end47.if.then.i.i_crit_edge

if.end47.if.then.i.i_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.end47.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end47.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %35, %if.end47.if.then.i.i_crit_edge ], [ %38, %for.inc.i.i.if.then.i.i_crit_edge ]
  %36 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #6, !range !134
  %add.i.i = or i32 %36, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end47
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.1.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %39 = tail call i32 @llvm.fshl.i32(i32 %retval.0.i.i, i32 %retval.0.i.i, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %39)
  %40 = icmp ult i32 %39, 6
  br i1 %40, label %switch.hole_check, label %params_format.exit.do.end60_crit_edge

params_format.exit.do.end60_crit_edge:            ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

do.end60:                                         ; preds = %switch.hole_check.do.end60_crit_edge, %params_format.exit.do.end60_crit_edge
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #9
  br label %cleanup266

switch.hole_check:                                ; preds = %params_format.exit
  %switch.maskindex = trunc i32 %39 to i8
  %switch.shifted = lshr i8 43, %switch.maskindex
  %41 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %switch.lobit.not = icmp eq i8 %41, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end60_crit_edge, label %switch.lookup

switch.hole_check.do.end60_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.atmel_ssc_hw_params, i32 0, i32 %39
  %42 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %42)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep393 = getelementptr inbounds [6 x i32], ptr @switch.table.atmel_ssc_hw_params.51, i32 0, i32 %39
  %43 = ptrtoint ptr %switch.gep393 to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load394 = load i32, ptr %switch.gep393, align 4
  %pdc_xfer_size57 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %31, i32 0, i32 1
  %44 = ptrtoint ptr %pdc_xfer_size57 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %switch.load, ptr %pdc_xfer_size57, align 4
  %sub63 = add nsw i32 %switch.load394, -1
  %div64386387392 = lshr i32 %sub63, 4
  %rem388389 = and i32 %sub63, 15
  %45 = ptrtoint ptr %daifmt.i371 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %daifmt.i371, align 4
  %conv66 = zext i16 %46 to i32
  %and67 = and i32 %conv66, 15
  %47 = zext i32 %and67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %and67, label %do.end74 [
    i32 3, label %switch.lookup.sw.epilog79_crit_edge
    i32 1, label %sw.bb69
    i32 4, label %sw.bb70
  ]

switch.lookup.sw.epilog79_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog79

sw.bb69:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog79

sw.bb70:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog79

do.end74:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv66) #9
  br label %cleanup266

sw.epilog79:                                      ; preds = %sw.bb70, %sw.bb69, %switch.lookup.sw.epilog79_crit_edge
  %fslen.0 = phi i32 [ 0, %sw.bb70 ], [ %rem388389, %sw.bb69 ], [ %rem388389, %switch.lookup.sw.epilog79_crit_edge ]
  %fslen_ext.0 = phi i32 [ 0, %sw.bb70 ], [ %div64386387392, %sw.bb69 ], [ %div64386387392, %switch.lookup.sw.epilog79_crit_edge ]
  %fs_osync.0 = phi i32 [ 2097152, %sw.bb70 ], [ 1048576, %sw.bb69 ], [ 2097152, %switch.lookup.sw.epilog79_crit_edge ]
  %fs_edge.0 = phi i32 [ 1280, %sw.bb70 ], [ 1024, %sw.bb69 ], [ 1280, %switch.lookup.sw.epilog79_crit_edge ]
  %tcmr.0 = phi i32 [ 65536, %sw.bb70 ], [ 65536, %sw.bb69 ], [ 0, %switch.lookup.sw.epilog79_crit_edge ]
  %48 = ptrtoint ptr %daifmt.i371 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %daifmt.i371, align 4
  %50 = add i16 %49, -20480
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8192, i16 %50)
  %switch.selectcmp.i375 = icmp ult i16 %50, -8192
  br i1 %switch.selectcmp.i375, label %if.then82, label %sw.epilog79.if.end83_crit_edge

sw.epilog79.if.end83_crit_edge:                   ; preds = %sw.epilog79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then82:                                        ; preds = %sw.epilog79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %sw.epilog79.if.end83_crit_edge
  %fslen.1 = phi i32 [ %fslen.0, %sw.epilog79.if.end83_crit_edge ], [ 0, %if.then82 ]
  %fslen_ext.1 = phi i32 [ %fslen_ext.0, %sw.epilog79.if.end83_crit_edge ], [ 0, %if.then82 ]
  %fs_osync.1 = phi i32 [ %fs_osync.0, %sw.epilog79.if.end83_crit_edge ], [ 0, %if.then82 ]
  %tcmr_period.3 = phi i32 [ %tcmr_period.2, %sw.epilog79.if.end83_crit_edge ], [ 0, %if.then82 ]
  %rcmr_period.3 = phi i32 [ %rcmr_period.2, %sw.epilog79.if.end83_crit_edge ], [ 0, %if.then82 ]
  %or = or i32 %tcmr.0, %fs_edge.0
  %51 = add i16 %49, -8192
  %switch.and.i377 = and i16 %51, -12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i377)
  %switch.selectcmp.i378.not = icmp eq i16 %switch.and.i377, 0
  br i1 %switch.selectcmp.i378.not, label %if.then90, label %if.else93

if.then90:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %or92 = or i32 %or, 4
  br label %if.end108

if.else93:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %clk_from_rk_pin = getelementptr inbounds %struct.ssc_device, ptr %5, i32 0, i32 8
  %52 = ptrtoint ptr %clk_from_rk_pin to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %clk_from_rk_pin, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool94.not = icmp eq i8 %53, 0
  %cond = select i1 %tobool94.not, i32 1, i32 2
  %or99 = or i32 %cond, %or
  %cond103 = select i1 %tobool94.not, i32 2, i32 1
  %or107 = or i32 %cond103, %or
  br label %if.end108

if.end108:                                        ; preds = %if.else93, %if.then90
  %rcmr.1 = phi i32 [ %or, %if.then90 ], [ %or99, %if.else93 ]
  %tcmr.1 = phi i32 [ %or92, %if.then90 ], [ %or107, %if.else93 ]
  %shl110 = shl i32 %rcmr_period.3, 24
  %or111 = or i32 %shl110, 32
  %or112 = or i32 %rcmr.1, %or111
  %shl114 = shl i32 %tcmr_period.3, 24
  %or116 = or i32 %tcmr.1, %shl114
  %shl118 = shl nuw nsw i32 %fslen_ext.1, 28
  %shl121 = and i32 %fs_osync.1, 15728640
  %and123 = shl nuw nsw i32 %fslen.1, 16
  %shl124 = and i32 %and123, 983040
  %sub126 = shl i32 %33, 8
  %and127 = add i32 %sub126, 3840
  %shl128 = and i32 %and127, 3840
  %or122 = or i32 %shl128, %sub63
  %or125 = or i32 %or122, %shl118
  %or129 = or i32 %or125, %shl124
  %or130 = or i32 %or129, %shl121
  %or135 = or i32 %or130, 128
  %shl141 = and i32 %fs_osync.1, 7340032
  %or150 = or i32 %or129, %shl141
  %or155 = or i32 %or150, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fslen_ext.1)
  %tobool156.not = icmp eq i32 %fslen_ext.1, 0
  br i1 %tobool156.not, label %if.end108.do.body165_crit_edge, label %land.lhs.true157

if.end108.do.body165_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body165

land.lhs.true157:                                 ; preds = %if.end108
  %pdata = getelementptr inbounds %struct.ssc_device, ptr %5, i32 0, i32 4
  %54 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdata, align 4
  %has_fslen_ext = getelementptr inbounds %struct.atmel_ssc_platform_data, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %has_fslen_ext to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %has_fslen_ext, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool158.not = icmp eq i32 %57, 0
  br i1 %tobool158.not, label %do.end162, label %land.lhs.true157.do.body165_crit_edge

land.lhs.true157.do.body165_crit_edge:            ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body165

do.end162:                                        ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.39, i32 noundef %switch.load394) #9
  br label %cleanup266

do.body165:                                       ; preds = %land.lhs.true157.do.body165_crit_edge, %if.end108.do.body165_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ssc_hw_params.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ssc_hw_params, %if.then171)) #6
          to label %do.end174 [label %if.then171], !srcloc !133

if.then171:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atmel_ssc_hw_params.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.41, i32 noundef %or112, i32 noundef %or135, i32 noundef %or116, i32 noundef %or155) #6
  br label %do.end174

do.end174:                                        ; preds = %if.then171, %do.body165
  %initialized = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 3
  %60 = ptrtoint ptr %initialized to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %initialized, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool175.not = icmp eq i16 %61, 0
  br i1 %tobool175.not, label %if.then176, label %do.end174.if.end234_crit_edge

do.end174.if.end234_crit_edge:                    ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end234

if.then176:                                       ; preds = %do.end174
  %62 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ssc2, align 4
  %pdata178 = getelementptr inbounds %struct.ssc_device, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %pdata178 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdata178, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool179.not = icmp eq i32 %67, 0
  br i1 %tobool179.not, label %if.then180, label %if.then176.if.end204_crit_edge

if.then176.if.end204_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end204

if.then180:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #8
  %regs = getelementptr inbounds %struct.ssc_device, ptr %63, i32 0, i32 2
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %add.ptr182 = getelementptr i8, ptr %69, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr182, i32 0) #6, !srcloc !132
  %70 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ssc2, align 4
  %regs184 = getelementptr inbounds %struct.ssc_device, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %regs184 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs184, align 4
  %add.ptr185 = getelementptr i8, ptr %73, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185, i32 0) #6, !srcloc !132
  %74 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ssc2, align 4
  %regs187 = getelementptr inbounds %struct.ssc_device, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %regs187 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs187, align 4
  %add.ptr188 = getelementptr i8, ptr %77, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 0) #6, !srcloc !132
  %78 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ssc2, align 4
  %regs190 = getelementptr inbounds %struct.ssc_device, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %regs190 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs190, align 4
  %add.ptr191 = getelementptr i8, ptr %81, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191, i32 0) #6, !srcloc !132
  %82 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ssc2, align 4
  %regs193 = getelementptr inbounds %struct.ssc_device, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %regs193 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs193, align 4
  %add.ptr194 = getelementptr i8, ptr %85, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 0) #6, !srcloc !132
  %86 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ssc2, align 4
  %regs196 = getelementptr inbounds %struct.ssc_device, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %regs196 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs196, align 4
  %add.ptr197 = getelementptr i8, ptr %89, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 0) #6, !srcloc !132
  %90 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ssc2, align 4
  %regs199 = getelementptr inbounds %struct.ssc_device, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %regs199 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs199, align 4
  %add.ptr200 = getelementptr i8, ptr %93, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr200, i32 0) #6, !srcloc !132
  %94 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ssc2, align 4
  %regs202 = getelementptr inbounds %struct.ssc_device, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %regs202 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs202, align 4
  %add.ptr203 = getelementptr i8, ptr %97, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr203, i32 0) #6, !srcloc !132
  br label %if.end204

if.end204:                                        ; preds = %if.then180, %if.then176.if.end204_crit_edge
  %98 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ssc2, align 4
  %irq = getelementptr inbounds %struct.ssc_device, ptr %99, i32 0, i32 7
  %100 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %irq, align 4
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %101, ptr noundef nonnull @atmel_ssc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %103, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp207 = icmp slt i32 %call.i, 0
  br i1 %cmp207, label %do.end212, label %if.end232

do.end212:                                        ; preds = %if.end204
  %call214 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ssc_hw_params.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ssc_hw_params, %if.then227)) #6
          to label %do.end230 [label %if.then227], !srcloc !133

if.then227:                                       ; preds = %do.end212
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atmel_ssc_hw_params.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.45) #6
  br label %do.end230

do.end230:                                        ; preds = %if.then227, %do.end212
  %104 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ssc2, align 4
  %clk = getelementptr inbounds %struct.ssc_device, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %107) #6
  br label %cleanup266

if.end232:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %initialized to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 1, ptr %initialized, align 2
  br label %if.end234

if.end234:                                        ; preds = %if.end232, %do.end174.if.end234_crit_edge
  %109 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ssc2, align 4
  %regs236 = getelementptr inbounds %struct.ssc_device, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %regs236 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs236, align 4
  %add.ptr237 = getelementptr i8, ptr %112, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr237, i32 %cmr_div.1) #6, !srcloc !132
  %113 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ssc2, align 4
  %regs239 = getelementptr inbounds %struct.ssc_device, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %regs239 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs239, align 4
  %add.ptr240 = getelementptr i8, ptr %116, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 %or112) #6, !srcloc !132
  %117 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ssc2, align 4
  %regs242 = getelementptr inbounds %struct.ssc_device, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %regs242 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs242, align 4
  %add.ptr243 = getelementptr i8, ptr %120, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr243, i32 %or135) #6, !srcloc !132
  %121 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ssc2, align 4
  %regs245 = getelementptr inbounds %struct.ssc_device, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %regs245 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs245, align 4
  %add.ptr246 = getelementptr i8, ptr %124, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr246, i32 %or116) #6, !srcloc !132
  %125 = ptrtoint ptr %ssc2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ssc2, align 4
  %regs248 = getelementptr inbounds %struct.ssc_device, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %regs248 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs248, align 4
  %add.ptr249 = getelementptr i8, ptr %128, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr249, i32 %or155) #6, !srcloc !132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ssc_hw_params.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ssc_hw_params, %if.then262)) #6
          to label %cleanup266 [label %if.then262], !srcloc !133

if.then262:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atmel_ssc_hw_params.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.46) #6
  br label %cleanup266

cleanup266:                                       ; preds = %if.then262, %if.end234, %do.end230, %do.end162, %do.end74, %do.end60, %cleanup44.thread, %cleanup.thread
  %retval.3 = phi i32 [ -22, %do.end60 ], [ -22, %do.end74 ], [ %call.i, %do.end230 ], [ -22, %do.end162 ], [ 0, %if.then262 ], [ %call6, %cleanup.thread ], [ %call22, %cleanup44.thread ], [ 0, %if.end234 ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ssc_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %id = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %not.cmp = xor i1 %cmp, true
  %. = zext i1 %not.cmp to i32
  %arrayidx2 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 9, i32 %.
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %mask = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mask, align 4
  %ssc_disable = getelementptr inbounds %struct.atmel_ssc_mask, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ssc_disable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ssc_disable, align 4
  %ssc = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 1
  %12 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #6, !srcloc !132
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mask, align 4
  %ssc_error = getelementptr inbounds %struct.atmel_ssc_mask, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ssc_error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ssc_error, align 4
  %20 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ssc, align 4
  %regs6 = getelementptr inbounds %struct.ssc_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs6, align 4
  %add.ptr7 = getelementptr i8, ptr %23, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %19) #6, !srcloc !132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ssc_prepare.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ssc_prepare, %if.then11)) #6
          to label %do.end [label %if.then11], !srcloc !133

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %cmp, ptr @.str.50, ptr @.str.49
  %24 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ssc, align 4
  %regs14 = getelementptr inbounds %struct.ssc_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %regs14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs14, align 4
  %add.ptr15 = getelementptr i8, ptr %27, i32 64
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !131
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atmel_ssc_prepare.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond, i32 noundef %28) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ssc_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %id = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp ne i32 %5, 0
  %. = zext i1 %cmp to i32
  %arrayidx2 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 9, i32 %.
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %cmd, label %sw.default [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge11
    i32 4, label %entry.sw.bb_crit_edge12
  ]

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge11, %entry.sw.bb_crit_edge12
  %mask = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 4
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mask, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %ssc = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 1
  %13 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %12) #6, !srcloc !132
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mask4 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 4
  %17 = ptrtoint ptr %mask4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mask4, align 4
  %ssc_disable = getelementptr inbounds %struct.atmel_ssc_mask, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ssc_disable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ssc_disable, align 4
  %ssc5 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %3, i32 1
  %21 = ptrtoint ptr %ssc5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ssc5, align 4
  %regs6 = getelementptr inbounds %struct.ssc_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %20) #6, !srcloc !132
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ssc_hw_rule_rate(ptr noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  %r = alloca %struct.snd_ratnum, align 4
  %num = alloca i32, align 4
  %den = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %ssc1 = getelementptr inbounds %struct.atmel_ssc_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ssc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ssc1, align 4
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %4 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var, align 4
  %sub.i = add i32 %5, -8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #6
  %6 = getelementptr inbounds i8, ptr %t, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %r) #6
  %8 = call ptr @memcpy(ptr %r, ptr @__const.atmel_ssc_hw_rule_rate.r, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #6
  %9 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %num, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %den) #6
  %10 = ptrtoint ptr %den to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %den, align 4
  %call2 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %daifmt = getelementptr inbounds %struct.atmel_ssc_info, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %daifmt to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %daifmt, align 4
  %13 = and i16 %12, -4096
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %13, label %if.end.cleanup_crit_edge [
    i16 12288, label %sw.bb
    i16 4096, label %sw.bb9
    i16 16384, label %sw.bb22
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %dir_mask = getelementptr inbounds %struct.atmel_ssc_info, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %dir_mask to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dir_mask, align 4
  %17 = and i16 %16, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %sw.bb.sw.bb36_crit_edge, label %land.lhs.true

sw.bb.sw.bb36_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36

land.lhs.true:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %clk_from_rk_pin = getelementptr inbounds %struct.ssc_device, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %clk_from_rk_pin to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %clk_from_rk_pin, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not = icmp eq i8 %19, 0
  %spec.select = select i1 %tobool5.not, i32 2, i32 3
  br label %sw.bb36

sw.bb9:                                           ; preds = %if.end
  %dir_mask10 = getelementptr inbounds %struct.atmel_ssc_info, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %dir_mask10 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dir_mask10, align 4
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool13.not = icmp eq i16 %22, 0
  br i1 %tobool13.not, label %sw.bb9.sw.bb36_crit_edge, label %land.lhs.true14

sw.bb9.sw.bb36_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36

land.lhs.true14:                                  ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %clk_from_rk_pin15 = getelementptr inbounds %struct.ssc_device, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %clk_from_rk_pin15 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %clk_from_rk_pin15, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool16.not = icmp eq i8 %24, 0
  %spec.select75 = select i1 %tobool16.not, i32 6, i32 2
  br label %sw.bb36

sw.bb22:                                          ; preds = %if.end
  %mck_rate = getelementptr inbounds %struct.atmel_ssc_info, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %mck_rate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mck_rate, align 4
  %div78 = lshr i32 %26, 1
  %div23 = udiv i32 %div78, %call2
  %27 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div23, ptr %r, align 4
  %call25 = call i32 @snd_interval_ratnum(ptr noundef %arrayidx.i, i32 noundef 1, ptr noundef nonnull %r, ptr noundef nonnull %num, ptr noundef nonnull %den) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25)
  %cmp26 = icmp sgt i32 %call25, -1
  br i1 %cmp26, label %land.lhs.true28, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true28:                                  ; preds = %sw.bb22
  %28 = ptrtoint ptr %den to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %den, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool29.not = icmp eq i32 %29, 0
  br i1 %tobool29.not, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true30

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true30:                                  ; preds = %land.lhs.true28
  %30 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %31)
  %cmp32 = icmp eq i32 %31, 11
  br i1 %cmp32, label %if.then34, label %land.lhs.true30.cleanup_crit_edge

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num, align 4
  %rate_num = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 9
  %34 = ptrtoint ptr %rate_num to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rate_num, align 4
  %rate_den = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 10
  %35 = ptrtoint ptr %rate_den to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %29, ptr %rate_den, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %land.lhs.true14, %sw.bb9.sw.bb36_crit_edge, %land.lhs.true, %sw.bb.sw.bb36_crit_edge
  %mck_div.077 = phi i32 [ %spec.select75, %land.lhs.true14 ], [ %spec.select, %land.lhs.true ], [ 2, %sw.bb.sw.bb36_crit_edge ], [ 2, %sw.bb9.sw.bb36_crit_edge ]
  %36 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8000, ptr %t, align 4
  %mck_rate37 = getelementptr inbounds %struct.atmel_ssc_info, ptr %1, i32 0, i32 11
  %37 = ptrtoint ptr %mck_rate37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mck_rate37, align 4
  %div38 = udiv i32 %38, %mck_div.077
  %div39 = udiv i32 %div38, %call2
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  %39 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div39, ptr %max, align 4
  %openmax = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 2
  %40 = ptrtoint ptr %openmax to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %openmax, align 4
  %bf.clear44 = and i8 %bf.load, 31
  store i8 %bf.clear44, ptr %openmax, align 4
  %call46 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb36, %if.then34, %land.lhs.true30.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call46, %sw.bb36 ], [ %call25, %if.then34 ], [ %call25, %land.lhs.true30.cleanup_crit_edge ], [ %call25, %land.lhs.true28.cleanup_crit_edge ], [ %call25, %sw.bb22.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %den) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %r) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_ratnum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ssc_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ssc = getelementptr inbounds %struct.atmel_ssc_info, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !131
  %5 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ssc, align 4
  %regs2 = getelementptr inbounds %struct.ssc_device, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs2, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 76
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !131
  %and = and i32 %9, %4
  %arrayidx = getelementptr %struct.atmel_ssc_info, ptr %dev_id, i32 0, i32 9, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %cmp6.not = icmp eq ptr %11, null
  br i1 %cmp6.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %dma_intr_handler = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %dma_intr_handler to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_intr_handler, align 4
  %cmp7.not = icmp eq ptr %13, null
  br i1 %cmp7.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %mask = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mask, align 4
  %ssc_endx = getelementptr inbounds %struct.atmel_ssc_mask, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ssc_endx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ssc_endx, align 4
  %ssc_endbuf = getelementptr inbounds %struct.atmel_ssc_mask, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %ssc_endbuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ssc_endbuf, align 4
  %or = or i32 %19, %17
  %and9 = and i32 %or, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.then10

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %substream = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %11, i32 0, i32 5
  %20 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %substream, align 4
  tail call void %13(i32 noundef %and, ptr noundef %21) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.then.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.atmel_ssc_info, ptr %dev_id, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.1, align 4
  %cmp6.not.1 = icmp eq ptr %23, null
  br i1 %cmp6.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %dma_intr_handler.1 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %dma_intr_handler.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_intr_handler.1, align 4
  %cmp7.not.1 = icmp eq ptr %25, null
  br i1 %cmp7.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %land.lhs.true.1
  %mask.1 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %mask.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mask.1, align 4
  %ssc_endx.1 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ssc_endx.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ssc_endx.1, align 4
  %ssc_endbuf.1 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %ssc_endbuf.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ssc_endbuf.1, align 4
  %or.1 = or i32 %31, %29
  %and9.1 = and i32 %or.1, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.1)
  %tobool.not.1 = icmp eq i32 %and9.1, 0
  br i1 %tobool.not.1, label %if.then.1.for.inc.1_crit_edge, label %if.then10.1

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then10.1:                                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #8
  %substream.1 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %23, i32 0, i32 5
  %32 = ptrtoint ptr %substream.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %substream.1, align 4
  tail call void %25(i32 noundef %and, ptr noundef %33) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then10.1, %if.then.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !120, !121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 900, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @atmel_ssc_set_audio._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @atmel_ssc_set_audio._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_atmel_ssc_set_audio, !7, !"__ksymtab_atmel_ssc_set_audio", i1 false, i1 false}
!7 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 911, i32 1}
!8 = !{ptr @__ksymtab_atmel_ssc_put_audio, !9, !"__ksymtab_atmel_ssc_put_audio", i1 false, i1 false}
!9 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 919, i32 1}
!10 = !{ptr @__UNIQUE_ID_author245, !11, !"__UNIQUE_ID_author245", i1 false, i1 false}
!11 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 922, i32 1}
!12 = !{ptr @__UNIQUE_ID_description246, !13, !"__UNIQUE_ID_description246", i1 false, i1 false}
!13 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 923, i32 1}
!14 = !{ptr @__UNIQUE_ID_file247, !15, !"__UNIQUE_ID_file247", i1 false, i1 false}
!15 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 924, i32 1}
!16 = !{ptr @__UNIQUE_ID_license248, !15, !"__UNIQUE_ID_license248", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 118, i32 11}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 123, i32 11}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 128, i32 11}
!23 = !{ptr @ssc_info, !24, !"ssc_info", i1 false, i1 false}
!24 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 116, i32 30}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 871, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @asoc_ssc_init._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @asoc_ssc_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 881, i32 3}
!34 = !{ptr @asoc_ssc_init._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @asoc_ssc_init._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 858, i32 11}
!38 = !{ptr @atmel_ssc_component, !39, !"atmel_ssc_component", i1 false, i1 false}
!39 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 857, i32 46}
!40 = !{ptr @atmel_ssc_dai, !41, !"atmel_ssc_dai", i1 false, i1 false}
!41 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 839, i32 34}
!42 = !{ptr @atmel_ssc_dai_ops, !43, !"atmel_ssc_dai_ops", i1 false, i1 false}
!43 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 829, i32 37}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 278, i32 2}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @atmel_ssc_startup.__UNIQUE_ID_ddebug238, !45, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 282, i32 2}
!51 = !{ptr @atmel_ssc_startup.__UNIQUE_ID_ddebug239, !50, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 305, i32 3}
!54 = !{ptr @atmel_ssc_startup._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @atmel_ssc_startup._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 84, i32 11}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 89, i32 11}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 94, i32 11}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 99, i32 11}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 104, i32 11}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 109, i32 11}
!68 = !{ptr @ssc_dma_params, !69, !"ssc_dma_params", i1 false, i1 false}
!69 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 82, i32 36}
!70 = !{ptr @pdc_tx_reg, !71, !"pdc_tx_reg", i1 false, i1 false}
!71 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 41, i32 30}
!72 = !{ptr @ssc_tx_mask, !73, !"ssc_tx_mask", i1 false, i1 false}
!73 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 58, i32 30}
!74 = !{ptr @pdc_rx_reg, !75, !"pdc_rx_reg", i1 false, i1 false}
!75 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 48, i32 30}
!76 = !{ptr @ssc_rx_mask, !77, !"ssc_rx_mask", i1 false, i1 false}
!77 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 68, i32 30}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 367, i32 2}
!80 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @atmel_ssc_shutdown.__UNIQUE_ID_ddebug240, !79, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 491, i32 4}
!84 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @atmel_ssc_hw_params._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @atmel_ssc_hw_params._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 509, i32 4}
!89 = !{ptr @atmel_ssc_hw_params._entry.29, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @atmel_ssc_hw_params._entry_ptr.31, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 546, i32 3}
!93 = !{ptr @atmel_ssc_hw_params._entry.32, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @atmel_ssc_hw_params._entry_ptr.34, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 595, i32 3}
!97 = !{ptr @atmel_ssc_hw_params._entry.35, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @atmel_ssc_hw_params._entry_ptr.37, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 658, i32 3}
!101 = !{ptr @atmel_ssc_hw_params._entry.38, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @atmel_ssc_hw_params._entry_ptr.40, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 663, i32 2}
!105 = !{ptr @atmel_ssc_hw_params.__UNIQUE_ID_ddebug241, !104, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 683, i32 4}
!108 = !{ptr @atmel_ssc_hw_params._entry.42, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @atmel_ssc_hw_params._entry_ptr.44, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 685, i32 4}
!112 = !{ptr @atmel_ssc_hw_params.__UNIQUE_ID_ddebug242, !111, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 704, i32 2}
!115 = !{ptr @atmel_ssc_hw_params.__UNIQUE_ID_ddebug243, !114, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/atmel/atmel_ssc_dai.c", i32 727, i32 2}
!118 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @atmel_ssc_prepare.__UNIQUE_ID_ddebug244, !117, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!120 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{i64 4637929}
!132 = !{i64 4637511}
!133 = !{i64 2148975006, i64 2148975011, i64 2148975024, i64 2148975068, i64 2148975102, i64 2148975123}
!134 = !{i32 0, i32 33}
!135 = !{i8 0, i8 2}
