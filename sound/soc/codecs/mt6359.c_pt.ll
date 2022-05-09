; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/mt6359.c_pt.bc'
source_filename = "../sound/soc/codecs/mt6359.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt6359_set_mtkaif_protocol\22, \22a\22\09"
module asm "\09.weak\09__crc_mt6359_set_mtkaif_protocol\09\09\09\09"
module asm "\09.long\09__crc_mt6359_set_mtkaif_protocol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt6359_set_mtkaif_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22mt6359_set_mtkaif_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_mt6359_set_mtkaif_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt6359_mtkaif_calibration_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_mt6359_mtkaif_calibration_enable\09\09\09\09"
module asm "\09.long\09__crc_mt6359_mtkaif_calibration_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt6359_mtkaif_calibration_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22mt6359_mtkaif_calibration_enable\22\09\09\09\09\09"
module asm "__kstrtabns_mt6359_mtkaif_calibration_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt6359_mtkaif_calibration_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_mt6359_mtkaif_calibration_disable\09\09\09\09"
module asm "\09.long\09__crc_mt6359_mtkaif_calibration_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt6359_mtkaif_calibration_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22mt6359_mtkaif_calibration_disable\22\09\09\09\09\09"
module asm "__kstrtabns_mt6359_mtkaif_calibration_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt6359_set_mtkaif_calibration_phase\22, \22a\22\09"
module asm "\09.weak\09__crc_mt6359_set_mtkaif_calibration_phase\09\09\09\09"
module asm "\09.long\09__crc_mt6359_set_mtkaif_calibration_phase\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt6359_set_mtkaif_calibration_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22mt6359_set_mtkaif_calibration_phase\22\09\09\09\09\09"
module asm "__kstrtabns_mt6359_set_mtkaif_calibration_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
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
%struct.mt6359_priv = type { ptr, ptr, [2 x i32], [2 x i32], [9 x i32], [7 x i32], i32, [5 x i32], i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mt6397_chip = type { ptr, ptr, %struct.notifier_block, i32, ptr, %struct.mutex, [2 x i16], [2 x i16], [2 x i16], [2 x i16], [2 x i16], i16, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
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

@__kstrtab_mt6359_set_mtkaif_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt6359_set_mtkaif_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_mt6359_set_mtkaif_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt6359_set_mtkaif_protocol to i32), ptr @__kstrtab_mt6359_set_mtkaif_protocol, ptr @__kstrtabns_mt6359_set_mtkaif_protocol }, section "___ksymtab_gpl+mt6359_set_mtkaif_protocol", align 4
@__kstrtab_mt6359_mtkaif_calibration_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt6359_mtkaif_calibration_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_mt6359_mtkaif_calibration_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt6359_mtkaif_calibration_enable to i32), ptr @__kstrtab_mt6359_mtkaif_calibration_enable, ptr @__kstrtabns_mt6359_mtkaif_calibration_enable }, section "___ksymtab_gpl+mt6359_mtkaif_calibration_enable", align 4
@__kstrtab_mt6359_mtkaif_calibration_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt6359_mtkaif_calibration_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_mt6359_mtkaif_calibration_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt6359_mtkaif_calibration_disable to i32), ptr @__kstrtab_mt6359_mtkaif_calibration_disable, ptr @__kstrtabns_mt6359_mtkaif_calibration_disable }, section "___ksymtab_gpl+mt6359_mtkaif_calibration_disable", align 4
@__kstrtab_mt6359_set_mtkaif_calibration_phase = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt6359_set_mtkaif_calibration_phase = external dso_local constant [0 x i8], align 1
@__ksymtab_mt6359_set_mtkaif_calibration_phase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt6359_set_mtkaif_calibration_phase to i32), ptr @__kstrtab_mt6359_set_mtkaif_calibration_phase, ptr @__kstrtabns_mt6359_set_mtkaif_calibration_phase }, section "___ksymtab_gpl+mt6359_set_mtkaif_calibration_phase", align 4
@__initcall__kmod_snd_soc_mt6359__318_2832_mt6359_platform_driver_init6 = internal global ptr @mt6359_platform_driver_init, section ".initcall6.init", align 4
@mt6359_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt6359_platform_driver_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt6359_platform_driver_exit = internal global ptr @mt6359_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description319 = internal constant [56 x i8] c"snd_soc_mt6359.description=MT6359 ALSA SoC codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author320 = internal constant [69 x i8] c"snd_soc_mt6359.author=KaiChieh Chuang <kaichieh.chuang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author321 = internal constant [57 x i8] c"snd_soc_mt6359.author=Eason Yen <eason.yen@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file322 = internal constant [52 x i8] c"snd_soc_mt6359.file=sound/soc/codecs/snd-soc-mt6359\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [30 x i8] c"snd_soc_mt6359.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt6359-sound\00", [19 x i8] zeroinitializer }, align 32
@mt6359_platform_driver_probe.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 2, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_mt6359\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt6359_platform_driver_probe\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/mt6359.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(), dev name %s\0A\00", [45 x i8] zeroinitializer }, align 32
@mt6359_platform_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 2815, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s() failed to parse dts\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6359_platform_driver_probe._entry_ptr = internal global ptr @mt6359_platform_driver_probe._entry, section ".printk_index", align 4
@mt6359_soc_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.25, ptr @mt6359_snd_controls, i32 6, ptr @mt6359_dapm_widgets, i32 104, ptr @mt6359_dapm_routes, i32 157, ptr @mt6359_codec_probe, ptr @mt6359_codec_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mt6359_dai_driver = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.221, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt6359_codec_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.96, i64 16380, i32 5290, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.64, i64 16380, i32 5374, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.222, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt6359_codec_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.98, i64 16380, i32 170, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.66, i64 16380, i32 5374, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt6359codec\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mediatek,dmic-mode\00", [45 x i8] zeroinitializer }, align 32
@mt6359_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 2759, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s() failed to read dmic-mode, use default (0)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt6359_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt6359_parse_dt._entry_ptr = internal global ptr @mt6359_parse_dt._entry, section ".printk_index", align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,mic-type-0\00", [44 x i8] zeroinitializer }, align 32
@mt6359_parse_dt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.3, i32 2768, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s() failed to read mic-type-0, use default (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@mt6359_parse_dt._entry_ptr.16 = internal global ptr @mt6359_parse_dt._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,mic-type-1\00", [44 x i8] zeroinitializer }, align 32
@mt6359_parse_dt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.3, i32 2777, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s() failed to read mic-type-1, use default (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@mt6359_parse_dt._entry_ptr.20 = internal global ptr @mt6359_parse_dt._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,mic-type-2\00", [44 x i8] zeroinitializer }, align 32
@mt6359_parse_dt._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.11, ptr @.str.3, i32 2786, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s() failed to read mic-type-2, use default (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@mt6359_parse_dt._entry_ptr.24 = internal global ptr @mt6359_parse_dt._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk-codec-mt6359\00", [47 x i8] zeroinitializer }, align 32
@mt6359_snd_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @mt6359_put_volsw, %union.anon.94 { ptr @hp_playback_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @mt6359_put_volsw, %union.anon.94 { ptr @playback_tlv }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @mt6359_put_volsw, %union.anon.94 { ptr @playback_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @mt6359_put_volsw, %union.anon.94 { ptr @capture_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @mt6359_put_volsw, %union.anon.94 { ptr @capture_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @mt6359_put_volsw, %union.anon.94 { ptr @capture_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }], [64 x i8] zeroinitializer }, align 32
@mt6359_dapm_routes = internal constant { [157 x %struct.snd_soc_dapm_route], [2044 x i8] } { [157 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.149, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.149, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.149, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.181, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.182, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.183, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.184, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.181, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.182, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.183, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.184, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.181, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.182, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.183, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.184, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.186, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.186, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.187, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.187, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.186, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.187, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr @.str.189, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr @.str.190, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr @.str.191, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr @.str.192, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.189, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.190, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.191, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.192, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr @.str.189, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr @.str.190, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr @.str.191, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr @.str.192, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr @.str.195, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr @.str.198, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.200, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.100, ptr @mt_dcc_clk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.100, ptr @mt_dcc_clk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.100, ptr @mt_dcc_clk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.135, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.136, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.135, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.137, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.138, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.137, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.138, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr @.str.149, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr @.str.150, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr @.str.149, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.170, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.159, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.159, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.161, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.161, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.158, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.158, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.166, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }], [2044 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headset Volume\00", [17 x i8] zeroinitializer }, align 32
@hp_playback_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2200, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 30, i32 30, i32 9740, i32 9740, i32 0, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Lineout Volume\00", [17 x i8] zeroinitializer }, align 32
@playback_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1000, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 9738, i32 9738, i32 0, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Handset Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 9742, i32 9742, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PGA1 Volume\00", [20 x i8] zeroinitializer }, align 32
@capture_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4, i32 4, i32 9480, i32 9480, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PGA2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4, i32 4, i32 9482, i32 9482, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PGA3 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4, i32 4, i32 9484, i32 9484, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@mt6359_put_volsw.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt6359_put_volsw\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(), name %s, reg(0x%x) = 0x%x, set index = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLK_BUF\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AUDGLB\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CLKSQ Audio\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AUDNCP_CK\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ZCD13M_CK\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AUD_CK\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AUDIF_CK\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vaud18\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AUDIO_TOP_AFE_CTL\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AUDIO_TOP_DAC_CTL\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AUDIO_TOP_ADC_CTL\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AUDIO_TOP_ADDA6_ADC_CTL\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AUDIO_TOP_I2S_DL\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AUDIO_TOP_PWR_CLK\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AUDIO_TOP_PDN_AFE_TESTMODEL\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AUDIO_TOP_PDN_RESERVED\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SDM\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDM_3RD\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SDM_FIFO_CLK\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NCP\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DL Digital Clock\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DL Digital Clock CH_1_2\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DL Digital Clock CH_3\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AFE_ON\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF_RX\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF2_RX\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF2 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AFE_DL_SRC\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DL Power Supply\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ESD_RESIST\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LDO\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LDO_REMOTE\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NV_REGULATOR\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IBIST\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC In Mux\00", [21 x i8] zeroinitializer }, align 32
@dac_in_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dac_in_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAC_3RD\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP Mux\00", [25 x i8] zeroinitializer }, align 32
@hp_in_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @hp_in_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP_Supply\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HP_PULL_DOWN\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HP_MUTE\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HP_DAMP\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RCV Mux\00", [24 x i8] zeroinitializer }, align 32
@rcv_in_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rcv_in_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LOL Mux\00", [24 x i8] zeroinitializer }, align 32
@lo_in_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @lo_in_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Receiver\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headphone L\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headphone R\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Headphone L Ext Spk Amp\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Headphone R Ext Spk Amp\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LINEOUT L\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SGEN DL Enable\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SGEN MUTE\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SGEN DL SRC\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SGEN DL\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1TX\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF2TX\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF2 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC_CLKGEN\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DCC_CLK\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIF Out Mux\00", [20 x i8] zeroinitializer }, align 32
@aif_out_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @aif_out_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF2 Out Mux\00", [19 x i8] zeroinitializer }, align 32
@aif2_out_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @aif2_out_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIFTX_Supply\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MTKAIF_TX\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL_SRC\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL_SRC_DMIC\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UL_SRC_34\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"UL_SRC_34_DMIC\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MISO0_MUX\00", [22 x i8] zeroinitializer }, align 32
@miso0_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @miso0_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MISO1_MUX\00", [22 x i8] zeroinitializer }, align 32
@miso1_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @miso1_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MISO2_MUX\00", [22 x i8] zeroinitializer }, align 32
@miso2_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @miso2_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UL_SRC_MUX\00", [21 x i8] zeroinitializer }, align 32
@ul_src_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.185, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @ul_src_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL2_SRC_MUX\00", [20 x i8] zeroinitializer }, align 32
@ul2_src_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.185, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @ul2_src_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC0_MUX\00", [22 x i8] zeroinitializer }, align 32
@dmic0_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dmic0_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC1_MUX\00", [22 x i8] zeroinitializer }, align 32
@dmic1_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dmic1_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC2_MUX\00", [22 x i8] zeroinitializer }, align 32
@dmic2_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dmic2_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC_L_Mux\00", [22 x i8] zeroinitializer }, align 32
@adc_left_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @adc_left_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC_R_Mux\00", [22 x i8] zeroinitializer }, align 32
@adc_right_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.197, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @adc_right_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC_3_Mux\00", [22 x i8] zeroinitializer }, align 32
@adc_3_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.199, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @adc_3_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC_L\00", [26 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC_R\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC_3\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC_L_EN\00", [23 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC_R_EN\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC_3_EN\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PGA_L_Mux\00", [22 x i8] zeroinitializer }, align 32
@pga_left_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pga_left_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PGA_R_Mux\00", [22 x i8] zeroinitializer }, align 32
@pga_right_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.209, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pga_right_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PGA_3_Mux\00", [22 x i8] zeroinitializer }, align 32
@pga_3_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.211, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pga_3_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PGA_L\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PGA_R\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PGA_3\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PGA_L_EN\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PGA_R_EN\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PGA_3_EN\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN0\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN1\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN2\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN3\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN0_DMIC\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN2_DMIC\00", [22 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN3_DMIC\00", [22 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIC_BIAS_0\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIC_BIAS_1\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIC_BIAS_2\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC_0\00", [25 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC_1\00", [25 x i8] zeroinitializer }, align 32
@mt6359_dapm_widgets = internal constant { [104 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [4672 x i8] } { [104 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1960, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9634, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9526, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 1, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8972, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 5, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8972, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 5, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8972, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 6, ptr null, i16 6, ptr @mt_delay_250_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8972, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 5, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 21, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @dapm_regulator_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9110, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 11, ptr null, i16 6, ptr @mt_delay_250_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9110, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 10, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9110, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 10, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9110, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 10, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9110, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 10, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9110, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 10, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9110, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 10, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9110, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 10, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 13, ptr null, i16 9, ptr @mt_sdm_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 13, ptr null, i16 9, ptr @mt_sdm_3rd_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9118, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 12, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9438, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 14, ptr null, i16 1, ptr @mt_ncp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9096, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 15, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.63, ptr @.str.64, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.65, ptr @.str.66, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9098, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 16, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 17, ptr null, i16 9, ptr @mt_esd_resist_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9636, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 21, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9636, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 20, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9636, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 22, ptr null, i16 2, ptr @mt_delay_100_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9632, i8 8, i32 1, i32 0, i32 1, i8 0, i8 0, i32 24, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dac_in_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @mt_hp_event, i32 1, ptr @hp_in_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 9, ptr @mt_hp_pull_down_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 19, ptr null, i16 9, ptr @mt_hp_mute_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 18, ptr null, i16 8, ptr @mt_hp_damp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @mt_rcv_event, i32 1, ptr @rcv_in_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @mt_lo_event, i32 1, ptr @lo_in_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9176, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9176, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @mt_sgen_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9098, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.95, ptr @.str.96, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.97, ptr @.str.98, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 4, ptr null, i16 6, ptr @mt_adc_clk_gen_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 7, ptr null, i16 9, ptr @mt_dcc_clk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aif_out_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aif2_out_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 27, ptr null, i16 9, ptr @mt_mtkaif_tx_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9102, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 29, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 28, ptr null, i16 9, ptr @mt_ul_src_dmic_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9106, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 29, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 28, ptr null, i16 9, ptr @mt_ul_src_34_dmic_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @miso0_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @miso1_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @miso2_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @ul_src_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @ul2_src_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dmic0_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dmic1_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dmic2_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adc_left_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adc_right_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adc_3_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9480, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 26, ptr null, i16 2, ptr @mt_adc_l_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9482, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 26, ptr null, i16 2, ptr @mt_adc_r_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9484, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 26, ptr null, i16 2, ptr @mt_adc_3_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 64, ptr @mt_pga_l_mux_event, i32 1, ptr @pga_left_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 64, ptr @mt_pga_r_mux_event, i32 1, ptr @pga_right_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 64, ptr @mt_pga_3_mux_event, i32 1, ptr @pga_3_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9480, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 25, ptr null, i16 11, ptr @mt_pga_l_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9482, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 25, ptr null, i16 11, ptr @mt_pga_r_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9484, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 25, ptr null, i16 11, ptr @mt_pga_3_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9510, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 8, ptr null, i16 9, ptr @mt_mic_bias_0_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9512, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 8, ptr null, i16 1, ptr @mt_mic_bias_1_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9514, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 8, ptr null, i16 9, ptr @mt_mic_bias_2_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9506, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 9, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9508, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 9, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [4672 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Select\00", [21 x i8] zeroinitializer }, align 32
@dac_in_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9108, i8 0, i8 0, i32 2, i32 1, ptr @dac_in_mux_map, ptr @dac_in_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dac_in_mux_map = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.149, ptr @.str.150], [24 x i8] zeroinitializer }, align 32
@dac_in_mux_map_value = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Normal Path\00", [20 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sgen\00", [27 x i8] zeroinitializer }, align 32
@mt_hp_event.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.151, ptr @.str.3, ptr @.str.152, i8 0, i8 -16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt_hp_event\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(), event 0x%x, dev_counter[DEV_HP] %d, mux %u\0A\00", [46 x i8] zeroinitializer }, align 32
@headset_volume_ramp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.3, i32 324, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(), volume index is not valid, from %d, to %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"headset_volume_ramp\00", [44 x i8] zeroinitializer }, align 32
@headset_volume_ramp._entry_ptr = internal global ptr @headset_volume_ramp._entry, section ".printk_index", align 4
@headset_volume_ramp.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.154, ptr @.str.3, ptr @.str.155, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(), from %d, to %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP Select\00", [22 x i8] zeroinitializer }, align 32
@hp_in_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 5, i32 7, ptr @hp_in_mux_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hp_in_mux_map = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161], [44 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Open\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LoudSPK Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Audio Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Test Mode\00", [22 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HP Impedance\00", [19 x i8] zeroinitializer }, align 32
@mt_rcv_event.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.162, ptr @.str.3, ptr @.str.163, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt_rcv_event\00", [19 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(), event 0x%x, mux %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RCV Select\00", [21 x i8] zeroinitializer }, align 32
@rcv_in_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 4, i32 3, ptr @rcv_in_mux_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rcv_in_mux_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.157, ptr @.str.165, ptr @.str.166, ptr @.str.160], [16 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mute\00", [27 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Voice Playback\00", [17 x i8] zeroinitializer }, align 32
@mt_lo_event.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.167, ptr @.str.3, ptr @.str.163, i8 1, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt_lo_event\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LO Select\00", [22 x i8] zeroinitializer }, align 32
@lo_in_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 4, i32 3, ptr @lo_in_mux_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@lo_in_mux_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.157, ptr @.str.169, ptr @.str.170, ptr @.str.160], [16 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Playback_L_DAC\00", [17 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@mt_sgen_event.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.171, ptr @.str.3, ptr @.str.172, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt_sgen_event\00", [18 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(), event = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@mt_adc_clk_gen_event.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.173, ptr @.str.3, ptr @.str.174, i8 1, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt_adc_clk_gen_event\00", [43 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(), event 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@mt_dcc_clk_event.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.175, ptr @.str.3, ptr @.str.174, i8 1, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt_dcc_clk_event\00", [47 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIF Out Select\00", [17 x i8] zeroinitializer }, align 32
@aif_out_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9108, i8 1, i8 1, i32 2, i32 1, ptr @dac_in_mux_map, ptr @dac_in_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aif2_out_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9108, i8 3, i8 3, i32 2, i32 1, ptr @dac_in_mux_map, ptr @dac_in_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mt_mtkaif_tx_event.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.177, ptr @.str.3, ptr @.str.172, i8 1, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt_mtkaif_tx_event\00", [45 x i8] zeroinitializer }, align 32
@mt_ul_src_dmic_event.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.178, ptr @.str.3, ptr @.str.172, i8 1, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt_ul_src_dmic_event\00", [43 x i8] zeroinitializer }, align 32
@mt_ul_src_34_dmic_event.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.179, ptr @.str.3, ptr @.str.172, i8 1, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt_ul_src_34_dmic_event\00", [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MISO_MUX Select\00", [16 x i8] zeroinitializer }, align 32
@miso0_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9210, i8 0, i8 0, i32 4, i32 3, ptr @miso_mux_map, ptr @miso_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@miso_mux_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184], [16 x i8] zeroinitializer }, align 32
@miso_mux_map_value = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL1_CH1\00", [24 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL1_CH2\00", [24 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL2_CH1\00", [24 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL2_CH2\00", [24 x i8] zeroinitializer }, align 32
@miso1_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9210, i8 2, i8 2, i32 4, i32 3, ptr @miso_mux_map, ptr @miso_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@miso2_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9210, i8 8, i8 8, i32 4, i32 3, ptr @miso_mux_map, ptr @miso_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"UL_SRC_MUX Select\00", [46 x i8] zeroinitializer }, align 32
@ul_src_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9102, i8 1, i8 1, i32 2, i32 1, ptr @ul_src_mux_map, ptr @ul_src_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ul_src_mux_map = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.186, ptr @.str.187], [24 x i8] zeroinitializer }, align 32
@ul_src_mux_map_value = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@ul2_src_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9106, i8 1, i8 1, i32 2, i32 1, ptr @ul_src_mux_map, ptr @ul_src_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DMIC_MUX Select\00", [16 x i8] zeroinitializer }, align 32
@dmic0_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9206, i8 4, i8 4, i32 4, i32 3, ptr @dmic_mux_map, ptr @dmic_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dmic_mux_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192], [16 x i8] zeroinitializer }, align 32
@dmic_mux_map_value = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMIC_DATA0\00", [21 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC_DATA1_L\00", [19 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DMIC_DATA1_L_1\00", [17 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC_DATA1_R\00", [19 x i8] zeroinitializer }, align 32
@dmic1_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9206, i8 0, i8 0, i32 4, i32 3, ptr @dmic_mux_map, ptr @dmic_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dmic2_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9206, i8 2, i8 2, i32 4, i32 3, ptr @dmic_mux_map, ptr @dmic_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC L Select\00", [19 x i8] zeroinitializer }, align 32
@adc_left_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9480, i8 13, i8 13, i32 4, i32 3, ptr @adc_left_mux_map, ptr @adc_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_left_mux_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.194, ptr @.str.135, ptr @.str.195, ptr @.str.196], [16 x i8] zeroinitializer }, align 32
@adc_mux_map_value = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Idle\00", [27 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left Preamplifier\00", [46 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Idle_1\00", [25 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC R Select\00", [19 x i8] zeroinitializer }, align 32
@adc_right_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9482, i8 13, i8 13, i32 4, i32 3, ptr @adc_right_mux_map, ptr @adc_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_right_mux_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.194, ptr @.str.135, ptr @.str.198, ptr @.str.196], [16 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right Preamplifier\00", [45 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC 3 Select\00", [19 x i8] zeroinitializer }, align 32
@adc_3_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9484, i8 13, i8 13, i32 4, i32 3, ptr @adc_3_mux_map, ptr @adc_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_3_mux_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.194, ptr @.str.135, ptr @.str.200, ptr @.str.196], [16 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Preamplifier\00", [19 x i8] zeroinitializer }, align 32
@mt_adc_l_event.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.201, ptr @.str.3, ptr @.str.172, i8 1, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.201 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt_adc_l_event\00", [17 x i8] zeroinitializer }, align 32
@mt_adc_r_event.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.202, ptr @.str.3, ptr @.str.172, i8 1, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.202 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt_adc_r_event\00", [17 x i8] zeroinitializer }, align 32
@mt_adc_3_event.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.203, ptr @.str.3, ptr @.str.172, i8 1, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.203 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt_adc_3_event\00", [17 x i8] zeroinitializer }, align 32
@mt_pga_l_mux_event.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.204, ptr @.str.3, ptr @.str.205, i8 1, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.204 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt_pga_l_mux_event\00", [45 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(), mux %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PGA L Select\00", [19 x i8] zeroinitializer }, align 32
@pga_left_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9480, i8 6, i8 6, i32 3, i32 3, ptr @pga_l_mux_map, ptr @pga_l_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@pga_l_mux_map = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.207, ptr @.str.135, ptr @.str.136], [20 x i8] zeroinitializer }, align 32
@pga_l_mux_map_value = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@mt_pga_r_mux_event.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.208, ptr @.str.3, ptr @.str.205, i8 1, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.208 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt_pga_r_mux_event\00", [45 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PGA R Select\00", [19 x i8] zeroinitializer }, align 32
@pga_right_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9482, i8 6, i8 6, i32 4, i32 3, ptr @pga_r_mux_map, ptr @pga_r_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@pga_r_mux_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.207, ptr @.str.137, ptr @.str.138, ptr @.str.135], [16 x i8] zeroinitializer }, align 32
@pga_r_mux_map_value = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@mt_pga_3_mux_event.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.210, ptr @.str.3, ptr @.str.205, i8 1, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.210 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt_pga_3_mux_event\00", [45 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PGA 3 Select\00", [19 x i8] zeroinitializer }, align 32
@pga_3_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9484, i8 6, i8 6, i32 3, i32 3, ptr @pga_3_mux_map, ptr @pga_3_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@pga_3_mux_map = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.207, ptr @.str.138, ptr @.str.137], [20 x i8] zeroinitializer }, align 32
@pga_3_mux_map_value = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@mt_pga_l_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.3, i32 1580, ptr @.str.214, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(), invalid pga mux %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt_pga_l_event\00", [17 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mt_pga_l_event._entry_ptr = internal global ptr @mt_pga_l_event._entry, section ".printk_index", align 4
@mt_pga_r_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.215, ptr @.str.3, i32 1639, ptr @.str.214, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt_pga_r_event\00", [17 x i8] zeroinitializer }, align 32
@mt_pga_r_event._entry_ptr = internal global ptr @mt_pga_r_event._entry, section ".printk_index", align 4
@mt_pga_3_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.216, ptr @.str.3, i32 1695, ptr @.str.214, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt_pga_3_event\00", [17 x i8] zeroinitializer }, align 32
@mt_pga_3_event._entry_ptr = internal global ptr @mt_pga_3_event._entry, section ".printk_index", align 4
@mt_mic_bias_0_event.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.217, ptr @.str.3, ptr @.str.218, i8 1, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.217 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt_mic_bias_0_event\00", [44 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(), event 0x%x, mic_type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mt_mic_bias_1_event.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.219, ptr @.str.3, ptr @.str.218, i8 1, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.219 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt_mic_bias_1_event\00", [44 x i8] zeroinitializer }, align 32
@mt_mic_bias_2_event.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.220, ptr @.str.3, ptr @.str.218, i8 1, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.220 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt_mic_bias_2_event\00", [44 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6359-snd-codec-aif1\00", [42 x i8] zeroinitializer }, align 32
@mt6359_codec_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt6359_codec_dai_startup, ptr @mt6359_codec_dai_shutdown, ptr @mt6359_codec_dai_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6359-snd-codec-aif2\00", [42 x i8] zeroinitializer }, align 32
@mt6359_codec_dai_startup.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.223, ptr @.str.3, ptr @.str.224, i8 2, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.223 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt6359_codec_dai_startup\00", [39 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s stream %d\0A\00", [18 x i8] zeroinitializer }, align 32
@mt6359_codec_dai_shutdown.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.225, ptr @.str.3, ptr @.str.224, i8 2, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.225 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt6359_codec_dai_shutdown\00", [38 x i8] zeroinitializer }, align 32
@mt6359_codec_dai_hw_params.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.226, ptr @.str.3, ptr @.str.227, i8 2, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.226 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt6359_codec_dai_hw_params\00", [37 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s(), id %d, substream->stream %d, rate %d, number %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.228 = internal global [8 x i64] [i64 6, i64 32, i64 9480, i64 9482, i64 9484, i64 9738, i64 9740, i64 9742]
@__sancov_gen_cov_switch_values.229 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.230 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.232 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.233 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.234 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.235 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.236 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.242 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.243 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.244 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.246 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.247 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.248 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.249 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.251 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.254 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.255 = private unnamed_addr constant [23 x i8] c"mt6359_platform_driver\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2825, i32 31 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2827, i32 11 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2799, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2815, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [28 x i8] c"mt6359_soc_component_driver\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2732, i32 46 }
@___asan_gen_.288 = private unnamed_addr constant [18 x i8] c"mt6359_dai_driver\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2586, i32 34 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2750, i32 50 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2754, i32 33 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2757, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2763, i32 33 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2766, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2772, i32 33 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2775, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2781, i32 33 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2784, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2733, i32 10 }
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c"mt6359_snd_controls\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2707, i32 38 }
@___asan_gen_.342 = private unnamed_addr constant [19 x i8] c"mt6359_dapm_routes\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2313, i32 40 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2709, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [16 x i8] c"hp_playback_tlv\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2703, i32 14 }
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2713, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [13 x i8] c"playback_tlv\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2704, i32 14 }
@___asan_gen_.358 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2716, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2721, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [12 x i8] c"capture_tlv\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2705, i32 14 }
@___asan_gen_.369 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2724, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2727, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 406, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1943, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1946, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1949, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1952, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1955, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1958, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1962, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1965, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1968, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1973, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1976, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1979, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1982, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1985, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1988, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1991, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1995, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1999, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2005, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2010, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2016, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2018, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2020, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2024, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2029, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2032, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2035, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2041, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2044, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2049, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2053, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2057, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2061, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2067, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [19 x i8] c"dac_in_mux_control\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 470, i32 38 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2069, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2071, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2073, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2076, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant [18 x i8] c"hp_in_mux_control\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 438, i32 38 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2081, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2083, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2088, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2093, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2100, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant [19 x i8] c"rcv_in_mux_control\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 451, i32 38 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2106, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant [18 x i8] c"lo_in_mux_control\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 421, i32 38 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2112, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2113, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2114, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2115, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2116, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2117, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2120, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2122, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2126, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2129, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2132, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2134, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2137, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2142, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2148, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant [20 x i8] c"aif_out_mux_control\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 481, i32 38 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2151, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant [21 x i8] c"aif2_out_mux_control\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 491, i32 38 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2154, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2156, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2161, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2166, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2171, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2176, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2181, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant [18 x i8] c"miso0_mux_control\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 545, i32 38 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2182, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant [18 x i8] c"miso1_mux_control\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 555, i32 38 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2183, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant [18 x i8] c"miso2_mux_control\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 565, i32 38 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2185, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant [19 x i8] c"ul_src_mux_control\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 511, i32 38 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2187, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant [20 x i8] c"ul2_src_mux_control\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 521, i32 38 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2190, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant [18 x i8] c"dmic0_mux_control\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 589, i32 38 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2191, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant [18 x i8] c"dmic1_mux_control\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 600, i32 38 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2192, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant [18 x i8] c"dmic2_mux_control\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 611, i32 38 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2194, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant [21 x i8] c"adc_left_mux_control\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 633, i32 38 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2196, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant [22 x i8] c"adc_right_mux_control\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 648, i32 38 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2198, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant [18 x i8] c"adc_3_mux_control\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 663, i32 38 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2201, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2202, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2203, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2205, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2210, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2215, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2221, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant [21 x i8] c"pga_left_mux_control\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 683, i32 38 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2225, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant [22 x i8] c"pga_right_mux_control\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 704, i32 38 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2229, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant [18 x i8] c"pga_3_mux_control\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 724, i32 38 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2234, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2235, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2236, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2238, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2245, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2252, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2261, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2262, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2263, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2264, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2266, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2267, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2268, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2271, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2276, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2281, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2288, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2292, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant [20 x i8] c"mt6359_dapm_widgets\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1941, i32 41 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 471, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant [20 x i8] c"dac_in_mux_map_enum\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 463, i32 8 }
@___asan_gen_.777 = private unnamed_addr constant [15 x i8] c"dac_in_mux_map\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 455, i32 27 }
@___asan_gen_.780 = private unnamed_addr constant [21 x i8] c"dac_in_mux_map_value\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 459, i32 12 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 456, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 456, i32 17 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 962, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 323, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 328, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 439, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant [19 x i8] c"hp_in_mux_map_enum\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 433, i32 8 }
@___asan_gen_.813 = private unnamed_addr constant [14 x i8] c"hp_in_mux_map\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 425, i32 27 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 426, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 427, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 428, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 429, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 430, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 990, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 452, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant [20 x i8] c"rcv_in_mux_map_enum\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 446, i32 8 }
@___asan_gen_.843 = private unnamed_addr constant [15 x i8] c"rcv_in_mux_map\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 442, i32 27 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 443, i32 10 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 443, i32 18 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1074, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 422, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant [19 x i8] c"lo_in_mux_map_enum\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 419, i32 8 }
@___asan_gen_.861 = private unnamed_addr constant [14 x i8] c"lo_in_mux_map\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 415, i32 27 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 416, i32 10 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 416, i32 28 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 734, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1160, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1200, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 482, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant [21 x i8] c"aif_out_mux_map_enum\00", align 1
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 474, i32 8 }
@___asan_gen_.891 = private unnamed_addr constant [22 x i8] c"aif2_out_mux_map_enum\00", align 1
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 484, i32 8 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1373, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1396, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1429, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 546, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant [19 x i8] c"miso0_mux_map_enum\00", align 1
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 538, i32 8 }
@___asan_gen_.909 = private unnamed_addr constant [13 x i8] c"miso_mux_map\00", align 1
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 524, i32 27 }
@___asan_gen_.912 = private unnamed_addr constant [19 x i8] c"miso_mux_map_value\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 531, i32 12 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 525, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 526, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 527, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 528, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant [19 x i8] c"miso1_mux_map_enum\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 548, i32 8 }
@___asan_gen_.930 = private unnamed_addr constant [19 x i8] c"miso2_mux_map_enum\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 558, i32 8 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 512, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant [20 x i8] c"ul_src_mux_map_enum\00", align 1
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 504, i32 8 }
@___asan_gen_.939 = private unnamed_addr constant [15 x i8] c"ul_src_mux_map\00", align 1
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 494, i32 27 }
@___asan_gen_.942 = private unnamed_addr constant [21 x i8] c"ul_src_mux_map_value\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 499, i32 12 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 495, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 496, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant [21 x i8] c"ul2_src_mux_map_enum\00", align 1
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 514, i32 8 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 590, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant [19 x i8] c"dmic0_mux_map_enum\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 582, i32 8 }
@___asan_gen_.960 = private unnamed_addr constant [13 x i8] c"dmic_mux_map\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 568, i32 27 }
@___asan_gen_.963 = private unnamed_addr constant [19 x i8] c"dmic_mux_map_value\00", align 1
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 575, i32 12 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 569, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 570, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 571, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 572, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant [19 x i8] c"dmic1_mux_map_enum\00", align 1
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 593, i32 8 }
@___asan_gen_.981 = private unnamed_addr constant [19 x i8] c"dmic2_mux_map_enum\00", align 1
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 604, i32 8 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 634, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant [22 x i8] c"adc_left_mux_map_enum\00", align 1
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 626, i32 8 }
@___asan_gen_.990 = private unnamed_addr constant [17 x i8] c"adc_left_mux_map\00", align 1
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 615, i32 27 }
@___asan_gen_.993 = private unnamed_addr constant [18 x i8] c"adc_mux_map_value\00", align 1
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 619, i32 12 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 616, i32 2 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 616, i32 18 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 616, i32 39 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 649, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant [23 x i8] c"adc_right_mux_map_enum\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 641, i32 8 }
@___asan_gen_.1011 = private unnamed_addr constant [18 x i8] c"adc_right_mux_map\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 637, i32 27 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 638, i32 18 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 664, i32 2 }
@___asan_gen_.1020 = private unnamed_addr constant [19 x i8] c"adc_3_mux_map_enum\00", align 1
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 656, i32 8 }
@___asan_gen_.1023 = private unnamed_addr constant [14 x i8] c"adc_3_mux_map\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 652, i32 27 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 653, i32 18 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1457, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1481, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1505, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1530, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 684, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant [22 x i8] c"pga_left_mux_map_enum\00", align 1
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 676, i32 8 }
@___asan_gen_.1050 = private unnamed_addr constant [14 x i8] c"pga_l_mux_map\00", align 1
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 666, i32 27 }
@___asan_gen_.1053 = private unnamed_addr constant [20 x i8] c"pga_l_mux_map_value\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 670, i32 12 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 667, i32 2 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1543, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 705, i32 2 }
@___asan_gen_.1065 = private unnamed_addr constant [23 x i8] c"pga_right_mux_map_enum\00", align 1
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 697, i32 8 }
@___asan_gen_.1068 = private unnamed_addr constant [14 x i8] c"pga_r_mux_map\00", align 1
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 686, i32 27 }
@___asan_gen_.1071 = private unnamed_addr constant [20 x i8] c"pga_r_mux_map_value\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 690, i32 12 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1556, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 725, i32 2 }
@___asan_gen_.1080 = private unnamed_addr constant [19 x i8] c"pga_3_mux_map_enum\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 717, i32 8 }
@___asan_gen_.1083 = private unnamed_addr constant [14 x i8] c"pga_3_mux_map\00", align 1
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 707, i32 27 }
@___asan_gen_.1086 = private unnamed_addr constant [20 x i8] c"pga_3_mux_map_value\00", align 1
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 711, i32 12 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1579, i32 3 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1638, i32 3 }
@___asan_gen_.1107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1694, i32 3 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1236, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1290, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 1323, i32 2 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2589, i32 11 }
@___asan_gen_.1128 = private unnamed_addr constant [21 x i8] c"mt6359_codec_dai_ops\00", align 1
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2573, i32 37 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2615, i32 11 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2551, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2566, i32 2 }
@___asan_gen_.1146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1147 = private constant [29 x i8] c"../sound/soc/codecs/mt6359.c\00", align 1
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1147, i32 2534, i32 2 }
@llvm.compiler.used = appending global [323 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__exitcall_mt6359_platform_driver_exit, ptr @__initcall__kmod_snd_soc_mt6359__318_2832_mt6359_platform_driver_init6, ptr @__ksymtab_mt6359_mtkaif_calibration_disable, ptr @__ksymtab_mt6359_mtkaif_calibration_enable, ptr @__ksymtab_mt6359_set_mtkaif_calibration_phase, ptr @__ksymtab_mt6359_set_mtkaif_protocol, ptr @headset_volume_ramp._entry, ptr @headset_volume_ramp._entry_ptr, ptr @mt6359_parse_dt._entry, ptr @mt6359_parse_dt._entry.14, ptr @mt6359_parse_dt._entry.18, ptr @mt6359_parse_dt._entry.22, ptr @mt6359_parse_dt._entry_ptr, ptr @mt6359_parse_dt._entry_ptr.16, ptr @mt6359_parse_dt._entry_ptr.20, ptr @mt6359_parse_dt._entry_ptr.24, ptr @mt6359_platform_driver_exit, ptr @mt6359_platform_driver_probe._entry, ptr @mt6359_platform_driver_probe._entry_ptr, ptr @mt_pga_3_event._entry, ptr @mt_pga_3_event._entry_ptr, ptr @mt_pga_l_event._entry, ptr @mt_pga_l_event._entry_ptr, ptr @mt_pga_r_event._entry, ptr @mt_pga_r_event._entry_ptr, ptr @mt6359_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mt6359_soc_component_driver, ptr @mt6359_dai_driver, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @mt6359_snd_controls, ptr @mt6359_dapm_routes, ptr @.str.26, ptr @hp_playback_tlv, ptr @.compoundliteral, ptr @.str.27, ptr @playback_tlv, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @capture_tlv, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @dac_in_mux_control, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @hp_in_mux_control, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @rcv_in_mux_control, ptr @.str.84, ptr @lo_in_mux_control, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @aif_out_mux_control, ptr @.str.102, ptr @aif2_out_mux_control, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @miso0_mux_control, ptr @.str.110, ptr @miso1_mux_control, ptr @.str.111, ptr @miso2_mux_control, ptr @.str.112, ptr @ul_src_mux_control, ptr @.str.113, ptr @ul2_src_mux_control, ptr @.str.114, ptr @dmic0_mux_control, ptr @.str.115, ptr @dmic1_mux_control, ptr @.str.116, ptr @dmic2_mux_control, ptr @.str.117, ptr @adc_left_mux_control, ptr @.str.118, ptr @adc_right_mux_control, ptr @.str.119, ptr @adc_3_mux_control, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @pga_left_mux_control, ptr @.str.127, ptr @pga_right_mux_control, ptr @.str.128, ptr @pga_3_mux_control, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @mt6359_dapm_widgets, ptr @.str.148, ptr @dac_in_mux_map_enum, ptr @dac_in_mux_map, ptr @dac_in_mux_map_value, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @hp_in_mux_map_enum, ptr @hp_in_mux_map, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @rcv_in_mux_map_enum, ptr @rcv_in_mux_map, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @lo_in_mux_map_enum, ptr @lo_in_mux_map, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @aif_out_mux_map_enum, ptr @aif2_out_mux_map_enum, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @miso0_mux_map_enum, ptr @miso_mux_map, ptr @miso_mux_map_value, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @miso1_mux_map_enum, ptr @miso2_mux_map_enum, ptr @.str.185, ptr @ul_src_mux_map_enum, ptr @ul_src_mux_map, ptr @ul_src_mux_map_value, ptr @.str.186, ptr @.str.187, ptr @ul2_src_mux_map_enum, ptr @.str.188, ptr @dmic0_mux_map_enum, ptr @dmic_mux_map, ptr @dmic_mux_map_value, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @dmic1_mux_map_enum, ptr @dmic2_mux_map_enum, ptr @.str.193, ptr @adc_left_mux_map_enum, ptr @adc_left_mux_map, ptr @adc_mux_map_value, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @adc_right_mux_map_enum, ptr @adc_right_mux_map, ptr @.str.198, ptr @.str.199, ptr @adc_3_mux_map_enum, ptr @adc_3_mux_map, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @pga_left_mux_map_enum, ptr @pga_l_mux_map, ptr @pga_l_mux_map_value, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @pga_right_mux_map_enum, ptr @pga_r_mux_map, ptr @pga_r_mux_map_value, ptr @.str.210, ptr @.str.211, ptr @pga_3_mux_map_enum, ptr @pga_3_mux_map, ptr @pga_3_mux_map_value, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @mt6359_codec_dai_ops, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227], section "llvm.metadata"
@0 = internal global [302 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_platform_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_soc_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_dai_driver to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_parse_dt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_parse_dt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_parse_dt._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_snd_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_dapm_routes to i32), i32 8164, i32 10208, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_playback_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_in_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_in_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcv_in_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_in_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif_out_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif2_out_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miso0_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miso1_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miso2_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul_src_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul2_src_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic0_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic1_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic2_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_left_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_right_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_3_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_left_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_right_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_3_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_dapm_widgets to i32), i32 18720, i32 23392, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_in_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_in_mux_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_in_mux_map_value to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @headset_volume_ramp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_in_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_in_mux_map to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcv_in_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcv_in_mux_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_in_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_in_mux_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif_out_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif2_out_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miso0_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miso_mux_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miso_mux_map_value to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miso1_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miso2_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul_src_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul_src_mux_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul_src_mux_map_value to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul2_src_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic0_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_mux_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_mux_map_value to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic1_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic2_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_left_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_left_mux_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_mux_map_value to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_right_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_right_mux_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_3_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_3_mux_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_left_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_l_mux_map to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_l_mux_map_value to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_right_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_r_mux_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_r_mux_map_value to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_3_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_3_mux_map to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_3_mux_map_value to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_pga_l_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_pga_r_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_pga_3_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_codec_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mt6359_set_mtkaif_protocol(ptr nocapture noundef readonly %cmpnt, i32 noundef %mtkaif_protocol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %cmpnt, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mtkaif_protocol1 = getelementptr inbounds %struct.mt6359_priv, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %mtkaif_protocol1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mtkaif_protocol, ptr %mtkaif_protocol1, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt6359_mtkaif_calibration_enable(ptr nocapture noundef readonly %cmpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %cmpnt, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.mt6359_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 220, i32 noundef 4094) #8
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 218, i32 noundef 585) #8
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 226, i32 noundef 6) #8
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 224, i32 noundef 1) #8
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i16 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 226, i32 noundef 3584) #8
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call2.i17 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 224, i32 noundef 512) #8
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call4.i18 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 232, i32 noundef 63) #8
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call6.i19 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 230, i32 noundef 9) #8
  tail call fastcc void @mt6359_mtkaif_tx_enable(ptr noundef %3)
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 1960, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %call.i.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 9634, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 9526, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call.i.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 8972, i32 noundef 102, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 9188, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 9188, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 9190, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt6359_mtkaif_tx_enable(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtkaif_protocol = getelementptr inbounds %struct.mt6359_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %mtkaif_protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtkaif_protocol, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 9162, i32 noundef 65535, i32 noundef 528, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 9192, i32 noundef 65280, i32 noundef 14336, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap6 = getelementptr inbounds %struct.mt6359_priv, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap6, align 4
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 9162, i32 noundef 65535, i32 noundef 528, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap11 = getelementptr inbounds %struct.mt6359_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap11, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 9162, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  %regmap11.sink = phi ptr [ %regmap11, %sw.default ], [ %regmap6, %sw.bb5 ], [ %regmap, %sw.bb ]
  %.sink28 = phi i32 [ 12544, %sw.default ], [ 12544, %sw.bb5 ], [ 14592, %sw.bb ]
  %11 = ptrtoint ptr %regmap11.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap11.sink, align 4
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 9192, i32 noundef 65280, i32 noundef %.sink28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt6359_mtkaif_calibration_disable(ptr nocapture noundef readonly %cmpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %cmpnt, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 9188, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 9188, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9190, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 8972, i32 noundef 102, i32 noundef 102, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 9526, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 9634, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 1960, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 9192, i32 noundef 65280, i32 noundef 12288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i26 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 220, i32 noundef 4088) #8
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 136, i32 noundef 3584, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i29 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 226, i32 noundef 3584) #8
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 232, i32 noundef 63) #8
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 136, i32 noundef 57344, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i10.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 142, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt6359_set_mtkaif_calibration_phase(ptr nocapture noundef readonly %cmpnt, i32 noundef %phase_1, i32 noundef %phase_2, i32 noundef %phase_3) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %cmpnt, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 9188, i32 noundef 127, i32 noundef %phase_1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %shl3 = shl i32 %phase_2, 8
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 9188, i32 noundef 32512, i32 noundef %shl3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9190, i32 noundef 127, i32 noundef %phase_3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_platform_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt6359_platform_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt6359_platform_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt6359_platform_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_platform_driver_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6359_platform_driver_probe.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6359_platform_driver_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i48 = phi ptr [ %7, %if.end.i ], [ %5, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6359_platform_driver_probe.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i48) #8
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 124, i32 noundef 3520) #8
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %regmap = getelementptr inbounds %struct.mt6397_chip, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %regmap12 = getelementptr inbounds %struct.mt6359_priv, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %regmap12, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %driver_data.i49 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i49 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i49, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %call.i, align 4
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  %call.i50 = tail call ptr @of_get_child_by_name(ptr noundef %17, ptr noundef nonnull @.str.8) #8
  %tobool.not.i51 = icmp eq ptr %call.i50, null
  br i1 %tobool.not.i51, label %do.end27, label %if.end.i52

if.end.i52:                                       ; preds = %if.end18
  %dmic_one_wire_mode.i = getelementptr inbounds %struct.mt6359_priv, ptr %call.i, i32 0, i32 6
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i50, ptr noundef nonnull @.str.9, ptr noundef %dmic_one_wire_mode.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %if.end.i52.if.end7.i_crit_edge, label %do.end.i

if.end.i52.if.end7.i_crit_edge:                   ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

do.end.i:                                         ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #11
  %20 = ptrtoint ptr %dmic_one_wire_mode.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dmic_one_wire_mode.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %if.end.i52.if.end7.i_crit_edge
  %mux_select.i = getelementptr inbounds %struct.mt6359_priv, ptr %call.i, i32 0, i32 5
  %call.i.i63.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i50, ptr noundef nonnull @.str.13, ptr noundef %mux_select.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i63.i)
  %tobool9.not.i = icmp sgt i32 %call.i.i63.i, -1
  br i1 %tobool9.not.i, label %if.end7.i.if.end17.i_crit_edge, label %do.end13.i

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, i32 noundef 0) #11
  %23 = ptrtoint ptr %mux_select.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mux_select.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end13.i, %if.end7.i.if.end17.i_crit_edge
  %arrayidx19.i = getelementptr %struct.mt6359_priv, ptr %call.i, i32 0, i32 5, i32 1
  %call.i.i64.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i50, ptr noundef nonnull @.str.17, ptr noundef %arrayidx19.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i64.i)
  %tobool21.not.i = icmp sgt i32 %call.i.i64.i, -1
  br i1 %tobool21.not.i, label %if.end17.i.if.end29.i_crit_edge, label %do.end25.i

if.end17.i.if.end29.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

do.end25.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.11, i32 noundef 0) #11
  %26 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx19.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end25.i, %if.end17.i.if.end29.i_crit_edge
  %arrayidx31.i = getelementptr %struct.mt6359_priv, ptr %call.i, i32 0, i32 5, i32 2
  %call.i.i65.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i50, ptr noundef nonnull @.str.21, ptr noundef %arrayidx31.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i65.i)
  %tobool33.not.i = icmp sgt i32 %call.i.i65.i, -1
  br i1 %tobool33.not.i, label %if.end29.i.if.end29_crit_edge, label %do.end37.i

if.end29.i.if.end29_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end37.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.11, i32 noundef 0) #11
  %29 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx31.i, align 4
  br label %if.end29

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end29:                                         ; preds = %do.end37.i, %if.end29.i.if.end29_crit_edge
  %call31 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @mt6359_soc_component_driver, ptr noundef nonnull @mt6359_dai_driver, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end27, %if.then15, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then15 ], [ -22, %do.end27 ], [ %call31, %if.end29 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_codec_probe(ptr noundef %cmpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %cmpnt, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @snd_soc_component_init_regmap(ptr noundef %cmpnt, ptr noundef %5) #8
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.mt6359_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 1960, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 9526, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 9608, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 9608, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 9620, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 9622, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %call.i6.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 220, i32 noundef 4088) #8
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 136, i32 noundef 3584, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call.i8.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 226, i32 noundef 3584) #8
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call2.i.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 232, i32 noundef 63) #8
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %call.i.i9.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 136, i32 noundef 57344, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %call.i10.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 142, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %hp_hifi_mode.i = getelementptr inbounds %struct.mt6359_priv, ptr %9, i32 0, i32 9
  %34 = ptrtoint ptr %hp_hifi_mode.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %hp_hifi_mode.i, align 4
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 4
  %call.i11.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 9736, i32 noundef 0) #8
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %call.i12.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 1960, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mt6359_codec_remove(ptr nocapture noundef writeonly %cmpnt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.snd_soc_component, ptr %cmpnt, i32 0, i32 13
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %regmap, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  %reg = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reg, align 4, !annotation !623
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %call2 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = inttoptr i32 %7 to ptr
  %reg3 = getelementptr inbounds %struct.soc_mixer_control, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %reg3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg3, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %13, label %if.end.do.body_crit_edge [
    i32 9740, label %sw.bb
    i32 9738, label %sw.bb10
    i32 9742, label %sw.bb21
    i32 9480, label %sw.bb28
    i32 9482, label %sw.bb35
    i32 9484, label %sw.bb42
  ]

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %16, i32 noundef 9740, ptr noundef nonnull %reg) #8
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %and = and i32 %18, 31
  %arrayidx5 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and, ptr %arrayidx5, align 4
  %20 = load i32, ptr %reg, align 4
  %shr6 = lshr i32 %20, 7
  %and7 = and i32 %shr6, 31
  %arrayidx9 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and7, ptr %arrayidx9, align 4
  br label %do.body

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap11 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap11, align 4
  %call12 = call i32 @regmap_read(ptr noundef %23, i32 noundef 9738, ptr noundef nonnull %reg) #8
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg, align 4
  %and14 = and i32 %25, 31
  %arrayidx16 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and14, ptr %arrayidx16, align 4
  %27 = load i32, ptr %reg, align 4
  %shr17 = lshr i32 %27, 7
  %and18 = and i32 %shr17, 31
  %arrayidx20 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 4, i32 5
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and18, ptr %arrayidx20, align 4
  br label %do.body

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap22 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap22, align 4
  %call23 = call i32 @regmap_read(ptr noundef %30, i32 noundef 9742, ptr noundef nonnull %reg) #8
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg, align 4
  %and25 = and i32 %32, 31
  %ana_gain26 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 4
  %33 = ptrtoint ptr %ana_gain26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and25, ptr %ana_gain26, align 4
  br label %do.body

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap29 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %34 = ptrtoint ptr %regmap29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap29, align 4
  %call30 = call i32 @regmap_read(ptr noundef %35, i32 noundef 9480, ptr noundef nonnull %reg) #8
  %36 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg, align 4
  %shr31 = lshr i32 %37, 8
  %and32 = and i32 %shr31, 7
  %arrayidx34 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 4, i32 6
  %38 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and32, ptr %arrayidx34, align 4
  br label %do.body

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap36 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %regmap36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap36, align 4
  %call37 = call i32 @regmap_read(ptr noundef %40, i32 noundef 9482, ptr noundef nonnull %reg) #8
  %41 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg, align 4
  %shr38 = lshr i32 %42, 8
  %and39 = and i32 %shr38, 7
  %arrayidx41 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 4, i32 7
  %43 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and39, ptr %arrayidx41, align 4
  br label %do.body

sw.bb42:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap43 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %44 = ptrtoint ptr %regmap43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap43, align 4
  %call44 = call i32 @regmap_read(ptr noundef %45, i32 noundef 9484, ptr noundef nonnull %reg) #8
  %46 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg, align 4
  %shr45 = lshr i32 %47, 8
  %and46 = and i32 %shr45, 7
  %arrayidx48 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 4, i32 8
  %48 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and46, ptr %arrayidx48, align 4
  br label %do.body

do.body:                                          ; preds = %sw.bb42, %sw.bb35, %sw.bb28, %sw.bb21, %sw.bb10, %sw.bb, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6359_put_volsw.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6359_put_volsw, %if.then52)) #8
          to label %cleanup [label %if.then52], !srcloc !622

if.then52:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %5, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %51 = ptrtoint ptr %reg3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg3, align 4
  %53 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6359_put_volsw.__UNIQUE_ID_ddebug295, ptr noundef %50, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, ptr noundef %name, i32 noundef %52, i32 noundef %54, i32 noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_delay_250_event(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge1
  ]

entry.sw.bb_crit_edge1:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge1
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 270, i32 noundef 2) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dapm_regulator_event(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_sdm_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 9118, i32 noundef 65533, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 9114, i32 noundef 52129) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 9118, i32 noundef 65533, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 9118, i32 noundef 65533, i32 noundef 11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap10 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap10, align 4
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 9118, i32 noundef 65533, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %17 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap10, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 9114, i32 noundef 52128) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_sdm_3rd_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 9136, i32 noundef 6) #8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 9132, i32 noundef 52129) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 9136, i32 noundef 3) #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 9136, i32 noundef 11) #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap10 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap10, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 9136, i32 noundef 0) #8
  %17 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap10, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 9132, i32 noundef 52128) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_ncp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 9438, i32 noundef 51200) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_esd_resist_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 9612, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 270, i32 noundef 2) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap4 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap4, align 4
  %call.i7 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 9612, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_delay_100_event(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge1
  ]

entry.sw.bb_crit_edge1:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge1
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_hp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %6 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kcontrols, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %9) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_hp_event.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_hp_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %dev_counter = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %dev_counter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_counter, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_hp_event.__UNIQUE_ID_ddebug297, ptr noundef %11, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i32 noundef %event, i32 noundef %13, i32 noundef %call2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %14 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb11
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %dev_counter7 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 7
  %15 = ptrtoint ptr %dev_counter7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dev_counter7, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %dev_counter7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp = icmp eq i32 %call2, 2
  br i1 %cmp, label %if.then9, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb
  %hp_hifi_mode.i = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 9
  %17 = ptrtoint ptr %hp_hifi_mode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hp_hifi_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  %regmap5.i = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap5.i, align 4
  %..i = select i1 %tobool.not.i, i32 128, i32 256
  %.116.i = select i1 %tobool.not.i, i32 0, i32 64
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %.117.i = zext i1 %not.tobool.not.i to i32
  %call.i100.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 9630, i32 noundef 896, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %21 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap5.i, align 4
  %call.i101.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 9632, i32 noundef 192, i32 noundef %.116.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %23 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap5.i, align 4
  %call.i102.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 9632, i32 noundef 3, i32 noundef %.117.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %25 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap5.i, align 4
  %call12.i = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 9628, i32 noundef 135) #8
  %dl_rate.i = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 2
  %27 = ptrtoint ptr %dl_rate.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dl_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95999, i32 %28)
  %cmp.i = icmp ugt i32 %28, 95999
  %29 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap5.i, align 4
  br i1 %cmp.i, label %if.then13.i, label %if.else16.i

if.then13.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i103.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 9616, i32 noundef 12288, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end19.i

if.else16.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 9616, i32 noundef 0) #8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else16.i, %if.then13.i
  %31 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap5.i, align 4
  %call21.i = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 9612, i32 noundef 61747) #8
  %33 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap5.i, align 4
  %call23.i = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 9610, i32 noundef 12) #8
  %35 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap5.i, align 4
  %call25.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 9610, i32 noundef 60) #8
  %37 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap5.i, align 4
  %call27.i = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 9626, i32 noundef 3072) #8
  %39 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap5.i, align 4
  %call29.i = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 9608, i32 noundef 12480) #8
  %41 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap5.i, align 4
  %call31.i = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 9608, i32 noundef 12528) #8
  %43 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap5.i, align 4
  %call33.i = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 9610, i32 noundef 252) #8
  tail call fastcc void @hp_in_pair_current(ptr noundef %5, i1 noundef zeroext true) #8
  %45 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap5.i, align 4
  %call35.i = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 9626, i32 noundef 3584) #8
  %47 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap5.i, align 4
  %call37.i = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 9626, i32 noundef 512) #8
  %49 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap5.i, align 4
  %call39.i = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 9610, i32 noundef 255) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end19.i
  %i.011.i.i = phi i32 [ 0, %if.end19.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %51 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap5.i, align 4
  %shl.i.i = shl i32 %i.011.i.i, 8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 9610, i32 noundef 1792, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %53 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap5.i, align 4
  %shl2.i.i = shl i32 %i.011.i.i, 12
  %call.i10.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 9610, i32 noundef 28672, i32 noundef %shl2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 650, i32 noundef 2) #8
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.body.i110.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.for.body.i110.i_crit_edge:           ; preds = %for.body.i.i
  br label %for.body.i110.i

for.body.i110.i:                                  ; preds = %for.body.i110.i.for.body.i110.i_crit_edge, %for.body.i.i.for.body.i110.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i108.i, %for.body.i110.i.for.body.i110.i_crit_edge ], [ 0, %for.body.i.i.for.body.i110.i_crit_edge ]
  %55 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap5.i, align 4
  %shl.i106.i = shl i32 %i.05.i.i, 12
  %call.i.i107.i = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 9626, i32 noundef 61440, i32 noundef %shl.i106.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 650, i32 noundef 2) #8
  %inc.i108.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i109.i = icmp eq i32 %inc.i108.i, 16
  br i1 %exitcond.not.i109.i, label %mtk_hp_enable.exit, label %for.body.i110.i.for.body.i110.i_crit_edge

for.body.i110.i.for.body.i110.i_crit_edge:        ; preds = %for.body.i110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i110.i

mtk_hp_enable.exit:                               ; preds = %for.body.i110.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap5.i, align 4
  %call41.i = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 9610, i32 noundef 30671) #8
  %arrayidx42.i = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 4, i32 2
  %59 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx42.i, align 4
  tail call fastcc void @headset_volume_ramp(ptr noundef %5, i32 noundef 30, i32 noundef %60) #8
  %61 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap5.i, align 4
  %call44.i = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 9610, i32 noundef 30659) #8
  %63 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap5.i, align 4
  %call46.i = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 9610, i32 noundef 30467) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #8
  %65 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap5.i, align 4
  %call.i.i112.i = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 9634, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %67 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap5.i, align 4
  %call48.i = tail call i32 @regmap_write(ptr noundef %68, i32 noundef 9608, i32 noundef 12543) #8
  %69 = ptrtoint ptr %hp_hifi_mode.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hp_hifi_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool50.not.i = icmp eq i32 %70, 0
  %71 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap5.i, align 4
  %.118.i = select i1 %tobool50.not.i, i32 61952, i32 61953
  %call56.i = tail call i32 @regmap_write(ptr noundef %72, i32 noundef 9626, i32 noundef %.118.i) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #8
  %73 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap5.i, align 4
  %call59.i = tail call i32 @regmap_write(ptr noundef %74, i32 noundef 9608, i32 noundef 13055) #8
  %75 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap5.i, align 4
  %call61.i = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 9608, i32 noundef 15103) #8
  tail call fastcc void @hp_pull_down(ptr noundef %5, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  %dev_counter12 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 7
  %77 = ptrtoint ptr %dev_counter12 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dev_counter12, align 4
  %dec = add i32 %78, -1
  store i32 %dec, ptr %dev_counter12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp14 = icmp eq i32 %call2, 2
  br i1 %cmp14, label %if.then15, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then15:                                        ; preds = %sw.bb11
  tail call fastcc void @hp_pull_down(ptr noundef %5, i1 noundef zeroext true) #8
  %regmap.i = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %79 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 9608, i32 noundef 3840, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %81 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap.i, align 4
  %call.i50.i = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 9626, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %83 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap.i, align 4
  %call.i51.i = tail call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 9608, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %85 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 9634, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %87 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap.i, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %88, i32 noundef 9610, i32 noundef 30659) #8
  %89 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap.i, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %90, i32 noundef 9610, i32 noundef 30671) #8
  %arrayidx.i = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 4, i32 2
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i, align 4
  tail call fastcc void @headset_volume_ramp(ptr noundef %5, i32 noundef %92, i32 noundef 30) #8
  %93 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap.i, align 4
  %call10.i = tail call i32 @regmap_write(ptr noundef %94, i32 noundef 9610, i32 noundef 30719) #8
  br label %for.body.i.i33

for.body.i.i33:                                   ; preds = %for.body.i.i33.for.body.i.i33_crit_edge, %if.then15
  %i.05.i.i29 = phi i32 [ 0, %if.then15 ], [ %inc.i.i31, %for.body.i.i33.for.body.i.i33_crit_edge ]
  %95 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap.i, align 4
  %.neg.i = mul nsw i32 %i.05.i.i29, -4096
  %shl.i.i30 = add nsw i32 %.neg.i, 61440
  %call.i.i53.i = tail call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 9626, i32 noundef 61440, i32 noundef %shl.i.i30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 650, i32 noundef 2) #8
  %inc.i.i31 = add nuw nsw i32 %i.05.i.i29, 1
  %exitcond.not.i.i32 = icmp eq i32 %inc.i.i31, 16
  br i1 %exitcond.not.i.i32, label %for.body.i.i33.for.body.i60.i_crit_edge, label %for.body.i.i33.for.body.i.i33_crit_edge

for.body.i.i33.for.body.i.i33_crit_edge:          ; preds = %for.body.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i33

for.body.i.i33.for.body.i60.i_crit_edge:          ; preds = %for.body.i.i33
  br label %for.body.i60.i

for.body.i60.i:                                   ; preds = %for.body.i60.i.for.body.i60.i_crit_edge, %for.body.i.i33.for.body.i60.i_crit_edge
  %i.011.i.i34 = phi i32 [ %inc.i58.i, %for.body.i60.i.for.body.i60.i_crit_edge ], [ 0, %for.body.i.i33.for.body.i60.i_crit_edge ]
  %sub.i55.i = sub nuw nsw i32 7, %i.011.i.i34
  %97 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap.i, align 4
  %shl.i56.i = shl nuw nsw i32 %sub.i55.i, 8
  %call.i.i57.i = tail call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 9610, i32 noundef 1792, i32 noundef %shl.i56.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %99 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap.i, align 4
  %shl2.i.i35 = shl nuw nsw i32 %sub.i55.i, 12
  %call.i10.i.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 9610, i32 noundef 28672, i32 noundef %shl2.i.i35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 650, i32 noundef 2) #8
  %inc.i58.i = add nuw nsw i32 %i.011.i.i34, 1
  %exitcond.not.i59.i = icmp eq i32 %inc.i58.i, 8
  br i1 %exitcond.not.i59.i, label %mtk_hp_disable.exit, label %for.body.i60.i.for.body.i60.i_crit_edge

for.body.i60.i.for.body.i60.i_crit_edge:          ; preds = %for.body.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i60.i

mtk_hp_disable.exit:                              ; preds = %for.body.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap.i, align 4
  %call.i61.i = tail call i32 @regmap_update_bits_base(ptr noundef %102, i32 noundef 9610, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %103 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap.i, align 4
  %call14.i = tail call i32 @regmap_write(ptr noundef %104, i32 noundef 9626, i32 noundef 3585) #8
  %105 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap.i, align 4
  %call16.i = tail call i32 @regmap_write(ptr noundef %106, i32 noundef 9626, i32 noundef 3073) #8
  tail call fastcc void @hp_in_pair_current(ptr noundef %5, i1 noundef zeroext false) #8
  %107 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap.i, align 4
  %call.i62.i = tail call i32 @regmap_update_bits_base(ptr noundef %108, i32 noundef 9610, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %109 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap.i, align 4
  %call.i63.i = tail call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef 9608, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %111 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap.i, align 4
  %call.i64.i = tail call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 9608, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %113 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap.i, align 4
  %call24.i = tail call i32 @regmap_write(ptr noundef %114, i32 noundef 9626, i32 noundef 513) #8
  %115 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap.i, align 4
  %call.i65.i = tail call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef 9610, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %117 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap.i, align 4
  %call.i66.i = tail call i32 @regmap_update_bits_base(ptr noundef %118, i32 noundef 9610, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %mtk_hp_disable.exit, %sw.bb11.sw.epilog_crit_edge, %mtk_hp_enable.exit, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_hp_pull_down_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 8, label %sw.bb2
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i1 [ false, %sw.bb2 ], [ true, %entry.sw.epilog.sink.split_crit_edge ]
  tail call fastcc void @hp_pull_down(ptr noundef %5, i1 noundef zeroext %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_hp_mute_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 8, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.sink7 = phi i32 [ 3999, %sw.bb3 ], [ 3870, %entry.sw.epilog.sink.split_crit_edge ]
  %regmap4 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap4, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 9740, i32 noundef %.sink7) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_hp_damp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %event)
  %cond = icmp eq i32 %event, 8
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 9628, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_rcv_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_rcv_event.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_rcv_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %8 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kcontrols, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call5 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %11) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_rcv_event.__UNIQUE_ID_ddebug298, ptr noundef %7, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.162, i32 noundef %event, i32 noundef %call5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb30
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 9620, i32 noundef 16) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 9630, i32 noundef 7168, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 9632, i32 noundef 192, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 9632, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 9620, i32 noundef 144) #8
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 9628, i32 noundef 28672) #8
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 9620, i32 noundef 146) #8
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 9620, i32 noundef 147) #8
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %ana_gain = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 4
  %31 = ptrtoint ptr %ana_gain to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ana_gain, align 4
  %call23 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 9742, i32 noundef %32) #8
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 9634, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call25 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 9608, i32 noundef 9) #8
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call27 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 9626, i32 noundef 1) #8
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 9620, i32 noundef 155) #8
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap31 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %41 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap31, align 4
  %call.i65 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 9620, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %43 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap31, align 4
  %call.i66 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 9608, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %45 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap31, align 4
  %call.i.i68 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 9634, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %47 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap31, align 4
  %call36 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 9742, i32 noundef 31) #8
  %49 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap31, align 4
  %call.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 9620, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %51 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap31, align 4
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 9620, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_lo_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_lo_event.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_lo_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %8 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kcontrols, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call5 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %11) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_lo_event.__UNIQUE_ID_ddebug299, ptr noundef %7, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.167, i32 noundef %event, i32 noundef %call5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb36
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 9622, i32 noundef 16) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 9630, i32 noundef 57344, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %dev_counter = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 7
  %17 = ptrtoint ptr %dev_counter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then10, label %sw.bb.if.end13_crit_edge

sw.bb.if.end13_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 9632, i32 noundef 192, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %sw.bb.if.end13_crit_edge
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 9632, i32 noundef 48, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 9622, i32 noundef 272) #8
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call19 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 9622, i32 noundef 274) #8
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call21 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 9622, i32 noundef 275) #8
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %arrayidx23 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx23, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 9738, i32 noundef %32) #8
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 9634, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call26 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 9622, i32 noundef 12563) #8
  %37 = ptrtoint ptr %dev_counter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dev_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp29 = icmp eq i32 %38, 0
  br i1 %cmp29, label %if.then30, label %if.end13.if.end33_crit_edge

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then30:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call32 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 9626, i32 noundef 1) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end13.if.end33_crit_edge
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call35 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 9622, i32 noundef 12571) #8
  br label %sw.epilog

sw.bb36:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap37 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %43 = ptrtoint ptr %regmap37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap37, align 4
  %call.i72 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 9622, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %45 = ptrtoint ptr %regmap37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap37, align 4
  %call.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 9608, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %47 = ptrtoint ptr %regmap37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap37, align 4
  %call.i.i75 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 9634, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %49 = ptrtoint ptr %regmap37 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap37, align 4
  %call42 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 9738, i32 noundef 31) #8
  %51 = ptrtoint ptr %regmap37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap37, align 4
  %call.i76 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 9622, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %53 = ptrtoint ptr %regmap37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap37, align 4
  %call.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 9622, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb36, %if.end33, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_sgen_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_sgen_event.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_sgen_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_sgen_event.__UNIQUE_ID_ddebug296, ptr noundef %7, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.171, i32 noundef %event) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb16
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 9118, i32 noundef 6) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 9114, i32 noundef 52129) #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 9118, i32 noundef 3) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 9118, i32 noundef 11) #8
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 9176, i32 noundef 65343, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 9178, i32 noundef 65535, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap17 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap17, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 9118, i32 noundef 0) #8
  %23 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap17, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 9114, i32 noundef 52128) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_adc_clk_gen_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_adc_clk_gen_event.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_adc_clk_gen_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_adc_clk_gen_event.__UNIQUE_ID_ddebug300, ptr noundef %7, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.173, i32 noundef %event) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb12
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 9490, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 9490, i32 noundef 24, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 9490, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 9490, i32 noundef 96, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap13 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap13, align 4
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 9490, i32 noundef 24, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %19 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap13, align 4
  %call.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 9490, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %21 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap13, align 4
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 9490, i32 noundef 96, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %23 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap13, align 4
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 9490, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_dcc_clk_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_dcc_clk_event.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_dcc_clk_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_dcc_clk_event.__UNIQUE_ID_ddebug301, ptr noundef %7, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.175, i32 noundef %event) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb12
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 9184, i32 noundef 65527, i32 noundef 8290, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 9184, i32 noundef 65527, i32 noundef 8288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 9184, i32 noundef 65527, i32 noundef 8289, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 9186, i32 noundef 256) #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap13 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap13, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 9184, i32 noundef 65527, i32 noundef 8288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %19 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap13, align 4
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 9184, i32 noundef 65527, i32 noundef 8290, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_mtkaif_tx_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_mtkaif_tx_event.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_mtkaif_tx_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_mtkaif_tx_event.__UNIQUE_ID_ddebug305, ptr noundef %7, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.177, i32 noundef %event) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb5
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mt6359_mtkaif_tx_enable(ptr noundef %5)
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 9192, i32 noundef 65280, i32 noundef 12288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_ul_src_dmic_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_ul_src_dmic_event.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_ul_src_dmic_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_ul_src_dmic_event.__UNIQUE_ID_ddebug306, ptr noundef %7, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.178, i32 noundef %event) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb13
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dmic_one_wire_mode = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %dmic_one_wire_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dmic_one_wire_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  %regmap8 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap8, align 4
  %. = select i1 %tobool5.not, i32 128, i32 1024
  %call9 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 9100, i32 noundef %.) #8
  %regmap11 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap11, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 9102, i32 noundef 65532, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap14 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %regmap14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap14, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 9100, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_ul_src_34_dmic_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_ul_src_34_dmic_event.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_ul_src_34_dmic_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_ul_src_34_dmic_event.__UNIQUE_ID_ddebug307, ptr noundef %7, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.179, i32 noundef %event) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb8
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 9104, i32 noundef 128) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 9106, i32 noundef 65532, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap9 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap9, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 9104, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_adc_l_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_adc_l_event.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_adc_l_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_adc_l_event.__UNIQUE_ID_ddebug308, ptr noundef %7, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.201, i32 noundef %event) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %sw.bb, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #8
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9480, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_adc_r_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_adc_r_event.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_adc_r_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_adc_r_event.__UNIQUE_ID_ddebug309, ptr noundef %7, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.202, i32 noundef %event) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %sw.bb, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #8
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9482, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_adc_3_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_adc_3_event.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_adc_3_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_adc_3_event.__UNIQUE_ID_ddebug310, ptr noundef %7, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.203, i32 noundef %event) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %sw.bb, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #8
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9484, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_pga_l_mux_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %6 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kcontrols, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %9) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_pga_l_mux_event.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_pga_l_mux_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_pga_l_mux_event.__UNIQUE_ID_ddebug311, ptr noundef %11, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.204, i32 noundef %call2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shr = lshr i32 %call2, 6
  %arrayidx6 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_pga_r_mux_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %6 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kcontrols, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %9) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_pga_r_mux_event.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_pga_r_mux_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_pga_r_mux_event.__UNIQUE_ID_ddebug312, ptr noundef %11, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.208, i32 noundef %call2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shr = lshr i32 %call2, 6
  %arrayidx6 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 5, i32 4
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_pga_3_mux_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %6 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kcontrols, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %9) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_pga_3_mux_event.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_pga_3_mux_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_pga_3_mux_event.__UNIQUE_ID_ddebug313, ptr noundef %11, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.210, i32 noundef %call2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shr = lshr i32 %call2, 6
  %arrayidx6 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 5, i32 5
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_pga_l_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %9, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mux_select = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 5, i32 1
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.213, i32 noundef %9) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %mic_type.0.in = phi ptr [ %arrayidx7, %sw.bb5 ], [ %mux_select, %sw.bb ]
  %13 = ptrtoint ptr %mic_type.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %mic_type.0 = load i32, ptr %mic_type.0.in, align 4
  %14 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %event, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb8
    i32 2, label %sw.bb13
    i32 8, label %sw.bb25
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  %mic_type.0.off = add i32 %mic_type.0, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mic_type.0.off)
  %switch = icmp ult i32 %mic_type.0.off, 3
  br i1 %switch, label %if.then, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 9480, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb13:                                          ; preds = %sw.epilog
  %regmap14 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %regmap14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap14, align 4
  %shl = shl i32 %7, 8
  %call.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 9480, i32 noundef 1792, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %mic_type.0.off48 = add i32 %mic_type.0, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mic_type.0.off48)
  %switch49 = icmp ult i32 %mic_type.0.off48, 3
  br i1 %switch49, label %if.then21, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %regmap14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap14, align 4
  %call.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 9480, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %regmap26 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap26, align 4
  %call.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 9480, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb25, %if.then21, %sw.bb13.cleanup_crit_edge, %if.then, %sw.bb8.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb13.cleanup_crit_edge ], [ 0, %sw.bb8.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.then ], [ 0, %sw.bb25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_pga_r_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 4, i32 7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %9, label %do.end [
    i32 3, label %sw.bb
    i32 1, label %entry.sw.bb5_crit_edge
    i32 2, label %entry.sw.bb5_crit_edge53
  ]

entry.sw.bb5_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mux_select = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge53
  %arrayidx7 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 5, i32 2
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.215, i32 noundef %9) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %mic_type.0.in = phi ptr [ %arrayidx7, %sw.bb5 ], [ %mux_select, %sw.bb ]
  %13 = ptrtoint ptr %mic_type.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %mic_type.0 = load i32, ptr %mic_type.0.in, align 4
  %14 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %event, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb8
    i32 2, label %sw.bb13
    i32 8, label %sw.bb25
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  %mic_type.0.off = add i32 %mic_type.0, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mic_type.0.off)
  %switch = icmp ult i32 %mic_type.0.off, 3
  br i1 %switch, label %if.then, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 9482, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb13:                                          ; preds = %sw.epilog
  %regmap14 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %regmap14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap14, align 4
  %shl = shl i32 %7, 8
  %call.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 9482, i32 noundef 1792, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %mic_type.0.off48 = add i32 %mic_type.0, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mic_type.0.off48)
  %switch49 = icmp ult i32 %mic_type.0.off48, 3
  br i1 %switch49, label %if.then21, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %regmap14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap14, align 4
  %call.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 9482, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %regmap26 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap26, align 4
  %call.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 9482, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb25, %if.then21, %sw.bb13.cleanup_crit_edge, %if.then, %sw.bb8.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb13.cleanup_crit_edge ], [ 0, %sw.bb8.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.then ], [ 0, %sw.bb25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_pga_3_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 5, i32 5
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %.off = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %arrayidx4 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %event, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb5
    i32 2, label %sw.bb10
    i32 8, label %sw.bb22
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.216, i32 noundef %9) #11
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb
  %.off44 = add i32 %11, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off44)
  %switch45 = icmp ult i32 %.off44, 3
  br i1 %switch45, label %if.then, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 9484, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb
  %regmap11 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap11, align 4
  %shl = shl i32 %7, 8
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 9484, i32 noundef 1792, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %.off46 = add i32 %11, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off46)
  %switch47 = icmp ult i32 %.off46, 3
  br i1 %switch47, label %if.then18, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap11, align 4
  %call.i49 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 9484, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb22:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %regmap23 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %regmap23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap23, align 4
  %call.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 9484, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb22, %if.then18, %sw.bb10.cleanup_crit_edge, %if.then, %sw.bb5.cleanup_crit_edge, %do.end, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb10.cleanup_crit_edge ], [ 0, %sw.bb5.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.then ], [ 0, %sw.bb22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_mic_bias_0_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %mux_select = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %mux_select to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mux_select, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_mic_bias_0_event.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_mic_bias_0_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_mic_bias_0_event.__UNIQUE_ID_ddebug302, ptr noundef %9, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.217, i32 noundef %event, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %event, label %do.end.sw.epilog22_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb18
  ]

do.end.sw.epilog22_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %switch.selectcmp = icmp eq i32 %7, 5
  %switch.select = select i1 %switch.selectcmp, i32 4352, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %switch.selectcmp39 = icmp eq i32 %7, 4
  %switch.select40 = select i1 %switch.selectcmp39, i32 30464, i32 %switch.select
  %regmap10 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap10, align 4
  %call.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 9510, i32 noundef 65280, i32 noundef %switch.select40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %regmap12 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %regmap12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap12, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 9508, i32 noundef 4) #8
  %15 = ptrtoint ptr %regmap12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap12, align 4
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 9510, i32 noundef 112, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %17 = ptrtoint ptr %regmap12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap12, align 4
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 9510, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog22

sw.bb18:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap19 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %regmap19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap19, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 9510, i32 noundef 0) #8
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %sw.bb18, %sw.bb, %do.end.sw.epilog22_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_mic_bias_1_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_mic_bias_1_event.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_mic_bias_1_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_mic_bias_1_event.__UNIQUE_ID_ddebug303, ptr noundef %9, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.219, i32 noundef %event, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  br i1 %cond, label %sw.bb, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp = icmp eq i32 %7, 5
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %. = select i1 %cmp, i32 352, i32 96
  %call8 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 9512, i32 noundef %.) #8
  %regmap10 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap10, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 9512, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_mic_bias_2_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_mic_bias_2_event.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_mic_bias_2_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_mic_bias_2_event.__UNIQUE_ID_ddebug304, ptr noundef %9, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.220, i32 noundef %event, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %event, label %do.end.sw.epilog20_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb16
  ]

do.end.sw.epilog20_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog20

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %switch.selectcmp = icmp eq i32 %7, 5
  %switch.select = select i1 %switch.selectcmp, i32 4352, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %switch.selectcmp36 = icmp eq i32 %7, 4
  %switch.select37 = select i1 %switch.selectcmp36, i32 30464, i32 %switch.select
  %regmap10 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap10, align 4
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 9514, i32 noundef 65280, i32 noundef %switch.select37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %regmap12 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %regmap12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap12, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 9514, i32 noundef 112, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = ptrtoint ptr %regmap12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap12, align 4
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 9514, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog20

sw.bb16:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap17 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap17, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 9514, i32 noundef 0) #8
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.bb16, %sw.bb, %do.end.sw.epilog20_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dapm_kcontrol_get_value(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hp_in_pair_current(ptr nocapture noundef readonly %priv, i1 noundef zeroext %increase) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hp_hifi_mode = getelementptr inbounds %struct.mt6359_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %hp_hifi_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hp_hifi_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %priv, i32 0, i32 1
  %cond = select i1 %increase, i32 0, i32 24
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 9628, i32 noundef 24, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %cond.1 = select i1 %increase, i32 8, i32 16
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 9628, i32 noundef 24, i32 noundef %cond.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %cond.2 = select i1 %increase, i32 16, i32 8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 9628, i32 noundef 24, i32 noundef %cond.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %cond.3 = select i1 %increase, i32 24, i32 0
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i.3 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9628, i32 noundef 24, i32 noundef %cond.3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @headset_volume_ramp(ptr nocapture noundef readonly %priv, i32 noundef %from, i32 noundef %to) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %to, %from
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %1 = icmp ult i32 %0, 32
  br i1 %1, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, i32 noundef %from, i32 noundef %to) #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @headset_volume_ramp.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@headset_volume_ramp, %if.then6)) #8
          to label %do.end10 [label %if.then6], !srcloc !622

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @headset_volume_ramp.__UNIQUE_ID_ddebug294, ptr noundef %5, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.154, i32 noundef %from, i32 noundef %to) #8
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2
  call void @__sanitizer_cov_trace_cmp4(i32 %to, i32 %from)
  %cmp = icmp ugt i32 %to, %from
  %sub = sub nsw i32 %to, %from
  %sub12 = sub nsw i32 %from, %to
  %offset.0 = select i1 %cmp, i32 %sub, i32 %sub12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0)
  %cmp1448 = icmp sgt i32 %offset.0, 0
  br i1 %cmp1448, label %while.body.lr.ph, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %do.end10
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %priv, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.body.lr.ph
  %count.049 = phi i32 [ 1, %while.body.lr.ph ], [ %inc, %if.end23.while.body_crit_edge ]
  %6 = sub nsw i32 0, %count.049
  %reg_idx.0.p = select i1 %cmp, i32 %count.049, i32 %6
  %reg_idx.0 = add i32 %reg_idx.0.p, %from
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %reg_idx.0)
  %7 = icmp ult i32 %reg_idx.0, 32
  br i1 %7, label %if.then21, label %while.body.if.end23_crit_edge

while.body.if.end23_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 %reg_idx.0, 7
  %or = or i32 %shl, %reg_idx.0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9740, i32 noundef 3999, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 650, i32 noundef 2) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %while.body.if.end23_crit_edge
  %inc = add nuw i32 %count.049, 1
  %exitcond.not = icmp eq i32 %count.049, %offset.0
  br i1 %exitcond.not, label %if.end23.cleanup_crit_edge, label %if.end23.while.body_crit_edge

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %do.end10.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hp_pull_down(ptr nocapture noundef readonly %priv, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.mt6359_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %. = select i1 %enable, i32 0, i32 28672
  %.27 = select i1 %enable, i32 4096, i32 24576
  %.28 = select i1 %enable, i32 8192, i32 20480
  %.29 = select i1 %enable, i32 12288, i32 16384
  %.30 = select i1 %enable, i32 16384, i32 12288
  %.31 = select i1 %enable, i32 20480, i32 8192
  %.32 = select i1 %enable, i32 24576, i32 4096
  %.33 = select i1 %enable, i32 28672, i32 0
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9612, i32 noundef 28672, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i15.1 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 9612, i32 noundef 28672, i32 noundef %.27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i15.2 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 9612, i32 noundef 28672, i32 noundef %.28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i15.3 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 9612, i32 noundef 28672, i32 noundef %.29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i15.4 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9612, i32 noundef 28672, i32 noundef %.30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i15.5 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 9612, i32 noundef 28672, i32 noundef %.31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i15.6 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 9612, i32 noundef 28672, i32 noundef %.32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i15.7 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 9612, i32 noundef 28672, i32 noundef %.33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt_dcc_clk_connect(ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %sink) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %sink, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %mux_select = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %mux_select to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mux_select, align 4
  %.off = add i32 %7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %entry.cleanup_crit_edge, label %lor.lhs.false9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false9:                                   ; preds = %entry
  %arrayidx11 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11, align 4
  %.off45 = add i32 %9, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off45)
  %switch46 = icmp ult i32 %.off45, 3
  br i1 %switch46, label %lor.lhs.false9.cleanup_crit_edge, label %lor.lhs.false21

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false21:                                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx23, align 4
  %.off47 = add i32 %11, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off47)
  %switch48 = icmp ult i32 %.off47, 3
  %spec.select = zext i1 %switch48 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false21, %lor.lhs.false9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %lor.lhs.false9.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_codec_dai_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6359_codec_dai_startup.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6359_codec_dai_startup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6359_codec_dai_startup.__UNIQUE_ID_ddebug315, ptr noundef %7, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.223, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stream4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream4, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %11, label %do.end.if.end10_crit_edge [
    i32 0, label %if.then5
    i32 1, label %if.then8
  ]

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 220, i32 noundef 4094) #8
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 218, i32 noundef 585) #8
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 226, i32 noundef 6) #8
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 224, i32 noundef 1) #8
  br label %if.end10

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i15 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i15, align 4
  %call.i16 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 226, i32 noundef 3584) #8
  %23 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i15, align 4
  %call2.i17 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 224, i32 noundef 512) #8
  %25 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i15, align 4
  %call4.i18 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 232, i32 noundef 63) #8
  %27 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i15, align 4
  %call6.i19 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 230, i32 noundef 9) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then5, %do.end.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt6359_codec_dai_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6359_codec_dai_shutdown.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6359_codec_dai_shutdown, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6359_codec_dai_shutdown.__UNIQUE_ID_ddebug316, ptr noundef %7, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.225, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stream4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream4, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %11, label %do.end.if.end10_crit_edge [
    i32 0, label %if.then5
    i32 1, label %if.then8
  ]

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 220, i32 noundef 4088) #8
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 136, i32 noundef 3584, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end10

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i15 = getelementptr inbounds %struct.mt6359_priv, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i15, align 4
  %call.i16 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 226, i32 noundef 3584) #8
  %19 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i15, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 232, i32 noundef 63) #8
  %21 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i15, align 4
  %call.i.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 136, i32 noundef 57344, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %23 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i15, align 4
  %call.i10.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 142, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then5, %do.end.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6359_codec_dai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %id2 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6359_codec_dai_hw_params.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6359_codec_dai_hw_params, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !622

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %14 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6359_codec_dai_hw_params.__UNIQUE_ID_ddebug314, ptr noundef %11, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.226, i32 noundef %9, i32 noundef %13, i32 noundef %7, i32 noundef %15) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stream6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream6, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %17, label %do.end.if.end13_crit_edge [
    i32 0, label %if.then7
    i32 1, label %if.then10
  ]

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 2, i32 %9
  br label %if.end13.sink.split

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11 = getelementptr %struct.mt6359_priv, ptr %5, i32 0, i32 3, i32 %9
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.then10, %if.then7
  %arrayidx11.sink = phi ptr [ %arrayidx11, %if.then10 ], [ %arrayidx, %if.then7 ]
  %19 = ptrtoint ptr %arrayidx11.sink to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %7, ptr %arrayidx11.sink, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %do.end.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 302)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 302)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !40, !42, !43, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !205, !207, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !323, !324, !326, !327, !328, !329, !331, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !353, !354, !356, !358, !360, !362, !364, !366, !368, !369, !371, !373, !375, !377, !379, !381, !383, !384, !385, !387, !388, !389, !391, !392, !394, !396, !398, !400, !402, !404, !405, !407, !408, !410, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !520, !522, !523, !525, !526, !528, !529, !530, !532, !534, !536, !538, !540, !542, !544, !545, !547, !549, !551, !553, !555, !557, !558, !560, !562, !564, !566, !568, !570, !571, !572, !573, !574, !576, !577, !578, !580, !581, !582, !584, !585, !586, !588, !589, !591, !592, !594, !596, !598, !600, !602, !604, !605, !606, !608, !609, !611, !612}
!llvm.module.flags = !{!613, !614, !615, !616, !617, !618, !619, !620}
!llvm.ident = !{!621}

!0 = !{ptr @__ksymtab_mt6359_set_mtkaif_protocol, !1, !"__ksymtab_mt6359_set_mtkaif_protocol", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/mt6359.c", i32 164, i32 1}
!2 = !{ptr @__ksymtab_mt6359_mtkaif_calibration_enable, !3, !"__ksymtab_mt6359_mtkaif_calibration_enable", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/mt6359.c", i32 190, i32 1}
!4 = !{ptr @__ksymtab_mt6359_mtkaif_calibration_disable, !5, !"__ksymtab_mt6359_mtkaif_calibration_disable", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/mt6359.c", i32 216, i32 1}
!6 = !{ptr @__ksymtab_mt6359_set_mtkaif_calibration_phase, !7, !"__ksymtab_mt6359_set_mtkaif_calibration_phase", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/mt6359.c", i32 233, i32 1}
!8 = !{ptr @__initcall__kmod_snd_soc_mt6359__318_2832_mt6359_platform_driver_init6, !9, !"__initcall__kmod_snd_soc_mt6359__318_2832_mt6359_platform_driver_init6", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/mt6359.c", i32 2832, i32 1}
!10 = !{ptr @__exitcall_mt6359_platform_driver_exit, !9, !"__exitcall_mt6359_platform_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description319, !12, !"__UNIQUE_ID_description319", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/mt6359.c", i32 2835, i32 1}
!13 = !{ptr @__UNIQUE_ID_author320, !14, !"__UNIQUE_ID_author320", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/mt6359.c", i32 2836, i32 1}
!15 = !{ptr @__UNIQUE_ID_author321, !16, !"__UNIQUE_ID_author321", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/mt6359.c", i32 2837, i32 1}
!17 = !{ptr @__UNIQUE_ID_file322, !18, !"__UNIQUE_ID_file322", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/mt6359.c", i32 2838, i32 1}
!19 = !{ptr @__UNIQUE_ID_license323, !18, !"__UNIQUE_ID_license323", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/mt6359.c", i32 2827, i32 11}
!22 = !{ptr @mt6359_platform_driver, !23, !"mt6359_platform_driver", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/mt6359.c", i32 2825, i32 31}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/mt6359.c", i32 2799, i32 2}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mt6359_platform_driver_probe.__UNIQUE_ID_ddebug317, !25, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/mt6359.c", i32 2815, i32 3}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mt6359_platform_driver_probe._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @mt6359_platform_driver_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/mt6359.c", i32 2750, i32 50}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/mt6359.c", i32 2754, i32 33}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/mt6359.c", i32 2757, i32 3}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mt6359_parse_dt._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @mt6359_parse_dt._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/mt6359.c", i32 2763, i32 33}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/mt6359.c", i32 2766, i32 3}
!50 = !{ptr @mt6359_parse_dt._entry.14, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mt6359_parse_dt._entry_ptr.16, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/mt6359.c", i32 2772, i32 33}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/mt6359.c", i32 2775, i32 3}
!56 = !{ptr @mt6359_parse_dt._entry.18, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mt6359_parse_dt._entry_ptr.20, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/mt6359.c", i32 2781, i32 33}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/mt6359.c", i32 2784, i32 3}
!62 = !{ptr @mt6359_parse_dt._entry.22, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mt6359_parse_dt._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/mt6359.c", i32 2733, i32 10}
!66 = !{ptr @mt6359_soc_component_driver, !67, !"mt6359_soc_component_driver", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/mt6359.c", i32 2732, i32 46}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/mt6359.c", i32 2709, i32 2}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/mt6359.c", i32 2713, i32 2}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/mt6359.c", i32 2716, i32 2}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/mt6359.c", i32 2721, i32 2}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/mt6359.c", i32 2724, i32 2}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/mt6359.c", i32 2727, i32 2}
!80 = !{ptr @mt6359_snd_controls, !81, !"mt6359_snd_controls", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/mt6359.c", i32 2707, i32 38}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/mt6359.c", i32 406, i32 2}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mt6359_put_volsw.__UNIQUE_ID_ddebug295, !83, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!86 = !{ptr @hp_playback_tlv, !87, !"hp_playback_tlv", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/mt6359.c", i32 2703, i32 14}
!88 = !{ptr @playback_tlv, !89, !"playback_tlv", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/mt6359.c", i32 2704, i32 14}
!90 = !{ptr @capture_tlv, !91, !"capture_tlv", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/mt6359.c", i32 2705, i32 14}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/mt6359.c", i32 1943, i32 2}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/mt6359.c", i32 1946, i32 2}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/mt6359.c", i32 1949, i32 2}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/mt6359.c", i32 1952, i32 2}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/mt6359.c", i32 1955, i32 2}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/mt6359.c", i32 1958, i32 2}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/mt6359.c", i32 1962, i32 2}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/mt6359.c", i32 1965, i32 2}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/mt6359.c", i32 1968, i32 2}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/mt6359.c", i32 1973, i32 2}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/mt6359.c", i32 1976, i32 2}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/mt6359.c", i32 1979, i32 2}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/mt6359.c", i32 1982, i32 2}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/mt6359.c", i32 1985, i32 2}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/mt6359.c", i32 1988, i32 2}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/mt6359.c", i32 1991, i32 2}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/mt6359.c", i32 1995, i32 2}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/mt6359.c", i32 1999, i32 2}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/mt6359.c", i32 2005, i32 2}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/mt6359.c", i32 2010, i32 2}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/mt6359.c", i32 2016, i32 2}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/mt6359.c", i32 2018, i32 2}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/mt6359.c", i32 2020, i32 2}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/mt6359.c", i32 2024, i32 2}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/mt6359.c", i32 2029, i32 2}
!142 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/mt6359.c", i32 2032, i32 2}
!145 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/mt6359.c", i32 2035, i32 2}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/mt6359.c", i32 2041, i32 2}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/mt6359.c", i32 2044, i32 2}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/mt6359.c", i32 2049, i32 2}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/mt6359.c", i32 2053, i32 2}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/mt6359.c", i32 2057, i32 2}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/mt6359.c", i32 2061, i32 2}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/mt6359.c", i32 2067, i32 2}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/mt6359.c", i32 2069, i32 2}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/mt6359.c", i32 2071, i32 2}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/mt6359.c", i32 2073, i32 2}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/mt6359.c", i32 2076, i32 2}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/mt6359.c", i32 2081, i32 2}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/mt6359.c", i32 2083, i32 2}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/mt6359.c", i32 2088, i32 2}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/mt6359.c", i32 2093, i32 2}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/mt6359.c", i32 2100, i32 2}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/mt6359.c", i32 2106, i32 2}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/mt6359.c", i32 2112, i32 2}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/mt6359.c", i32 2113, i32 2}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/mt6359.c", i32 2114, i32 2}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/mt6359.c", i32 2115, i32 2}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/mt6359.c", i32 2116, i32 2}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/mt6359.c", i32 2117, i32 2}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/mt6359.c", i32 2120, i32 2}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/mt6359.c", i32 2122, i32 2}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/mt6359.c", i32 2126, i32 2}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/mt6359.c", i32 2129, i32 2}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/mt6359.c", i32 2132, i32 2}
!204 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/mt6359.c", i32 2134, i32 2}
!207 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/mt6359.c", i32 2137, i32 2}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/mt6359.c", i32 2142, i32 2}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/mt6359.c", i32 2148, i32 2}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/mt6359.c", i32 2151, i32 2}
!216 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/mt6359.c", i32 2154, i32 2}
!218 = !{ptr @.str.104, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/mt6359.c", i32 2156, i32 2}
!220 = !{ptr @.str.105, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/mt6359.c", i32 2161, i32 2}
!222 = !{ptr @.str.106, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/mt6359.c", i32 2166, i32 2}
!224 = !{ptr @.str.107, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/mt6359.c", i32 2171, i32 2}
!226 = !{ptr @.str.108, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/mt6359.c", i32 2176, i32 2}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/mt6359.c", i32 2181, i32 2}
!230 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/mt6359.c", i32 2182, i32 2}
!232 = !{ptr @.str.111, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/mt6359.c", i32 2183, i32 2}
!234 = !{ptr @.str.112, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/mt6359.c", i32 2185, i32 2}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/mt6359.c", i32 2187, i32 2}
!238 = !{ptr @.str.114, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/mt6359.c", i32 2190, i32 2}
!240 = !{ptr @.str.115, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/mt6359.c", i32 2191, i32 2}
!242 = !{ptr @.str.116, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/mt6359.c", i32 2192, i32 2}
!244 = !{ptr @.str.117, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/mt6359.c", i32 2194, i32 2}
!246 = !{ptr @.str.118, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/mt6359.c", i32 2196, i32 2}
!248 = !{ptr @.str.119, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/mt6359.c", i32 2198, i32 2}
!250 = !{ptr @.str.120, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/mt6359.c", i32 2201, i32 2}
!252 = !{ptr @.str.121, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/mt6359.c", i32 2202, i32 2}
!254 = !{ptr @.str.122, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/mt6359.c", i32 2203, i32 2}
!256 = !{ptr @.str.123, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/mt6359.c", i32 2205, i32 2}
!258 = !{ptr @.str.124, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/mt6359.c", i32 2210, i32 2}
!260 = !{ptr @.str.125, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/mt6359.c", i32 2215, i32 2}
!262 = !{ptr @.str.126, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/mt6359.c", i32 2221, i32 2}
!264 = !{ptr @.str.127, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/mt6359.c", i32 2225, i32 2}
!266 = !{ptr @.str.128, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/mt6359.c", i32 2229, i32 2}
!268 = !{ptr @.str.129, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/mt6359.c", i32 2234, i32 2}
!270 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/mt6359.c", i32 2235, i32 2}
!272 = !{ptr @.str.131, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/mt6359.c", i32 2236, i32 2}
!274 = !{ptr @.str.132, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/mt6359.c", i32 2238, i32 2}
!276 = !{ptr @.str.133, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/mt6359.c", i32 2245, i32 2}
!278 = !{ptr @.str.134, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/mt6359.c", i32 2252, i32 2}
!280 = !{ptr @.str.135, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/mt6359.c", i32 2261, i32 2}
!282 = !{ptr @.str.136, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/mt6359.c", i32 2262, i32 2}
!284 = !{ptr @.str.137, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/mt6359.c", i32 2263, i32 2}
!286 = !{ptr @.str.138, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/mt6359.c", i32 2264, i32 2}
!288 = !{ptr @.str.139, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/mt6359.c", i32 2266, i32 2}
!290 = !{ptr @.str.140, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/mt6359.c", i32 2267, i32 2}
!292 = !{ptr @.str.141, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/mt6359.c", i32 2268, i32 2}
!294 = !{ptr @.str.142, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/mt6359.c", i32 2271, i32 2}
!296 = !{ptr @.str.143, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/mt6359.c", i32 2276, i32 2}
!298 = !{ptr @.str.144, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/mt6359.c", i32 2281, i32 2}
!300 = !{ptr @.str.145, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/mt6359.c", i32 2288, i32 2}
!302 = !{ptr @.str.146, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/mt6359.c", i32 2292, i32 2}
!304 = !{ptr @mt6359_dapm_widgets, !305, !"mt6359_dapm_widgets", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/mt6359.c", i32 1941, i32 41}
!306 = !{ptr @.str.148, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/mt6359.c", i32 471, i32 2}
!308 = !{ptr @dac_in_mux_control, !309, !"dac_in_mux_control", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/mt6359.c", i32 470, i32 38}
!310 = !{ptr @dac_in_mux_map_enum, !311, !"dac_in_mux_map_enum", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/mt6359.c", i32 463, i32 8}
!312 = !{ptr @.str.149, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/mt6359.c", i32 456, i32 2}
!314 = !{ptr @.str.150, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/mt6359.c", i32 456, i32 17}
!316 = !{ptr @dac_in_mux_map, !317, !"dac_in_mux_map", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/mt6359.c", i32 455, i32 27}
!318 = !{ptr @dac_in_mux_map_value, !319, !"dac_in_mux_map_value", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/mt6359.c", i32 459, i32 12}
!320 = !{ptr @.str.151, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/mt6359.c", i32 962, i32 2}
!322 = !{ptr @.str.152, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @mt_hp_event.__UNIQUE_ID_ddebug297, !321, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!324 = !{ptr @.str.153, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/mt6359.c", i32 323, i32 3}
!326 = !{ptr @.str.154, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @headset_volume_ramp._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @headset_volume_ramp._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.155, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/mt6359.c", i32 328, i32 2}
!331 = !{ptr @headset_volume_ramp.__UNIQUE_ID_ddebug294, !330, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!332 = !{ptr @.str.156, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/mt6359.c", i32 439, i32 2}
!334 = !{ptr @hp_in_mux_control, !335, !"hp_in_mux_control", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/mt6359.c", i32 438, i32 38}
!336 = !{ptr @hp_in_mux_map_enum, !337, !"hp_in_mux_map_enum", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/mt6359.c", i32 433, i32 8}
!338 = !{ptr @.str.157, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/mt6359.c", i32 426, i32 2}
!340 = !{ptr @.str.158, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/mt6359.c", i32 427, i32 2}
!342 = !{ptr @.str.159, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/mt6359.c", i32 428, i32 2}
!344 = !{ptr @.str.160, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/mt6359.c", i32 429, i32 2}
!346 = !{ptr @.str.161, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/mt6359.c", i32 430, i32 2}
!348 = !{ptr @hp_in_mux_map, !349, !"hp_in_mux_map", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/mt6359.c", i32 425, i32 27}
!350 = !{ptr @.str.162, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/mt6359.c", i32 990, i32 2}
!352 = !{ptr @.str.163, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @mt_rcv_event.__UNIQUE_ID_ddebug298, !351, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!354 = !{ptr @.str.164, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/mt6359.c", i32 452, i32 2}
!356 = !{ptr @rcv_in_mux_control, !357, !"rcv_in_mux_control", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/mt6359.c", i32 451, i32 38}
!358 = !{ptr @rcv_in_mux_map_enum, !359, !"rcv_in_mux_map_enum", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/mt6359.c", i32 446, i32 8}
!360 = !{ptr @.str.165, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/mt6359.c", i32 443, i32 10}
!362 = !{ptr @.str.166, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/mt6359.c", i32 443, i32 18}
!364 = !{ptr @rcv_in_mux_map, !365, !"rcv_in_mux_map", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/mt6359.c", i32 442, i32 27}
!366 = !{ptr @.str.167, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/mt6359.c", i32 1074, i32 2}
!368 = !{ptr @mt_lo_event.__UNIQUE_ID_ddebug299, !367, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!369 = !{ptr @.str.168, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/mt6359.c", i32 422, i32 2}
!371 = !{ptr @lo_in_mux_control, !372, !"lo_in_mux_control", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/mt6359.c", i32 421, i32 38}
!373 = !{ptr @lo_in_mux_map_enum, !374, !"lo_in_mux_map_enum", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/mt6359.c", i32 419, i32 8}
!375 = !{ptr @.str.169, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/mt6359.c", i32 416, i32 10}
!377 = !{ptr @.str.170, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/mt6359.c", i32 416, i32 28}
!379 = !{ptr @lo_in_mux_map, !380, !"lo_in_mux_map", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/mt6359.c", i32 415, i32 27}
!381 = !{ptr @.str.171, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/mt6359.c", i32 734, i32 2}
!383 = !{ptr @.str.172, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @mt_sgen_event.__UNIQUE_ID_ddebug296, !382, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!385 = !{ptr @.str.173, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/mt6359.c", i32 1160, i32 2}
!387 = !{ptr @.str.174, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @mt_adc_clk_gen_event.__UNIQUE_ID_ddebug300, !386, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!389 = !{ptr @.str.175, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/mt6359.c", i32 1200, i32 2}
!391 = !{ptr @mt_dcc_clk_event.__UNIQUE_ID_ddebug301, !390, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!392 = !{ptr @.str.176, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/mt6359.c", i32 482, i32 2}
!394 = !{ptr @aif_out_mux_control, !395, !"aif_out_mux_control", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/mt6359.c", i32 481, i32 38}
!396 = !{ptr @aif_out_mux_map_enum, !397, !"aif_out_mux_map_enum", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/mt6359.c", i32 474, i32 8}
!398 = !{ptr @aif2_out_mux_control, !399, !"aif2_out_mux_control", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/mt6359.c", i32 491, i32 38}
!400 = !{ptr @aif2_out_mux_map_enum, !401, !"aif2_out_mux_map_enum", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/mt6359.c", i32 484, i32 8}
!402 = !{ptr @.str.177, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/mt6359.c", i32 1373, i32 2}
!404 = !{ptr @mt_mtkaif_tx_event.__UNIQUE_ID_ddebug305, !403, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!405 = !{ptr @.str.178, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/mt6359.c", i32 1396, i32 2}
!407 = !{ptr @mt_ul_src_dmic_event.__UNIQUE_ID_ddebug306, !406, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!408 = !{ptr @.str.179, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/mt6359.c", i32 1429, i32 2}
!410 = !{ptr @mt_ul_src_34_dmic_event.__UNIQUE_ID_ddebug307, !409, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!411 = !{ptr @.str.180, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/mt6359.c", i32 546, i32 2}
!413 = !{ptr @miso0_mux_control, !414, !"miso0_mux_control", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/mt6359.c", i32 545, i32 38}
!415 = !{ptr @miso0_mux_map_enum, !416, !"miso0_mux_map_enum", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/mt6359.c", i32 538, i32 8}
!417 = !{ptr @.str.181, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/mt6359.c", i32 525, i32 2}
!419 = !{ptr @.str.182, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/mt6359.c", i32 526, i32 2}
!421 = !{ptr @.str.183, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/mt6359.c", i32 527, i32 2}
!423 = !{ptr @.str.184, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/mt6359.c", i32 528, i32 2}
!425 = !{ptr @miso_mux_map, !426, !"miso_mux_map", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/mt6359.c", i32 524, i32 27}
!427 = !{ptr @miso_mux_map_value, !428, !"miso_mux_map_value", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/mt6359.c", i32 531, i32 12}
!429 = !{ptr @miso1_mux_control, !430, !"miso1_mux_control", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/mt6359.c", i32 555, i32 38}
!431 = !{ptr @miso1_mux_map_enum, !432, !"miso1_mux_map_enum", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/mt6359.c", i32 548, i32 8}
!433 = !{ptr @miso2_mux_control, !434, !"miso2_mux_control", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/mt6359.c", i32 565, i32 38}
!435 = !{ptr @miso2_mux_map_enum, !436, !"miso2_mux_map_enum", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/mt6359.c", i32 558, i32 8}
!437 = !{ptr @.str.185, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/mt6359.c", i32 512, i32 2}
!439 = !{ptr @ul_src_mux_control, !440, !"ul_src_mux_control", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/mt6359.c", i32 511, i32 38}
!441 = !{ptr @ul_src_mux_map_enum, !442, !"ul_src_mux_map_enum", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/mt6359.c", i32 504, i32 8}
!443 = !{ptr @.str.186, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/mt6359.c", i32 495, i32 2}
!445 = !{ptr @.str.187, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/mt6359.c", i32 496, i32 2}
!447 = !{ptr @ul_src_mux_map, !448, !"ul_src_mux_map", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/mt6359.c", i32 494, i32 27}
!449 = !{ptr @ul_src_mux_map_value, !450, !"ul_src_mux_map_value", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/mt6359.c", i32 499, i32 12}
!451 = !{ptr @ul2_src_mux_control, !452, !"ul2_src_mux_control", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/mt6359.c", i32 521, i32 38}
!453 = !{ptr @ul2_src_mux_map_enum, !454, !"ul2_src_mux_map_enum", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/mt6359.c", i32 514, i32 8}
!455 = !{ptr @.str.188, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/mt6359.c", i32 590, i32 2}
!457 = !{ptr @dmic0_mux_control, !458, !"dmic0_mux_control", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/mt6359.c", i32 589, i32 38}
!459 = !{ptr @dmic0_mux_map_enum, !460, !"dmic0_mux_map_enum", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/mt6359.c", i32 582, i32 8}
!461 = !{ptr @.str.189, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/mt6359.c", i32 569, i32 2}
!463 = !{ptr @.str.190, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/mt6359.c", i32 570, i32 2}
!465 = !{ptr @.str.191, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/mt6359.c", i32 571, i32 2}
!467 = !{ptr @.str.192, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/mt6359.c", i32 572, i32 2}
!469 = !{ptr @dmic_mux_map, !470, !"dmic_mux_map", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/mt6359.c", i32 568, i32 27}
!471 = !{ptr @dmic_mux_map_value, !472, !"dmic_mux_map_value", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/mt6359.c", i32 575, i32 12}
!473 = !{ptr @dmic1_mux_control, !474, !"dmic1_mux_control", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/mt6359.c", i32 600, i32 38}
!475 = !{ptr @dmic1_mux_map_enum, !476, !"dmic1_mux_map_enum", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/mt6359.c", i32 593, i32 8}
!477 = !{ptr @dmic2_mux_control, !478, !"dmic2_mux_control", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/mt6359.c", i32 611, i32 38}
!479 = !{ptr @dmic2_mux_map_enum, !480, !"dmic2_mux_map_enum", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/mt6359.c", i32 604, i32 8}
!481 = !{ptr @.str.193, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/mt6359.c", i32 634, i32 2}
!483 = !{ptr @adc_left_mux_control, !484, !"adc_left_mux_control", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/mt6359.c", i32 633, i32 38}
!485 = !{ptr @adc_left_mux_map_enum, !486, !"adc_left_mux_map_enum", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/mt6359.c", i32 626, i32 8}
!487 = !{ptr @.str.194, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/soc/codecs/mt6359.c", i32 616, i32 2}
!489 = !{ptr @.str.195, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/mt6359.c", i32 616, i32 18}
!491 = !{ptr @.str.196, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/mt6359.c", i32 616, i32 39}
!493 = !{ptr @adc_left_mux_map, !494, !"adc_left_mux_map", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/mt6359.c", i32 615, i32 27}
!495 = !{ptr @adc_mux_map_value, !496, !"adc_mux_map_value", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/mt6359.c", i32 619, i32 12}
!497 = !{ptr @.str.197, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/mt6359.c", i32 649, i32 2}
!499 = !{ptr @adc_right_mux_control, !500, !"adc_right_mux_control", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/mt6359.c", i32 648, i32 38}
!501 = !{ptr @adc_right_mux_map_enum, !502, !"adc_right_mux_map_enum", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/mt6359.c", i32 641, i32 8}
!503 = !{ptr @.str.198, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/mt6359.c", i32 638, i32 18}
!505 = !{ptr @adc_right_mux_map, !506, !"adc_right_mux_map", i1 false, i1 false}
!506 = !{!"../sound/soc/codecs/mt6359.c", i32 637, i32 27}
!507 = !{ptr @.str.199, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/mt6359.c", i32 664, i32 2}
!509 = !{ptr @adc_3_mux_control, !510, !"adc_3_mux_control", i1 false, i1 false}
!510 = !{!"../sound/soc/codecs/mt6359.c", i32 663, i32 38}
!511 = !{ptr @adc_3_mux_map_enum, !512, !"adc_3_mux_map_enum", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/mt6359.c", i32 656, i32 8}
!513 = !{ptr @.str.200, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/mt6359.c", i32 653, i32 18}
!515 = !{ptr @adc_3_mux_map, !516, !"adc_3_mux_map", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/mt6359.c", i32 652, i32 27}
!517 = !{ptr @.str.201, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/mt6359.c", i32 1457, i32 2}
!519 = !{ptr @mt_adc_l_event.__UNIQUE_ID_ddebug308, !518, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!520 = !{ptr @.str.202, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../sound/soc/codecs/mt6359.c", i32 1481, i32 2}
!522 = !{ptr @mt_adc_r_event.__UNIQUE_ID_ddebug309, !521, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!523 = !{ptr @.str.203, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/mt6359.c", i32 1505, i32 2}
!525 = !{ptr @mt_adc_3_event.__UNIQUE_ID_ddebug310, !524, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!526 = !{ptr @.str.204, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/soc/codecs/mt6359.c", i32 1530, i32 2}
!528 = !{ptr @.str.205, !527, !"<string literal>", i1 false, i1 false}
!529 = !{ptr @mt_pga_l_mux_event.__UNIQUE_ID_ddebug311, !527, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!530 = !{ptr @.str.206, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../sound/soc/codecs/mt6359.c", i32 684, i32 2}
!532 = !{ptr @pga_left_mux_control, !533, !"pga_left_mux_control", i1 false, i1 false}
!533 = !{!"../sound/soc/codecs/mt6359.c", i32 683, i32 38}
!534 = !{ptr @pga_left_mux_map_enum, !535, !"pga_left_mux_map_enum", i1 false, i1 false}
!535 = !{!"../sound/soc/codecs/mt6359.c", i32 676, i32 8}
!536 = !{ptr @.str.207, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/mt6359.c", i32 667, i32 2}
!538 = !{ptr @pga_l_mux_map, !539, !"pga_l_mux_map", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/mt6359.c", i32 666, i32 27}
!540 = !{ptr @pga_l_mux_map_value, !541, !"pga_l_mux_map_value", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/mt6359.c", i32 670, i32 12}
!542 = !{ptr @.str.208, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../sound/soc/codecs/mt6359.c", i32 1543, i32 2}
!544 = !{ptr @mt_pga_r_mux_event.__UNIQUE_ID_ddebug312, !543, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!545 = !{ptr @.str.209, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../sound/soc/codecs/mt6359.c", i32 705, i32 2}
!547 = !{ptr @pga_right_mux_control, !548, !"pga_right_mux_control", i1 false, i1 false}
!548 = !{!"../sound/soc/codecs/mt6359.c", i32 704, i32 38}
!549 = !{ptr @pga_right_mux_map_enum, !550, !"pga_right_mux_map_enum", i1 false, i1 false}
!550 = !{!"../sound/soc/codecs/mt6359.c", i32 697, i32 8}
!551 = !{ptr @pga_r_mux_map, !552, !"pga_r_mux_map", i1 false, i1 false}
!552 = !{!"../sound/soc/codecs/mt6359.c", i32 686, i32 27}
!553 = !{ptr @pga_r_mux_map_value, !554, !"pga_r_mux_map_value", i1 false, i1 false}
!554 = !{!"../sound/soc/codecs/mt6359.c", i32 690, i32 12}
!555 = !{ptr @.str.210, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../sound/soc/codecs/mt6359.c", i32 1556, i32 2}
!557 = !{ptr @mt_pga_3_mux_event.__UNIQUE_ID_ddebug313, !556, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!558 = !{ptr @.str.211, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../sound/soc/codecs/mt6359.c", i32 725, i32 2}
!560 = !{ptr @pga_3_mux_control, !561, !"pga_3_mux_control", i1 false, i1 false}
!561 = !{!"../sound/soc/codecs/mt6359.c", i32 724, i32 38}
!562 = !{ptr @pga_3_mux_map_enum, !563, !"pga_3_mux_map_enum", i1 false, i1 false}
!563 = !{!"../sound/soc/codecs/mt6359.c", i32 717, i32 8}
!564 = !{ptr @pga_3_mux_map, !565, !"pga_3_mux_map", i1 false, i1 false}
!565 = !{!"../sound/soc/codecs/mt6359.c", i32 707, i32 27}
!566 = !{ptr @pga_3_mux_map_value, !567, !"pga_3_mux_map_value", i1 false, i1 false}
!567 = !{!"../sound/soc/codecs/mt6359.c", i32 711, i32 12}
!568 = !{ptr @.str.212, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../sound/soc/codecs/mt6359.c", i32 1579, i32 3}
!570 = !{ptr @.str.213, !569, !"<string literal>", i1 false, i1 false}
!571 = !{ptr @.str.214, !569, !"<string literal>", i1 false, i1 false}
!572 = !{ptr @mt_pga_l_event._entry, !569, !"_entry", i1 false, i1 false}
!573 = !{ptr @mt_pga_l_event._entry_ptr, !569, !"_entry_ptr", i1 false, i1 false}
!574 = !{ptr @.str.215, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../sound/soc/codecs/mt6359.c", i32 1638, i32 3}
!576 = !{ptr @mt_pga_r_event._entry, !575, !"_entry", i1 false, i1 false}
!577 = !{ptr @mt_pga_r_event._entry_ptr, !575, !"_entry_ptr", i1 false, i1 false}
!578 = !{ptr @.str.216, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../sound/soc/codecs/mt6359.c", i32 1694, i32 3}
!580 = !{ptr @mt_pga_3_event._entry, !579, !"_entry", i1 false, i1 false}
!581 = !{ptr @mt_pga_3_event._entry_ptr, !579, !"_entry_ptr", i1 false, i1 false}
!582 = !{ptr @.str.217, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../sound/soc/codecs/mt6359.c", i32 1236, i32 2}
!584 = !{ptr @.str.218, !583, !"<string literal>", i1 false, i1 false}
!585 = !{ptr @mt_mic_bias_0_event.__UNIQUE_ID_ddebug302, !583, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!586 = !{ptr @.str.219, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../sound/soc/codecs/mt6359.c", i32 1290, i32 2}
!588 = !{ptr @mt_mic_bias_1_event.__UNIQUE_ID_ddebug303, !587, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!589 = !{ptr @.str.220, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../sound/soc/codecs/mt6359.c", i32 1323, i32 2}
!591 = !{ptr @mt_mic_bias_2_event.__UNIQUE_ID_ddebug304, !590, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!592 = !{ptr @mt6359_dapm_routes, !593, !"mt6359_dapm_routes", i1 false, i1 false}
!593 = !{!"../sound/soc/codecs/mt6359.c", i32 2313, i32 40}
!594 = !{ptr @.str.221, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../sound/soc/codecs/mt6359.c", i32 2589, i32 11}
!596 = !{ptr @.str.222, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../sound/soc/codecs/mt6359.c", i32 2615, i32 11}
!598 = !{ptr @mt6359_dai_driver, !599, !"mt6359_dai_driver", i1 false, i1 false}
!599 = !{!"../sound/soc/codecs/mt6359.c", i32 2586, i32 34}
!600 = !{ptr @mt6359_codec_dai_ops, !601, !"mt6359_codec_dai_ops", i1 false, i1 false}
!601 = !{!"../sound/soc/codecs/mt6359.c", i32 2573, i32 37}
!602 = !{ptr @.str.223, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../sound/soc/codecs/mt6359.c", i32 2551, i32 2}
!604 = !{ptr @.str.224, !603, !"<string literal>", i1 false, i1 false}
!605 = !{ptr @mt6359_codec_dai_startup.__UNIQUE_ID_ddebug315, !603, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!606 = !{ptr @.str.225, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../sound/soc/codecs/mt6359.c", i32 2566, i32 2}
!608 = !{ptr @mt6359_codec_dai_shutdown.__UNIQUE_ID_ddebug316, !607, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!609 = !{ptr @.str.226, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../sound/soc/codecs/mt6359.c", i32 2534, i32 2}
!611 = !{ptr @.str.227, !610, !"<string literal>", i1 false, i1 false}
!612 = !{ptr @mt6359_codec_dai_hw_params.__UNIQUE_ID_ddebug314, !610, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!613 = !{i32 1, !"wchar_size", i32 2}
!614 = !{i32 1, !"min_enum_size", i32 4}
!615 = !{i32 8, !"branch-target-enforcement", i32 0}
!616 = !{i32 8, !"sign-return-address", i32 0}
!617 = !{i32 8, !"sign-return-address-all", i32 0}
!618 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!619 = !{i32 7, !"uwtable", i32 1}
!620 = !{i32 7, !"frame-pointer", i32 2}
!621 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!622 = !{i64 2148839195, i64 2148839200, i64 2148839213, i64 2148839257, i64 2148839291, i64 2148839312}
!623 = !{!"auto-init"}
