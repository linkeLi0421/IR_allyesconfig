; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/nau8824.c_pt.bc'
source_filename = "../sound/soc/codecs/nau8824.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nau8824_enable_jack_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_nau8824_enable_jack_detect\09\09\09\09"
module asm "\09.long\09__crc_nau8824_enable_jack_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nau8824_enable_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22nau8824_enable_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_nau8824_enable_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nau8824_components\22, \22a\22\09"
module asm "\09.weak\09__crc_nau8824_components\09\09\09\09"
module asm "\09.long\09__crc_nau8824_components\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nau8824_components:\09\09\09\09\09"
module asm "\09.asciz \09\22nau8824_components\22\09\09\09\09\09"
module asm "__kstrtabns_nau8824_components:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.nau8824_fll_attr = type { i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.nau8824_osr_attr = type { i32, i32 }
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
%struct.nau8824 = type { ptr, ptr, ptr, ptr, %struct.work_struct, %struct.semaphore, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__param_str_quirk = internal constant [22 x i8] c"snd_soc_nau8824.quirk\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@quirk_override = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_quirk = internal constant %struct.kernel_param { ptr @__param_str_quirk, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @quirk_override } }, section "__param", align 4
@__UNIQUE_ID_quirktype294 = internal constant [36 x i8] c"snd_soc_nau8824.parmtype=quirk:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_quirk295 = internal constant [57 x i8] c"snd_soc_nau8824.parm=quirk:Board-specific quirk override\00", section ".modinfo", align 1
@nau8824_enable_jack_detect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&nau8824->jdet_work)\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nau8824\00", [24 x i8] zeroinitializer }, align 32
@nau8824_enable_jack_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1617, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot request irq %d (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nau8824_enable_jack_detect\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/nau8824.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nau8824_enable_jack_detect._entry_ptr = internal global ptr @nau8824_enable_jack_detect._entry, section ".printk_index", align 4
@__kstrtab_nau8824_enable_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_nau8824_enable_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_nau8824_enable_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nau8824_enable_jack_detect to i32), ptr @__kstrtab_nau8824_enable_jack_detect, ptr @__kstrtabns_nau8824_enable_jack_detect }, section "___ksymtab_gpl+nau8824_enable_jack_detect", align 4
@nau8824_quirk = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfg-spk:1\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfg-spk:2\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_nau8824_components = external dso_local constant [0 x i8], align 1
@__kstrtabns_nau8824_components = external dso_local constant [0 x i8], align 1
@__ksymtab_nau8824_components = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nau8824_components to i32), ptr @__kstrtab_nau8824_components, ptr @__kstrtabns_nau8824_components }, section "___ksymtab_gpl+nau8824_components", align 4
@__initcall__kmod_snd_soc_nau8824__315_1991_nau8824_i2c_driver_init6 = internal global ptr @nau8824_i2c_driver_init, section ".initcall6.init", align 4
@nau8824_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @nau8824_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nau8824_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @nau8824_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_nau8824_i2c_driver_exit = internal global ptr @nau8824_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description316 = internal constant [49 x i8] c"snd_soc_nau8824.description=ASoC NAU88L24 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author317 = internal constant [53 x i8] c"snd_soc_nau8824.author=John Hsu <KCHSU0@nuvoton.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file318 = internal constant [54 x i8] c"snd_soc_nau8824.file=sound/soc/codecs/snd-soc-nau8824\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [31 x i8] c"snd_soc_nau8824.license=GPL v2\00", section ".modinfo", align 1
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SAR\00", [28 x i8] zeroinitializer }, align 32
@nau8824_jdet_work.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_nau8824\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nau8824_jdet_work\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SAR ADC data 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@nau8824_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 957, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read irq status\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nau8824_interrupt\00", [46 x i8] zeroinitializer }, align 32
@nau8824_interrupt._entry_ptr = internal global ptr @nau8824_interrupt._entry, section ".printk_index", align 4
@nau8824_interrupt.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IRQ %x\0A\00", [24 x i8] zeroinitializer }, align 32
@nau8824_interrupt.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.15, ptr @.str.4, ptr @.str.17, i8 0, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"button %x pressed\0A\00", [45 x i8] zeroinitializer }, align 32
@nau8824_config_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 1419, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nau8824_config_sysclk\00", [42 x i8] zeroinitializer }, align 32
@nau8824_config_sysclk._entry_ptr = internal global ptr @nau8824_config_sysclk._entry, section ".printk_index", align 4
@nau8824_config_sysclk.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 1, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@nau8824_sema_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 213, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Acquire semaphore timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nau8824_sema_acquire\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nau8824_sema_acquire._entry_ptr = internal global ptr @nau8824_sema_acquire._entry, section ".printk_index", align 4
@nau8824_sema_acquire._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.4, i32 217, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Acquire semaphore fail\0A\00", [40 x i8] zeroinitializer }, align 32
@nau8824_sema_acquire._entry_ptr.26 = internal global ptr @nau8824_sema_acquire._entry.24, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nau8824_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,nau8824\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nau8824_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"nau8824\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nau8824_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nau8824_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr @nau8824_writeable_reg, ptr @nau8824_readable_reg, ptr @nau8824_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 129, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nau8824_reg_defaults, i32 98, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nau8824:1930:(&nau8824_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@nau8824_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 1947, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to read device id from the NAU8824: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nau8824_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@nau8824_i2c_probe._entry_ptr = internal global ptr @nau8824_i2c_probe._entry, section ".printk_index", align 4
@nau8824_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @nau8824_snd_controls, i32 34, ptr @nau8824_dapm_widgets, i32 46, ptr @nau8824_dapm_routes, i32 54, ptr @nau8824_component_probe, ptr null, ptr @nau8824_suspend, ptr @nau8824_resume, ptr null, ptr null, ptr null, ptr null, ptr @nau8824_set_sysclk, ptr @nau8824_set_pll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nau8824_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@nau8824_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.203, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @nau8824_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.150, i64 73014445060, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.152, i64 73014445060, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nuvoton,jkdet-polarity\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nuvoton,micbias-voltage\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nuvoton,vref-impedance\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nuvoton,sar-threshold-num\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nuvoton,sar-threshold\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nuvoton,sar-hysteresis\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nuvoton,sar-voltage\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nuvoton,sar-compare-time\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nuvoton,sar-sampling-time\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nuvoton,short-key-debounce\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nuvoton,jack-eject-debounce\00", [36 x i8] zeroinitializer }, align 32
@nau8824_reg_defaults = internal constant { [98 x %struct.reg_default], [208 x i8] } { [98 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 12582 }, %struct.reg_default { i32 6, i32 8 }, %struct.reg_default { i32 7, i32 16 }, %struct.reg_default { i32 8, i32 49152 }, %struct.reg_default { i32 9, i32 24576 }, %struct.reg_default { i32 10, i32 61756 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 4096 }, %struct.reg_default { i32 19, i32 21 }, %struct.reg_default { i32 20, i32 272 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 28, i32 11 }, %struct.reg_default { i32 29, i32 16 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 2 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 4396 }, %struct.reg_default { i32 42, i32 11308 }, %struct.reg_default { i32 43, i32 11308 }, %struct.reg_default { i32 45, i32 256 }, %struct.reg_default { i32 46, i32 256 }, %struct.reg_default { i32 47, i32 256 }, %struct.reg_default { i32 48, i32 256 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 256 }, %struct.reg_default { i32 51, i32 256 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 56, i32 5254 }, %struct.reg_default { i32 57, i32 3858 }, %struct.reg_default { i32 58, i32 9727 }, %struct.reg_default { i32 59, i32 13399 }, %struct.reg_default { i32 60, i32 5254 }, %struct.reg_default { i32 61, i32 3858 }, %struct.reg_default { i32 62, i32 9727 }, %struct.reg_default { i32 63, i32 13399 }, %struct.reg_default { i32 64, i32 512 }, %struct.reg_default { i32 65, i32 512 }, %struct.reg_default { i32 66, i32 512 }, %struct.reg_default { i32 67, i32 512 }, %struct.reg_default { i32 69, i32 5254 }, %struct.reg_default { i32 70, i32 3858 }, %struct.reg_default { i32 71, i32 9721 }, %struct.reg_default { i32 72, i32 13399 }, %struct.reg_default { i32 73, i32 512 }, %struct.reg_default { i32 74, i32 512 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 83, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 86, i32 61439 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 88, i32 6897 }, %struct.reg_default { i32 89, i32 255 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 103, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 113, i32 17 }, %struct.reg_default { i32 114, i32 32 }, %struct.reg_default { i32 115, i32 8 }, %struct.reg_default { i32 116, i32 6 }, %struct.reg_default { i32 117, i32 0 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 121, i32 0 }, %struct.reg_default { i32 122, i32 0 }, %struct.reg_default { i32 123, i32 0 }, %struct.reg_default { i32 124, i32 0 }, %struct.reg_default { i32 127, i32 0 }, %struct.reg_default { i32 128, i32 768 }, %struct.reg_default { i32 129, i32 19 }], [208 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@nau8824_print_device_properties.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 1, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nau8824_print_device_properties\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jkdet-polarity:       %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8824_print_device_properties.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.4, ptr @.str.45, i8 1, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"micbias-voltage:      %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8824_print_device_properties.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.4, ptr @.str.46, i8 1, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vref-impedance:       %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8824_print_device_properties.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.4, ptr @.str.47, i8 1, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sar-threshold-num:    %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8824_print_device_properties.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.4, ptr @.str.48, i8 1, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sar-threshold[%d]=%x\0A\00", [42 x i8] zeroinitializer }, align 32
@nau8824_print_device_properties.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.4, ptr @.str.49, i8 1, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sar-hysteresis:       %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8824_print_device_properties.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.4, ptr @.str.50, i8 1, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sar-voltage:          %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8824_print_device_properties.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.4, ptr @.str.51, i8 1, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sar-compare-time:     %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8824_print_device_properties.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.4, ptr @.str.52, i8 1, i8 -64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sar-sampling-time:    %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8824_print_device_properties.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.4, ptr @.str.53, i8 1, i8 -64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"short-key-debounce:   %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8824_print_device_properties.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.4, ptr @.str.54, i8 1, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jack-eject-debounce:  %d\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@nau8824_snd_controls = internal constant { [34 x %struct.snd_kcontrol_new], [384 x i8] } { [34 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @nau8824_companding_adc_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @nau8824_companding_dac_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @nau8824_adc_decimation_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @nau8824_dac_oversampl_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @spk_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @spk_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @spk_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @spk_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @hp_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @hp_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @hp_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @hp_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @dmic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @dmic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @dmic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @dmic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @nau8824_adc_ch0_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @nau8824_adc_ch1_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @nau8824_adc_ch2_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @nau8824_adc_ch3_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @nau8824_dac_left_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @nau8824_dac_right_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }], [384 x i8] zeroinitializer }, align 32
@nau8824_dapm_routes = internal constant { [54 x %struct.snd_soc_dapm_route], [680 x i8] } { [54 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.181, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.181, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.181, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.181, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.186, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.188, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.186, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.188, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.9, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.153, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.155, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.153, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.155, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.196, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.194, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.196, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.194, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }], [680 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC Companding\00", [17 x i8] zeroinitializer }, align 32
@nau8824_companding_adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 28, i8 12, i8 12, i32 4, i32 3, ptr @nau8824_companding, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC Companding\00", [17 x i8] zeroinitializer }, align 32
@nau8824_companding_dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 28, i8 14, i8 14, i32 4, i32 3, ptr @nau8824_companding, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC Decimation Rate\00", [44 x i8] zeroinitializer }, align 32
@nau8824_adc_decimation_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 36, i8 0, i8 0, i32 4, i32 3, ptr @nau8824_adc_decimation, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Oversampling Rate\00", [42 x i8] zeroinitializer }, align 32
@nau8824_dac_oversampl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 0, i8 0, i32 5, i32 7, ptr @nau8824_dac_oversampl, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Speaker Right DACR Volume\00", [38 x i8] zeroinitializer }, align 32
@spk_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 8, i32 0, i32 2400], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 109, i32 109, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Speaker Left DACL Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 110, i32 110, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Speaker Left DACR Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 109, i32 109, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Speaker Right DACL Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 110, i32 110, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Headphone Right DACR Volume\00", [36 x i8] zeroinitializer }, align 32
@hp_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -3000, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 123, i32 123, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Headphone Left DACL Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 123, i32 123, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Headphone Right DACL Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 124, i32 124, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Headphone Left DACR Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 124, i32 124, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC1 Volume\00", [20 x i8] zeroinitializer }, align 32
@mic_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 120, i32 120, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 120, i32 120, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC1 Volume\00", [19 x i8] zeroinitializer }, align 32
@dmic_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12800, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 356, i32 356, i32 45, i32 45, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC2 Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 356, i32 356, i32 46, i32 46, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC3 Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 356, i32 356, i32 47, i32 47, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC4 Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 356, i32 356, i32 48, i32 48, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC CH0 Select\00", [17 x i8] zeroinitializer }, align 32
@nau8824_adc_ch0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 9, i8 9, i32 4, i32 3, ptr @nau8824_input_channel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC CH1 Select\00", [17 x i8] zeroinitializer }, align 32
@nau8824_adc_ch1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 9, i8 9, i32 4, i32 3, ptr @nau8824_input_channel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC CH2 Select\00", [17 x i8] zeroinitializer }, align 32
@nau8824_adc_ch2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 9, i8 9, i32 4, i32 3, ptr @nau8824_input_channel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC CH3 Select\00", [17 x i8] zeroinitializer }, align 32
@nau8824_adc_ch3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 48, i8 9, i8 9, i32 4, i32 3, ptr @nau8824_input_channel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC CH0 TX Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC CH1 TX Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC CH2 TX Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC CH3 TX Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DACL Channel Source\00", [44 x i8] zeroinitializer }, align 32
@nau8824_dac_left_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 6, i8 6, i32 4, i32 3, ptr @nau8824_tdm_slot, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DACR Channel Source\00", [44 x i8] zeroinitializer }, align 32
@nau8824_dac_right_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 4, i8 4, i32 4, i32 3, ptr @nau8824_tdm_slot, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACL LR Mix\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 49, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACR LR Mix\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 49, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"THD for key media\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 21, i32 21, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"THD for key voice command\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 21, i32 21, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"THD for key volume up\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 22, i32 22, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"THD for key volume down\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 22, i32 22, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@nau8824_companding = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NC\00", [29 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"u-law\00", [26 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"A-law\00", [26 x i8] zeroinitializer }, align 32
@nau8824_adc_decimation = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119], [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"64\00", [29 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"128\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"256\00", [28 x i8] zeroinitializer }, align 32
@nau8824_dac_oversampl = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.117, ptr @.str.119, ptr @.str.118, ptr @.str.120, ptr @.str.116], [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nau8824_input_channel = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Input CH0\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Input CH1\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Input CH2\00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Input CH3\00", [22 x i8] zeroinitializer }, align 32
@nau8824_tdm_slot = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128], [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Slot 0\00", [25 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Slot 1\00", [25 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Slot 2\00", [25 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Slot 3\00", [25 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"System Clock\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HSMIC1\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HSMIC2\00", [25 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC3\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC4\00", [26 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC12 Power\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC34 Power\00", [19 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMIC Clock\00", [21 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC1 Enable\00", [19 x i8] zeroinitializer }, align 32
@nau8824_adc_ch0_dmic = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC2 Enable\00", [19 x i8] zeroinitializer }, align 32
@nau8824_adc_ch1_dmic = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC3 Enable\00", [19 x i8] zeroinitializer }, align 32
@nau8824_adc_ch2_dmic = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.184 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC4 Enable\00", [19 x i8] zeroinitializer }, align 32
@nau8824_adc_ch3_dmic = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left ADC\00", [23 x i8] zeroinitializer }, align 32
@nau8824_adc_left_mixer = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right ADC\00", [22 x i8] zeroinitializer }, align 32
@nau8824_adc_right_mixer = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.190 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCL\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCR\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIFTX\00", [26 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIFRX\00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DACL Clock\00", [21 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DACR Clock\00", [21 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DACL Mux\00", [23 x i8] zeroinitializer }, align 32
@nau8824_dacl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @nau8824_dacl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DACR Mux\00", [23 x i8] zeroinitializer }, align 32
@nau8824_dacr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @nau8824_dacr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Output DACL\00", [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Output DACR\00", [20 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ClassD\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left Headphone\00", [17 x i8] zeroinitializer }, align 32
@nau8824_hp_left_mixer = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right Headphone\00", [16 x i8] zeroinitializer }, align 32
@nau8824_hp_right_mixer = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.198 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge Pump\00", [20 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Output Driver L\00", [16 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Output Driver R\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Main Driver L\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Main Driver R\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HP Boost Driver\00", [16 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Class G\00", [24 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKOUTL\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKOUTR\00", [24 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOR\00", [27 x i8] zeroinitializer }, align 32
@nau8824_dapm_widgets = internal constant { [46 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2056 x i8] } { [46 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @system_clock_control, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.10, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.9, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 116, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @dmic_clock_control, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @nau8824_adc_ch0_dmic, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @nau8824_adc_ch1_dmic, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @nau8824_adc_ch2_dmic, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @nau8824_adc_ch3_dmic, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @nau8824_adc_left_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @nau8824_adc_right_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 114, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 114, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.149, ptr @.str.150, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.151, ptr @.str.152, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 115, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 115, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 115, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 115, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @nau8824_dacl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @nau8824_dacr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 128, i8 8, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @nau8824_output_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 128, i8 9, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @nau8824_output_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 109, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @nau8824_spk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 80, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @nau8824_hp_left_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 80, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @nau8824_hp_right_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 128, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @nau8824_pump_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 118, i8 9, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 80, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2056 x i8] zeroinitializer }, align 32
@system_clock_control.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.176, ptr @.str.4, ptr @.str.177, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"system_clock_control\00", [43 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"system clock control : POWER OFF\0A\00", [62 x i8] zeroinitializer }, align 32
@system_clock_control.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.176, ptr @.str.4, ptr @.str.178, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"system clock control : POWER ON\0A\00", [63 x i8] zeroinitializer }, align 32
@dmic_clock_control.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.179, ptr @.str.4, ptr @.str.180, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dmic_clock_control\00", [45 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dmic src %d for mclk %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 119, i32 119, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HSMIC Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 119, i32 119, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 119, i32 119, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 119, i32 119, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACL Source\00", [20 x i8] zeroinitializer }, align 32
@nau8824_dacl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 50, i8 9, i8 9, i32 2, i32 1, ptr @nau8824_dac_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@nau8824_dac_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.153, ptr @.str.155], [24 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACR Source\00", [20 x i8] zeroinitializer }, align 32
@nau8824_dacr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 51, i8 9, i8 9, i32 2, i32 1, ptr @nau8824_dac_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAC Right Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 107, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC Left Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 107, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.198 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 107, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 107, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@nau8824_set_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.4, i32 1353, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported input clock %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nau8824_set_pll\00", [16 x i8] zeroinitializer }, align 32
@nau8824_set_pll._entry_ptr = internal global ptr @nau8824_set_pll._entry, section ".printk_index", align 4
@nau8824_set_pll.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.201, ptr @.str.4, ptr @.str.202, i8 1, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.202 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"mclk_src=%x ratio=%x fll_frac=%x fll_int=%x clk_ref_div=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@fll_pre_scalar = internal constant { [4 x %struct.nau8824_fll_attr], [32 x i8] } { [4 x %struct.nau8824_fll_attr] [%struct.nau8824_fll_attr { i32 1, i32 0 }, %struct.nau8824_fll_attr { i32 2, i32 1 }, %struct.nau8824_fll_attr { i32 4, i32 2 }, %struct.nau8824_fll_attr { i32 8, i32 3 }], [32 x i8] zeroinitializer }, align 32
@fll_ratio = internal constant { [7 x %struct.nau8824_fll_attr], [40 x i8] } { [7 x %struct.nau8824_fll_attr] [%struct.nau8824_fll_attr { i32 512000, i32 1 }, %struct.nau8824_fll_attr { i32 256000, i32 2 }, %struct.nau8824_fll_attr { i32 128000, i32 4 }, %struct.nau8824_fll_attr { i32 64000, i32 8 }, %struct.nau8824_fll_attr { i32 32000, i32 16 }, %struct.nau8824_fll_attr { i32 8000, i32 32 }, %struct.nau8824_fll_attr { i32 4000, i32 64 }], [40 x i8] zeroinitializer }, align 32
@mclk_src_scaling = internal constant { [10 x %struct.nau8824_fll_attr], [48 x i8] } { [10 x %struct.nau8824_fll_attr] [%struct.nau8824_fll_attr { i32 1, i32 0 }, %struct.nau8824_fll_attr { i32 2, i32 2 }, %struct.nau8824_fll_attr { i32 4, i32 3 }, %struct.nau8824_fll_attr { i32 8, i32 4 }, %struct.nau8824_fll_attr { i32 16, i32 5 }, %struct.nau8824_fll_attr { i32 32, i32 6 }, %struct.nau8824_fll_attr { i32 3, i32 7 }, %struct.nau8824_fll_attr { i32 6, i32 10 }, %struct.nau8824_fll_attr { i32 12, i32 11 }, %struct.nau8824_fll_attr { i32 24, i32 12 }], [48 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nau8824-hifi\00", [19 x i8] zeroinitializer }, align 32
@nau8824_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @nau8824_set_fmt, ptr null, ptr @nau8824_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nau8824_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@osr_dac_sel = internal constant { [5 x %struct.nau8824_osr_attr], [56 x i8] } { [5 x %struct.nau8824_osr_attr] [%struct.nau8824_osr_attr { i32 64, i32 2 }, %struct.nau8824_osr_attr { i32 256, i32 0 }, %struct.nau8824_osr_attr { i32 128, i32 1 }, %struct.nau8824_osr_attr zeroinitializer, %struct.nau8824_osr_attr { i32 32, i32 3 }], [56 x i8] zeroinitializer }, align 32
@osr_adc_sel = internal constant { [4 x %struct.nau8824_osr_attr], [32 x i8] } { [4 x %struct.nau8824_osr_attr] [%struct.nau8824_osr_attr { i32 32, i32 3 }, %struct.nau8824_osr_attr { i32 64, i32 2 }, %struct.nau8824_osr_attr { i32 128, i32 1 }, %struct.nau8824_osr_attr { i32 256, i32 0 }], [32 x i8] zeroinitializer }, align 32
@nau8824_clock_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.205, ptr @.str.4, i32 1033, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"exceed the maximum frequency of CLK_ADC or CLK_DAC\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nau8824_clock_check\00", [44 x i8] zeroinitializer }, align 32
@nau8824_clock_check._entry_ptr = internal global ptr @nau8824_clock_check._entry, section ".printk_index", align 4
@switch.table.nau8824_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 8, i32 0, i32 12], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.206 = internal global [84 x i64] [i64 82, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 13, i64 15, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 26, i64 28, i64 29, i64 30, i64 31, i64 32, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 69, i64 70, i64 71, i64 72, i64 80, i64 81, i64 86, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 127, i64 128]
@__sancov_gen_cov_switch_values.207 = internal global [95 x i64] [i64 93, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 13, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 26, i64 28, i64 29, i64 30, i64 31, i64 32, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 80, i64 81, i64 83, i64 84, i64 86, i64 88, i64 89, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 127, i64 128, i64 129]
@__sancov_gen_cov_switch_values.208 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 16, i64 17, i64 64, i64 65, i64 66, i64 67, i64 73, i64 74, i64 83, i64 84, i64 88, i64 89, i64 129]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.213 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.215 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.216 = private unnamed_addr constant [15 x i8] c"quirk_override\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 35, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1611, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1614, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1616, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [14 x i8] c"nau8824_quirk\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 34, i32 12 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1907, i32 10 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1909, i32 10 }
@___asan_gen_.255 = private unnamed_addr constant [19 x i8] c"nau8824_i2c_driver\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1982, i32 26 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 878, i32 38 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 879, i32 38 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 886, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 957, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 960, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 981, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1419, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1423, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 213, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 217, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant [15 x i8] c"nau8824_of_ids\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1967, i32 34 }
@___asan_gen_.321 = private unnamed_addr constant [16 x i8] c"nau8824_i2c_ids\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1960, i32 35 }
@___asan_gen_.324 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [22 x i8] c"nau8824_regmap_config\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1579, i32 35 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1930, i32 20 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1946, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [25 x i8] c"nau8824_component_driver\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1530, i32 46 }
@___asan_gen_.345 = private unnamed_addr constant [12 x i8] c"nau8824_dai\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1560, i32 34 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1804, i32 38 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1808, i32 38 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1812, i32 38 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1816, i32 38 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1820, i32 44 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1828, i32 38 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1832, i32 38 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1836, i32 38 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1840, i32 38 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1844, i32 38 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1848, i32 38 }
@___asan_gen_.381 = private unnamed_addr constant [21 x i8] c"nau8824_reg_defaults\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 105, i32 33 }
@___asan_gen_.384 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 33, i32 31 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 34, i32 28 }
@___asan_gen_.391 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 35, i32 39 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1782, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1783, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1784, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1786, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1788, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1791, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1792, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1793, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1794, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1795, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1796, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant [21 x i8] c"nau8824_snd_controls\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 363, i32 38 }
@___asan_gen_.432 = private unnamed_addr constant [20 x i8] c"nau8824_dapm_routes\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 743, i32 40 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 364, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant [28 x i8] c"nau8824_companding_adc_enum\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 306, i32 30 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 365, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant [28 x i8] c"nau8824_companding_dac_enum\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 310, i32 30 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 367, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [28 x i8] c"nau8824_adc_decimation_enum\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 317, i32 30 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 368, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [27 x i8] c"nau8824_dac_oversampl_enum\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 324, i32 30 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 370, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [12 x i8] c"spk_vol_tlv\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 358, i32 14 }
@___asan_gen_.465 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 372, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 374, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 376, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 379, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant [11 x i8] c"hp_vol_tlv\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 359, i32 14 }
@___asan_gen_.484 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 381, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 383, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 385, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 388, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [12 x i8] c"mic_vol_tlv\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 360, i32 14 }
@___asan_gen_.503 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 390, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 393, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [13 x i8] c"dmic_vol_tlv\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 361, i32 14 }
@___asan_gen_.514 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 395, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 397, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 399, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 402, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [21 x i8] c"nau8824_adc_ch0_enum\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 331, i32 30 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 403, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant [21 x i8] c"nau8824_adc_ch1_enum\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 335, i32 30 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 404, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [21 x i8] c"nau8824_adc_ch2_enum\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 339, i32 30 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 405, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [21 x i8] c"nau8824_adc_ch3_enum\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 343, i32 30 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 407, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 408, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 409, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 410, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 412, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant [26 x i8] c"nau8824_dac_left_sel_enum\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 350, i32 30 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 413, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant [27 x i8] c"nau8824_dac_right_sel_enum\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 354, i32 30 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 415, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 416, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 418, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 420, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 422, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 424, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.603 = private unnamed_addr constant [19 x i8] c"nau8824_companding\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 303, i32 27 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 304, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 304, i32 9 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 304, i32 15 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 304, i32 24 }
@___asan_gen_.618 = private unnamed_addr constant [23 x i8] c"nau8824_adc_decimation\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 314, i32 27 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 315, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 315, i32 8 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 315, i32 14 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 315, i32 21 }
@___asan_gen_.633 = private unnamed_addr constant [22 x i8] c"nau8824_dac_oversampl\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 321, i32 27 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 322, i32 22 }
@___asan_gen_.639 = private unnamed_addr constant [22 x i8] c"nau8824_input_channel\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 328, i32 27 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 329, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 329, i32 15 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 329, i32 28 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 329, i32 41 }
@___asan_gen_.654 = private unnamed_addr constant [17 x i8] c"nau8824_tdm_slot\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 347, i32 27 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 348, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 348, i32 12 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 348, i32 22 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 348, i32 32 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 644, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 648, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 649, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 650, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 651, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 652, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 653, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 654, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 655, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 661, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 663, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 665, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 668, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant [21 x i8] c"nau8824_adc_ch0_dmic\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 582, i32 38 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 670, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c"nau8824_adc_ch1_dmic\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 586, i32 38 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 672, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant [21 x i8] c"nau8824_adc_ch2_dmic\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 590, i32 38 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 674, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant [21 x i8] c"nau8824_adc_ch3_dmic\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 594, i32 38 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 677, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant [23 x i8] c"nau8824_adc_left_mixer\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 598, i32 38 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 680, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant [24 x i8] c"nau8824_adc_right_mixer\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 605, i32 38 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 684, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 686, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 689, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 690, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 692, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 694, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 696, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 698, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 701, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant [17 x i8] c"nau8824_dacl_mux\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 636, i32 38 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 702, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant [17 x i8] c"nau8824_dacr_mux\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 639, i32 38 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 704, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 707, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 711, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 715, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant [22 x i8] c"nau8824_hp_left_mixer\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 612, i32 38 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 718, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant [23 x i8] c"nau8824_hp_right_mixer\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 619, i32 38 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 721, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 724, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 726, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 728, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 730, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 732, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 734, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 737, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 738, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 739, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 740, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant [21 x i8] c"nau8824_dapm_widgets\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 643, i32 41 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 511, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 524, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 575, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 583, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.859 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.860 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.861 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 599, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 601, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.870 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.871 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 637, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant [18 x i8] c"nau8824_dacl_enum\00", align 1
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 628, i32 8 }
@___asan_gen_.878 = private unnamed_addr constant [16 x i8] c"nau8824_dac_src\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 626, i32 27 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 640, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant [18 x i8] c"nau8824_dacr_enum\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 632, i32 8 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 613, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 615, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.895 = private unnamed_addr constant [21 x i8] c".compoundliteral.198\00", align 1
@___asan_gen_.896 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1353, i32 3 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1356, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant [15 x i8] c"fll_pre_scalar\00", align 1
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 79, i32 38 }
@___asan_gen_.912 = private unnamed_addr constant [10 x i8] c"fll_ratio\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 69, i32 38 }
@___asan_gen_.915 = private unnamed_addr constant [17 x i8] c"mclk_src_scaling\00", align 1
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 55, i32 38 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1561, i32 10 }
@___asan_gen_.921 = private unnamed_addr constant [16 x i8] c"nau8824_dai_ops\00", align 1
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1550, i32 37 }
@___asan_gen_.924 = private unnamed_addr constant [12 x i8] c"osr_dac_sel\00", align 1
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 90, i32 38 }
@___asan_gen_.927 = private unnamed_addr constant [12 x i8] c"osr_adc_sel\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 98, i32 38 }
@___asan_gen_.930 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.936 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.937 = private constant [30 x i8] c"../sound/soc/codecs/nau8824.c\00", align 1
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.937, i32 1033, i32 3 }
@___asan_gen_.939 = private unnamed_addr constant [31 x i8] c"switch.table.nau8824_hw_params\00", align 1
@llvm.compiler.used = appending global [286 x ptr] [ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_description316, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_license319, ptr @__UNIQUE_ID_quirk295, ptr @__UNIQUE_ID_quirktype294, ptr @__exitcall_nau8824_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_nau8824__315_1991_nau8824_i2c_driver_init6, ptr @__ksymtab_nau8824_components, ptr @__ksymtab_nau8824_enable_jack_detect, ptr @__param_quirk, ptr @nau8824_clock_check._entry, ptr @nau8824_clock_check._entry_ptr, ptr @nau8824_config_sysclk._entry, ptr @nau8824_config_sysclk._entry_ptr, ptr @nau8824_enable_jack_detect._entry, ptr @nau8824_enable_jack_detect._entry_ptr, ptr @nau8824_i2c_driver_exit, ptr @nau8824_i2c_probe._entry, ptr @nau8824_i2c_probe._entry_ptr, ptr @nau8824_interrupt._entry, ptr @nau8824_interrupt._entry_ptr, ptr @nau8824_sema_acquire._entry, ptr @nau8824_sema_acquire._entry.24, ptr @nau8824_sema_acquire._entry_ptr, ptr @nau8824_sema_acquire._entry_ptr.26, ptr @nau8824_set_pll._entry, ptr @nau8824_set_pll._entry_ptr, ptr @quirk_override, ptr @nau8824_enable_jack_detect.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nau8824_quirk, ptr @.str.7, ptr @.str.8, ptr @nau8824_i2c_driver, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @nau8824_of_ids, ptr @nau8824_i2c_ids, ptr @nau8824_i2c_probe._key, ptr @nau8824_regmap_config, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @nau8824_component_driver, ptr @nau8824_dai, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @nau8824_reg_defaults, ptr @sema_init.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @nau8824_snd_controls, ptr @nau8824_dapm_routes, ptr @.str.55, ptr @nau8824_companding_adc_enum, ptr @.str.56, ptr @nau8824_companding_dac_enum, ptr @.str.57, ptr @nau8824_adc_decimation_enum, ptr @.str.58, ptr @nau8824_dac_oversampl_enum, ptr @.str.59, ptr @spk_vol_tlv, ptr @.compoundliteral, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @hp_vol_tlv, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @mic_vol_tlv, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @dmic_vol_tlv, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @nau8824_adc_ch0_enum, ptr @.str.87, ptr @nau8824_adc_ch1_enum, ptr @.str.88, ptr @nau8824_adc_ch2_enum, ptr @.str.89, ptr @nau8824_adc_ch3_enum, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @nau8824_dac_left_sel_enum, ptr @.str.99, ptr @nau8824_dac_right_sel_enum, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @nau8824_companding, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @nau8824_adc_decimation, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @nau8824_dac_oversampl, ptr @.str.120, ptr @nau8824_input_channel, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @nau8824_tdm_slot, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @nau8824_adc_ch0_dmic, ptr @.str.142, ptr @nau8824_adc_ch1_dmic, ptr @.str.143, ptr @nau8824_adc_ch2_dmic, ptr @.str.144, ptr @nau8824_adc_ch3_dmic, ptr @.str.145, ptr @nau8824_adc_left_mixer, ptr @.str.146, ptr @nau8824_adc_right_mixer, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @nau8824_dacl_mux, ptr @.str.158, ptr @nau8824_dacr_mux, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @nau8824_hp_left_mixer, ptr @.str.163, ptr @nau8824_hp_right_mixer, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @nau8824_dapm_widgets, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.compoundliteral.182, ptr @.compoundliteral.183, ptr @.compoundliteral.184, ptr @.compoundliteral.185, ptr @.str.186, ptr @.compoundliteral.187, ptr @.str.188, ptr @.compoundliteral.189, ptr @.compoundliteral.190, ptr @.compoundliteral.191, ptr @.str.192, ptr @nau8824_dacl_enum, ptr @nau8824_dac_src, ptr @.str.193, ptr @nau8824_dacr_enum, ptr @.str.194, ptr @.compoundliteral.195, ptr @.str.196, ptr @.compoundliteral.197, ptr @.compoundliteral.198, ptr @.compoundliteral.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @fll_pre_scalar, ptr @fll_ratio, ptr @mclk_src_scaling, ptr @.str.203, ptr @nau8824_dai_ops, ptr @osr_dac_sel, ptr @osr_adc_sel, ptr @.str.204, ptr @.str.205, ptr @switch.table.nau8824_hw_params], section "llvm.metadata"
@0 = internal global [266 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_override to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_enable_jack_detect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_enable_jack_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_quirk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_config_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_sema_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_sema_acquire._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_reg_defaults to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_snd_controls to i32), i32 1632, i32 2016, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_dapm_routes to i32), i32 2808, i32 3488, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_companding_adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_companding_dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_adc_decimation_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_dac_oversampl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_adc_ch0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_adc_ch1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_adc_ch2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_adc_ch3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_dac_left_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_dac_right_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_companding to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_adc_decimation to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_dac_oversampl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_input_channel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_tdm_slot to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_adc_ch0_dmic to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_adc_ch1_dmic to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_adc_ch2_dmic to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_adc_ch3_dmic to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_adc_left_mixer to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_adc_right_mixer to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_dacl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_dacr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_hp_left_mixer to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_hp_right_mixer to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_dapm_widgets to i32), i32 8280, i32 10336, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_dacl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_dac_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_dacr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.198 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_set_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_pre_scalar to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_ratio to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mclk_src_scaling to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osr_dac_sel to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osr_adc_sel to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8824_clock_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nau8824_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nau8824_enable_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %jack) #0 align 64 {
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
  %jack1 = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %jack1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %jack, ptr %jack1, align 4
  %jdet_work = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 4
  tail call void @__init_work(ptr noundef %jdet_work, i32 noundef 0) #8
  %5 = ptrtoint ptr %jdet_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %jdet_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @nau8824_enable_jack_detect.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry5 = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 4, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nau8824_jdet_work, ptr %func, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %irq = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call7 = tail call i32 @devm_request_threaded_irq(ptr noundef %10, i32 noundef %12, ptr noundef null, ptr noundef nonnull @nau8824_interrupt, i32 noundef 8200, ptr noundef nonnull @.str.1, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end10

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef %16, i32 noundef %call7) #11
  br label %if.end

if.end:                                           ; preds = %do.end10, %entry.if.end_crit_edge
  ret i32 %call7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nau8824_jdet_work(ptr noundef %work) #0 align 64 {
entry:
  %adc_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm1 = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %dapm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm1, align 4
  %regmap2 = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adc_value) #8
  %4 = ptrtoint ptr %adc_value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %adc_value, align 4, !annotation !488
  %call = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %1, ptr noundef nonnull @.str.9) #8
  %call3 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %1, ptr noundef nonnull @.str.10) #8
  %call4 = tail call i32 @snd_soc_dapm_sync(ptr noundef %1) #8
  tail call void @msleep(i32 noundef 100) #8
  %call5 = call i32 @regmap_read(ptr noundef %3, i32 noundef 89, ptr noundef nonnull %adc_value) #8
  %5 = ptrtoint ptr %adc_value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %adc_value, align 4
  %and = and i32 %6, 255
  store i32 %and, ptr %adc_value, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_jdet_work.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_jdet_work, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !489

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %9 = ptrtoint ptr %adc_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %adc_value, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_jdet_work.__UNIQUE_ID_ddebug299, ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef %10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %11 = ptrtoint ptr %adc_value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %adc_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %12)
  %cmp = icmp slt i32 %12, 128
  br i1 %cmp, label %if.then10, label %do.end.if.end15_crit_edge

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = call i32 @snd_soc_dapm_disable_pin(ptr noundef %1, ptr noundef nonnull @.str.10) #8
  %call12 = call i32 @snd_soc_dapm_disable_pin(ptr noundef %1, ptr noundef nonnull @.str.9) #8
  %call13 = call i32 @snd_soc_dapm_sync(ptr noundef %1) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %do.end.if.end15_crit_edge
  %event.0 = phi i32 [ 1, %if.then10 ], [ 3, %do.end.if.end15_crit_edge ]
  %jack = getelementptr i8, ptr %work, i32 -4
  %13 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %jack, align 4
  call void @snd_soc_jack_report(ptr noundef %14, i32 noundef %event.0, i32 noundef 3) #8
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 18, i32 noundef 40, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jd_sem.i = getelementptr i8, ptr %work, i32 44
  call void @up(ptr noundef %jd_sem.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adc_value) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_interrupt(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %active_irq = alloca i32, align 4
  %key_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.nau8824, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_irq) #8
  %2 = ptrtoint ptr %active_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %active_irq, align 4, !annotation !488
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %active_irq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14) #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_interrupt.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_interrupt, %if.then7)) #8
          to label %do.end11 [label %if.then7], !srcloc !489

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %active_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active_irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_interrupt.__UNIQUE_ID_ddebug300, ptr noundef %6, ptr noundef nonnull @.str.16, i32 noundef %8) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body2
  %9 = ptrtoint ptr %active_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_irq, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nau8824_eject_jack(ptr noundef %data)
  %jd_sem.i = getelementptr inbounds %struct.nau8824, ptr %data, i32 0, i32 5
  call void @up(ptr noundef %jd_sem.i) #8
  %jdet_work = getelementptr inbounds %struct.nau8824, ptr %data, i32 0, i32 4
  %call14 = call zeroext i1 @cancel_work_sync(ptr noundef %jdet_work) #8
  br label %if.then62.critedge

if.else:                                          ; preds = %do.end11
  %and15 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else39, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key_status) #8
  %11 = ptrtoint ptr %key_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %key_status, align 4, !annotation !488
  %call18 = call i32 @regmap_read(ptr noundef %1, i32 noundef 17, ptr noundef nonnull %key_status) #8
  %12 = ptrtoint ptr %key_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_status, align 4
  %trunc.i = trunc i32 %13 to i15
  %rev.i = call i15 @llvm.bitreverse.i15(i15 %trunc.i) #8
  %mask.i = and i15 %rev.i, -512
  %14 = zext i15 %mask.i to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_interrupt.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_interrupt, %if.then33)) #8
          to label %do.end37 [label %if.then33], !srcloc !489

if.then33:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_interrupt.__UNIQUE_ID_ddebug301, ptr noundef %16, ptr noundef nonnull @.str.17, i32 noundef %14) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key_status) #8
  br label %if.then62.critedge

if.else39:                                        ; preds = %if.else
  %and40 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else43, label %if.else39.if.then62.critedge_crit_edge

if.else39.if.then62.critedge_crit_edge:           ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62.critedge

if.else43:                                        ; preds = %if.else39
  %and44 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else43.if.then58_crit_edge, label %if.then46

if.else43.if.then58_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

if.then46:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 18, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i93 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 15, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jdet_work49 = getelementptr inbounds %struct.nau8824, ptr %data, i32 0, i32 4
  %call50 = call zeroext i1 @cancel_work_sync(ptr noundef %jdet_work49) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %jdet_work49) #8
  call fastcc void @nau8824_setup_auto_irq(ptr noundef %data)
  br label %if.then58

if.then58:                                        ; preds = %if.then46, %if.else43.if.then58_crit_edge
  %18 = ptrtoint ptr %active_irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %active_irq, align 4
  %call60.c = call i32 @regmap_write(ptr noundef %1, i32 noundef 17, i32 noundef %19) #8
  br label %cleanup

if.then62.critedge:                               ; preds = %if.else39.if.then62.critedge_crit_edge, %do.end37, %if.then13
  %event_mask.0.ph = phi i32 [ 30720, %if.else39.if.then62.critedge_crit_edge ], [ 3, %if.then13 ], [ 30720, %do.end37 ]
  %event.0.ph = phi i32 [ 0, %if.else39.if.then62.critedge_crit_edge ], [ 0, %if.then13 ], [ %14, %do.end37 ]
  %clear_irq.0.ph = phi i32 [ 32, %if.else39.if.then62.critedge_crit_edge ], [ 2, %if.then13 ], [ 8, %do.end37 ]
  %call60.c89 = call i32 @regmap_write(ptr noundef %1, i32 noundef 17, i32 noundef %clear_irq.0.ph) #8
  %jack = getelementptr inbounds %struct.nau8824, ptr %data, i32 0, i32 3
  %20 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %jack, align 4
  call void @snd_soc_jack_report(ptr noundef %21, i32 noundef %event.0.ph, i32 noundef %event_mask.0.ph) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then62.critedge, %if.then58, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.then58 ], [ 1, %if.then62.critedge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_irq) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @nau8824_components() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @quirk_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp.not.i = icmp eq i32 %0, -1
  br i1 %cmp.not.i, label %entry.nau8824_check_quirks.exit_crit_edge, label %if.then.i

entry.nau8824_check_quirks.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8824_check_quirks.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %0, ptr @nau8824_quirk, align 4
  br label %nau8824_check_quirks.exit

nau8824_check_quirks.exit:                        ; preds = %if.then.i, %entry.nau8824_check_quirks.exit_crit_edge
  %1 = load i32, ptr @nau8824_quirk, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.str.8..str.7 = select i1 %tobool.not, ptr @.str.8, ptr @.str.7
  ret ptr %.str.8..str.7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_i2c_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @nau8824_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nau8824_i2c_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @nau8824_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8824_eject_jack(ptr nocapture noundef readonly %nau8824) unnamed_addr #0 align 64 {
entry:
  %active_irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm1 = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 2
  %0 = ptrtoint ptr %dapm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm1, align 4
  %regmap2 = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 1
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_irq.i) #8
  %4 = ptrtoint ptr %active_irq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %active_irq.i, align 4, !annotation !488
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %active_irq.i) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.06.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %i.06.i
  %5 = ptrtoint ptr %active_irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active_irq.i, align 4
  %and.i = and i32 %6, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 @regmap_write(ptr noundef %3, i32 noundef 17, i32 noundef %shl.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %nau8824_int_status_clear_all.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

nau8824_int_status_clear_all.exit:                ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_irq.i) #8
  %call = call i32 @snd_soc_dapm_disable_pin(ptr noundef %1, ptr noundef nonnull @.str.10) #8
  %call3 = call i32 @snd_soc_dapm_disable_pin(ptr noundef %1, ptr noundef nonnull @.str.9) #8
  %call4 = call i32 @snd_soc_dapm_sync(ptr noundef %1) #8
  %call.i17 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 18, i32 noundef 43, i32 noundef 42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i18 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 15, i32 noundef 768, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i19 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp ult i32 %8, 2
  br i1 %cmp, label %if.then, label %nau8824_int_status_clear_all.exit.if.end_crit_edge

nau8824_int_status_clear_all.exit.if.end_crit_edge: ; preds = %nau8824_int_status_clear_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %nau8824_int_status_clear_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap2, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 3, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i46.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_config_sysclk.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_eject_jack, %if.then.i20)) #8
          to label %if.end [label %if.then.i20], !srcloc !489

if.then.i20:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %nau8824 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nau8824, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_config_sysclk.__UNIQUE_ID_ddebug303, ptr noundef %12, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i20, %if.then, %nau8824_int_status_clear_all.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8824_setup_auto_irq(ptr nocapture noundef readonly %nau8824) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 15, i32 noundef 768, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 18, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %dapm = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 2
  %2 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dapm, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ult i32 %5, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap1, align 4
  %call.i50.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 9, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i51.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 3, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_config_sysclk.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_setup_auto_irq, %if.then.i)) #8
          to label %if.end [label %if.then.i], !srcloc !489

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %nau8824 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nau8824, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_config_sysclk.__UNIQUE_ID_ddebug303, ptr noundef %9, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then, %entry.if.end_crit_edge
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 1, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nau8824_config_sysclk(ptr noundef %nau8824, i32 noundef %clk_id, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %2 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_id, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb7
    i32 3, label %sw.bb10
    i32 4, label %sw.bb13
    i32 5, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %do.body19

sw.bb3:                                           ; preds = %entry
  %jd_sem2.i = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 5
  %call.i47 = tail call i32 @down_timeout(ptr noundef %jd_sem2.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp.i = icmp slt i32 %call.i47, 0
  br i1 %cmp.i, label %if.end11.sink.split.i, label %sw.bb3.nau8824_sema_acquire.exit_crit_edge

sw.bb3.nau8824_sema_acquire.exit_crit_edge:       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8824_sema_acquire.exit

if.end11.sink.split.i:                            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %nau8824 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nau8824, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.21) #11
  br label %nau8824_sema_acquire.exit

nau8824_sema_acquire.exit:                        ; preds = %if.end11.sink.split.i, %sw.bb3.nau8824_sema_acquire.exit_crit_edge
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i49 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @up(ptr noundef %jd_sem2.i) #8
  br label %do.body19

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %do.body19

sw.bb10:                                          ; preds = %entry
  %jd_sem2.i52 = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 5
  %call.i53 = tail call i32 @down_timeout(ptr noundef %jd_sem2.i52, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp.i54 = icmp slt i32 %call.i53, 0
  br i1 %cmp.i54, label %if.end11.sink.split.i55, label %sw.bb10.nau8824_sema_acquire.exit56_crit_edge

sw.bb10.nau8824_sema_acquire.exit56_crit_edge:    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8824_sema_acquire.exit56

if.end11.sink.split.i55:                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %nau8824 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nau8824, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.21) #11
  br label %nau8824_sema_acquire.exit56

nau8824_sema_acquire.exit56:                      ; preds = %if.end11.sink.split.i55, %sw.bb10.nau8824_sema_acquire.exit56_crit_edge
  %call.i57 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 6, i32 noundef 3072, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @up(ptr noundef %jd_sem2.i52) #8
  br label %do.body19

sw.bb13:                                          ; preds = %entry
  %jd_sem2.i59 = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 5
  %call.i60 = tail call i32 @down_timeout(ptr noundef %jd_sem2.i59, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp.i61 = icmp slt i32 %call.i60, 0
  br i1 %cmp.i61, label %if.end11.sink.split.i62, label %sw.bb13.nau8824_sema_acquire.exit63_crit_edge

sw.bb13.nau8824_sema_acquire.exit63_crit_edge:    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8824_sema_acquire.exit63

if.end11.sink.split.i62:                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %nau8824 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nau8824, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.21) #11
  br label %nau8824_sema_acquire.exit63

nau8824_sema_acquire.exit63:                      ; preds = %if.end11.sink.split.i62, %sw.bb13.nau8824_sema_acquire.exit63_crit_edge
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 6, i32 noundef 3072, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @up(ptr noundef %jd_sem2.i59) #8
  br label %do.body19

sw.bb16:                                          ; preds = %entry
  %jd_sem2.i66 = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 5
  %call.i67 = tail call i32 @down_timeout(ptr noundef %jd_sem2.i66, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i68 = icmp slt i32 %call.i67, 0
  br i1 %cmp.i68, label %if.end11.sink.split.i69, label %sw.bb16.nau8824_sema_acquire.exit70_crit_edge

sw.bb16.nau8824_sema_acquire.exit70_crit_edge:    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8824_sema_acquire.exit70

if.end11.sink.split.i69:                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %nau8824 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nau8824, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.21) #11
  br label %nau8824_sema_acquire.exit70

nau8824_sema_acquire.exit70:                      ; preds = %if.end11.sink.split.i69, %sw.bb16.nau8824_sema_acquire.exit70_crit_edge
  %call.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 6, i32 noundef 3072, i32 noundef 3072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @up(ptr noundef %jd_sem2.i66) #8
  br label %do.body19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %nau8824 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nau8824, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.18, i32 noundef %clk_id) #11
  br label %cleanup

do.body19:                                        ; preds = %nau8824_sema_acquire.exit70, %nau8824_sema_acquire.exit63, %nau8824_sema_acquire.exit56, %sw.bb7, %nau8824_sema_acquire.exit, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_config_sysclk.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_config_sysclk, %if.then)) #8
          to label %cleanup [label %if.then], !srcloc !489

if.then:                                          ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %nau8824 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nau8824, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_config_sysclk.__UNIQUE_ID_ddebug303, ptr noundef %14, ptr noundef nonnull @.str.20, i32 noundef %freq, i32 noundef %clk_id) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body19, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then ], [ 0, %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !488
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 196, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %jkdet_polarity.i = getelementptr inbounds %struct.nau8824, ptr %call.i, i32 0, i32 10
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef %jkdet_polarity.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %jkdet_polarity.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %jkdet_polarity.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %micbias_voltage.i = getelementptr inbounds %struct.nau8824, ptr %call.i, i32 0, i32 8
  %call.i1.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef %micbias_voltage.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool3.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %micbias_voltage.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %micbias_voltage.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %vref_impedance.i = getelementptr inbounds %struct.nau8824, ptr %call.i, i32 0, i32 9
  %call.i2.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.32, ptr noundef %vref_impedance.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool8.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end11.i_crit_edge, label %if.then9.i

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %vref_impedance.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %vref_impedance.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end11.i_crit_edge
  %sar_threshold_num.i = getelementptr inbounds %struct.nau8824, ptr %call.i, i32 0, i32 11
  %call.i3.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.33, ptr noundef %sar_threshold_num.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool13.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end16.i_crit_edge, label %if.then14.i

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %sar_threshold_num.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %sar_threshold_num.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end16.i_crit_edge
  %sar_threshold.i = getelementptr inbounds %struct.nau8824, ptr %call.i, i32 0, i32 12
  %7 = ptrtoint ptr %sar_threshold_num.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sar_threshold_num.i, align 4
  %call18.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.34, ptr noundef %sar_threshold.i, i32 noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.if.end28.i_crit_edge, label %if.then20.i

if.end16.i.if.end28.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %sar_threshold.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %sar_threshold.i, align 4
  %arrayidx23.i = getelementptr %struct.nau8824, ptr %call.i, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 20, ptr %arrayidx23.i, align 4
  %arrayidx25.i = getelementptr %struct.nau8824, ptr %call.i, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 38, ptr %arrayidx25.i, align 4
  %arrayidx27.i = getelementptr %struct.nau8824, ptr %call.i, i32 0, i32 12, i32 3
  %12 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 115, ptr %arrayidx27.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then20.i, %if.end16.i.if.end28.i_crit_edge
  %sar_hysteresis.i = getelementptr inbounds %struct.nau8824, ptr %call.i, i32 0, i32 13
  %call.i4.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.35, ptr noundef %sar_hysteresis.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool30.not.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end33.i_crit_edge, label %if.then31.i

if.end28.i.if.end33.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %sar_hysteresis.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sar_hysteresis.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end33.i_crit_edge
  %sar_voltage.i = getelementptr inbounds %struct.nau8824, ptr %call.i, i32 0, i32 14
  %call.i5.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.36, ptr noundef %sar_voltage.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool35.not.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end38.i_crit_edge, label %if.then36.i

if.end33.i.if.end38.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %sar_voltage.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %sar_voltage.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then36.i, %if.end33.i.if.end38.i_crit_edge
  %sar_compare_time.i = getelementptr inbounds %struct.nau8824, ptr %call.i, i32 0, i32 15
  %call.i6.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef %sar_compare_time.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool40.not.i = icmp eq i32 %call.i6.i, 0
  br i1 %tobool40.not.i, label %if.end38.i.if.end43.i_crit_edge, label %if.then41.i

if.end38.i.if.end43.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %sar_compare_time.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %sar_compare_time.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %if.end38.i.if.end43.i_crit_edge
  %sar_sampling_time.i = getelementptr inbounds %struct.nau8824, ptr %call.i, i32 0, i32 16
  %call.i7.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.38, ptr noundef %sar_sampling_time.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool45.not.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.end48.i_crit_edge, label %if.then46.i

if.end43.i.if.end48.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %sar_sampling_time.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %sar_sampling_time.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %if.end43.i.if.end48.i_crit_edge
  %key_debounce.i = getelementptr inbounds %struct.nau8824, ptr %call.i, i32 0, i32 17
  %call.i8.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.39, ptr noundef %key_debounce.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool50.not.i = icmp eq i32 %call.i8.i, 0
  br i1 %tobool50.not.i, label %if.end48.i.if.end53.i_crit_edge, label %if.then51.i

if.end48.i.if.end53.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

if.then51.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %key_debounce.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %key_debounce.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then51.i, %if.end48.i.if.end53.i_crit_edge
  %jack_eject_debounce.i = getelementptr inbounds %struct.nau8824, ptr %call.i, i32 0, i32 18
  %call.i9.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.40, ptr noundef %jack_eject_debounce.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool55.not.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool55.not.i, label %if.end53.i.if.end9_crit_edge, label %if.then56.i

if.end53.i.if.end9_crit_edge:                     ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %jack_eject_debounce.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %jack_eject_debounce.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then56.i, %if.end53.i.if.end9_crit_edge, %entry.if.end9_crit_edge
  %nau8824.0 = phi ptr [ %1, %entry.if.end9_crit_edge ], [ %call.i, %if.end53.i.if.end9_crit_edge ], [ %call.i, %if.then56.i ]
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %nau8824.0, ptr %driver_data.i.i, align 4
  %call10 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @nau8824_regmap_config, ptr noundef nonnull @nau8824_i2c_probe._key, ptr noundef nonnull @.str.27) #8
  %regmap = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 1
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %22 = ptrtoint ptr %nau8824.0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev1, ptr %nau8824.0, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %irq18 = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 7
  %25 = ptrtoint ptr %irq18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %irq18, align 4
  %jd_sem = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 5
  %wait_list1.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %jd_sem to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %jd_sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 5, i32 0, i32 2
  %28 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 5, i32 0, i32 3
  %29 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 5, i32 0, i32 4
  %30 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 5, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.41, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 5, i32 0, i32 4, i32 3
  %32 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 5, i32 0, i32 4, i32 4
  %33 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 5, i32 0, i32 4, i32 5
  %34 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %36 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 5, i32 2, i32 1
  %37 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %38 = load i32, ptr @quirk_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.not.i = icmp eq i32 %38, -1
  br i1 %cmp.not.i, label %if.end16.nau8824_check_quirks.exit_crit_edge, label %if.then.i64

if.end16.nau8824_check_quirks.exit_crit_edge:     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8824_check_quirks.exit

if.then.i64:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %38, ptr @nau8824_quirk, align 4
  br label %nau8824_check_quirks.exit

nau8824_check_quirks.exit:                        ; preds = %if.then.i64, %if.end16.nau8824_check_quirks.exit_crit_edge
  %39 = load i32, ptr @nau8824_quirk, align 4
  %and = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %nau8824_check_quirks.exit.if.end21_crit_edge, label %if.then20

nau8824_check_quirks.exit.if.end21_crit_edge:     ; preds = %nau8824_check_quirks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %nau8824_check_quirks.exit
  call void @__sanitizer_cov_trace_pc() #10
  %jkdet_polarity = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 10
  %40 = ptrtoint ptr %jkdet_polarity to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %jkdet_polarity, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %nau8824_check_quirks.exit.if.end21_crit_edge
  tail call fastcc void @nau8824_print_device_properties(ptr noundef nonnull %nau8824.0)
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_read(ptr noundef %42, i32 noundef 88, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call23) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call.i65 = call i32 @regmap_write(ptr noundef %44, i32 noundef 0, i32 noundef 0) #8
  %call1.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 0, i32 noundef 0) #8
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %vref_impedance.i66 = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 9
  %47 = ptrtoint ptr %vref_impedance.i66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vref_impedance.i66, align 4
  %shl.i = shl i32 %48, 4
  %or.i = or i32 %shl.i, 64
  %call.i.i67 = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 102, i32 noundef 112, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i52.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 118, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 429496000) #8
  %micbias_voltage.i68 = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 8
  %50 = ptrtoint ptr %micbias_voltage.i68 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %micbias_voltage.i68, align 4
  %call.i53.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 116, i32 noundef 7, i32 noundef %51, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i54.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 118, i32 noundef 9024, i32 noundef 9024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i55.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 3, i32 noundef 240, i32 noundef 80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i56.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 49, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i57.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 1, i32 noundef 63, i32 noundef 63, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i58.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 2, i32 noundef 61610, i32 noundef 61610, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i59.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 80, i32 noundef 16128, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i60.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 104, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i61.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 128, i32 noundef 13056, i32 noundef 13056, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i62.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 107, i32 noundef 49152, i32 noundef 49152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i63.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 50, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i64.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 51, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i65.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 107, i32 noundef 5, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i66.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 36, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i67.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 37, i32 noundef 135, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i68.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 115, i32 noundef 124, i32 noundef 44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i69.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 119, i32 noundef 136, i32 noundef 136, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i70.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 105, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jkdet_polarity.i69 = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 10
  %52 = ptrtoint ptr %jkdet_polarity.i69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %jkdet_polarity.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i70 = icmp eq i32 %53, 0
  %cond.i = select i1 %tobool.not.i70, i32 2, i32 0
  %call.i71.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 13, i32 noundef 2, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jack_eject_debounce.i71 = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 18
  %54 = ptrtoint ptr %jack_eject_debounce.i71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %jack_eject_debounce.i71, align 4
  %shl22.i = shl i32 %55, 2
  %call.i72.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 13, i32 noundef 12, i32 noundef %shl22.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %sar_threshold_num.i72 = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 11
  %56 = ptrtoint ptr %sar_threshold_num.i72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sar_threshold_num.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool24.not.i = icmp eq i32 %57, 0
  br i1 %tobool24.not.i, label %if.end25.nau8824_init_regs.exit_crit_edge, label %if.then.i73

if.end25.nau8824_init_regs.exit_crit_edge:        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8824_init_regs.exit

if.then.i73:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %sar_voltage.i.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 14
  %60 = ptrtoint ptr %sar_voltage.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sar_voltage.i.i, align 4
  %shl.i.i = shl i32 %61, 8
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 19, i32 noundef 1792, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %sar_compare_time.i.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 15
  %62 = ptrtoint ptr %sar_compare_time.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sar_compare_time.i.i, align 4
  %shl2.i.i = shl i32 %63, 2
  %call.i60.i.i = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 19, i32 noundef 12, i32 noundef %shl2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %sar_sampling_time.i.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 16
  %64 = ptrtoint ptr %sar_sampling_time.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sar_sampling_time.i.i, align 4
  %call.i61.i.i = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 19, i32 noundef 3, i32 noundef %65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %66 = ptrtoint ptr %sar_threshold_num.i72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sar_threshold_num.i72, align 4
  %sub.i.i = shl i32 %67, 8
  %shl6.i.i = add i32 %sub.i.i, -256
  %call.i62.i.i = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 20, i32 noundef 1792, i32 noundef %shl6.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %sar_hysteresis.i.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 13
  %68 = ptrtoint ptr %sar_hysteresis.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sar_hysteresis.i.i, align 4
  %call.i63.i.i = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 20, i32 noundef 15, i32 noundef %69, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %key_debounce.i.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 17
  %70 = ptrtoint ptr %key_debounce.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %key_debounce.i.i, align 4
  %shl10.i.i = shl i32 %71, 12
  %call.i64.i.i = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 20, i32 noundef 12288, i32 noundef %shl10.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %sar_threshold.i.i = getelementptr inbounds %struct.nau8824, ptr %nau8824.0, i32 0, i32 12
  %72 = ptrtoint ptr %sar_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sar_threshold.i.i, align 4
  %shl12.i.i = shl i32 %73, 8
  %arrayidx14.i.i = getelementptr %struct.nau8824, ptr %nau8824.0, i32 0, i32 12, i32 1
  %74 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx14.i.i, align 4
  %or.i.i = or i32 %shl12.i.i, %75
  %call15.i.i = call i32 @regmap_write(ptr noundef %59, i32 noundef 21, i32 noundef %or.i.i) #8
  %arrayidx17.i.i = getelementptr %struct.nau8824, ptr %nau8824.0, i32 0, i32 12, i32 2
  %76 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx17.i.i, align 4
  %shl18.i.i = shl i32 %77, 8
  %arrayidx20.i.i = getelementptr %struct.nau8824, ptr %nau8824.0, i32 0, i32 12, i32 3
  %78 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx20.i.i, align 4
  %or21.i.i = or i32 %shl18.i.i, %79
  %call22.i.i = call i32 @regmap_write(ptr noundef %59, i32 noundef 22, i32 noundef %or21.i.i) #8
  %arrayidx24.i.i = getelementptr %struct.nau8824, ptr %nau8824.0, i32 0, i32 12, i32 4
  %80 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx24.i.i, align 4
  %shl25.i.i = shl i32 %81, 8
  %arrayidx27.i.i = getelementptr %struct.nau8824, ptr %nau8824.0, i32 0, i32 12, i32 5
  %82 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx27.i.i, align 4
  %or28.i.i = or i32 %shl25.i.i, %83
  %call29.i.i = call i32 @regmap_write(ptr noundef %59, i32 noundef 23, i32 noundef %or28.i.i) #8
  %arrayidx31.i.i = getelementptr %struct.nau8824, ptr %nau8824.0, i32 0, i32 12, i32 6
  %84 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx31.i.i, align 4
  %shl32.i.i = shl i32 %85, 8
  %arrayidx34.i.i = getelementptr %struct.nau8824, ptr %nau8824.0, i32 0, i32 12, i32 7
  %86 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx34.i.i, align 4
  %or35.i.i = or i32 %shl32.i.i, %87
  %call36.i.i = call i32 @regmap_write(ptr noundef %59, i32 noundef 24, i32 noundef %or35.i.i) #8
  br label %nau8824_init_regs.exit

nau8824_init_regs.exit:                           ; preds = %if.then.i73, %if.end25.nau8824_init_regs.exit_crit_edge
  %88 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool28.not = icmp eq i32 %89, 0
  br i1 %tobool28.not, label %nau8824_init_regs.exit.if.end31_crit_edge, label %if.then29

nau8824_init_regs.exit.if.end31_crit_edge:        ; preds = %nau8824_init_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %nau8824_init_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap, align 4
  %call.i.i75 = call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 1, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %92 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap, align 4
  %call.i1.i76 = call i32 @regmap_update_bits_base(ptr noundef %93, i32 noundef 18, i32 noundef 1023, i32 noundef 1023, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  %call.i2.i77 = call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 15, i32 noundef 768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %nau8824_init_regs.exit.if.end31_crit_edge
  %call32 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @nau8824_component_driver, ptr noundef nonnull @nau8824_dai, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end, %if.then13, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.then13 ], [ %call23, %do.end ], [ %call32, %if.end31 ], [ -12, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8824_print_device_properties(ptr nocapture noundef readonly %nau8824) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nau8824 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nau8824, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_print_device_properties, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !489

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %jkdet_polarity = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 10
  %2 = ptrtoint ptr %jkdet_polarity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jkdet_polarity, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_print_device_properties.__UNIQUE_ID_ddebug304, ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %3) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_print_device_properties, %if.then16)) #8
          to label %do.body20 [label %if.then16], !srcloc !489

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %micbias_voltage = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 8
  %4 = ptrtoint ptr %micbias_voltage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %micbias_voltage, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_print_device_properties.__UNIQUE_ID_ddebug305, ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %5) #8
  br label %do.body20

do.body20:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_print_device_properties, %if.then32)) #8
          to label %do.body36 [label %if.then32], !srcloc !489

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %vref_impedance = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 9
  %6 = ptrtoint ptr %vref_impedance to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vref_impedance, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_print_device_properties.__UNIQUE_ID_ddebug306, ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef %7) #8
  br label %do.body36

do.body36:                                        ; preds = %if.then32, %do.body20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_print_device_properties, %if.then48)) #8
          to label %do.end51 [label %if.then48], !srcloc !489

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %sar_threshold_num = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 11
  %8 = ptrtoint ptr %sar_threshold_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sar_threshold_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_print_device_properties.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef %9) #8
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body36
  %sar_threshold_num52 = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 11
  %10 = ptrtoint ptr %sar_threshold_num52 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sar_threshold_num52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp231 = icmp sgt i32 %11, 0
  br i1 %cmp231, label %do.end51.do.body53_crit_edge, label %do.end51.do.body69_crit_edge

do.end51.do.body69_crit_edge:                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

do.end51.do.body53_crit_edge:                     ; preds = %do.end51
  br label %do.body53

do.body53:                                        ; preds = %for.inc.do.body53_crit_edge, %do.end51.do.body53_crit_edge
  %i.0232 = phi i32 [ %inc, %for.inc.do.body53_crit_edge ], [ 0, %do.end51.do.body53_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_print_device_properties, %if.then65)) #8
          to label %for.inc [label %if.then65], !srcloc !489

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.nau8824, ptr %nau8824, i32 0, i32 12, i32 %i.0232
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_print_device_properties.__UNIQUE_ID_ddebug308, ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef %i.0232, i32 noundef %13) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then65, %do.body53
  %inc = add nuw nsw i32 %i.0232, 1
  %14 = ptrtoint ptr %sar_threshold_num52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sar_threshold_num52, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.inc.do.body53_crit_edge, label %for.inc.do.body69_crit_edge

for.inc.do.body69_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

for.inc.do.body53_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

do.body69:                                        ; preds = %for.inc.do.body69_crit_edge, %do.end51.do.body69_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_print_device_properties, %if.then81)) #8
          to label %do.body85 [label %if.then81], !srcloc !489

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  %sar_hysteresis = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 13
  %16 = ptrtoint ptr %sar_hysteresis to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sar_hysteresis, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_print_device_properties.__UNIQUE_ID_ddebug309, ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef %17) #8
  br label %do.body85

do.body85:                                        ; preds = %if.then81, %do.body69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_print_device_properties, %if.then97)) #8
          to label %do.body101 [label %if.then97], !srcloc !489

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  %sar_voltage = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 14
  %18 = ptrtoint ptr %sar_voltage to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sar_voltage, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_print_device_properties.__UNIQUE_ID_ddebug310, ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %19) #8
  br label %do.body101

do.body101:                                       ; preds = %if.then97, %do.body85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_print_device_properties, %if.then113)) #8
          to label %do.body117 [label %if.then113], !srcloc !489

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  %sar_compare_time = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 15
  %20 = ptrtoint ptr %sar_compare_time to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sar_compare_time, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_print_device_properties.__UNIQUE_ID_ddebug311, ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef %21) #8
  br label %do.body117

do.body117:                                       ; preds = %if.then113, %do.body101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_print_device_properties, %if.then129)) #8
          to label %do.body133 [label %if.then129], !srcloc !489

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  %sar_sampling_time = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 16
  %22 = ptrtoint ptr %sar_sampling_time to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sar_sampling_time, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_print_device_properties.__UNIQUE_ID_ddebug312, ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef %23) #8
  br label %do.body133

do.body133:                                       ; preds = %if.then129, %do.body117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_print_device_properties, %if.then145)) #8
          to label %do.body149 [label %if.then145], !srcloc !489

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #10
  %key_debounce = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 17
  %24 = ptrtoint ptr %key_debounce to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %key_debounce, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_print_device_properties.__UNIQUE_ID_ddebug313, ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef %25) #8
  br label %do.body149

do.body149:                                       ; preds = %if.then145, %do.body133
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_print_device_properties, %if.then161)) #8
          to label %do.end164 [label %if.then161], !srcloc !489

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #10
  %jack_eject_debounce = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 18
  %26 = ptrtoint ptr %jack_eject_debounce to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %jack_eject_debounce, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_print_device_properties.__UNIQUE_ID_ddebug314, ptr noundef %1, ptr noundef nonnull @.str.54, i32 noundef %27) #8
  br label %do.end164

do.end164:                                        ; preds = %if.then161, %do.body149
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8824_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %reg, label %sw.default [
    i32 13, label %entry.return_crit_edge
    i32 15, label %entry.return_crit_edge14
    i32 26, label %entry.return_crit_edge15
    i32 56, label %entry.return_crit_edge16
    i32 57, label %entry.return_crit_edge17
    i32 58, label %entry.return_crit_edge18
    i32 59, label %entry.return_crit_edge19
    i32 60, label %entry.return_crit_edge20
    i32 61, label %entry.return_crit_edge21
    i32 62, label %entry.return_crit_edge22
    i32 63, label %entry.return_crit_edge23
    i32 86, label %entry.return_crit_edge24
    i32 127, label %entry.return_crit_edge25
    i32 128, label %entry.return_crit_edge26
    i32 113, label %entry.return_crit_edge27
    i32 114, label %entry.return_crit_edge28
    i32 115, label %entry.return_crit_edge29
    i32 116, label %entry.return_crit_edge30
    i32 117, label %entry.return_crit_edge31
    i32 118, label %entry.return_crit_edge32
    i32 119, label %entry.return_crit_edge33
    i32 120, label %entry.return_crit_edge34
    i32 121, label %entry.return_crit_edge35
    i32 122, label %entry.return_crit_edge36
    i32 123, label %entry.return_crit_edge37
    i32 124, label %entry.return_crit_edge38
    i32 102, label %entry.return_crit_edge39
    i32 103, label %entry.return_crit_edge40
    i32 104, label %entry.return_crit_edge41
    i32 105, label %entry.return_crit_edge42
    i32 106, label %entry.return_crit_edge43
    i32 107, label %entry.return_crit_edge44
    i32 108, label %entry.return_crit_edge45
    i32 109, label %entry.return_crit_edge46
    i32 110, label %entry.return_crit_edge47
    i32 80, label %entry.return_crit_edge48
    i32 81, label %entry.return_crit_edge49
    i32 69, label %entry.return_crit_edge50
    i32 70, label %entry.return_crit_edge51
    i32 71, label %entry.return_crit_edge52
    i32 72, label %entry.return_crit_edge53
    i32 45, label %entry.return_crit_edge54
    i32 46, label %entry.return_crit_edge55
    i32 47, label %entry.return_crit_edge56
    i32 48, label %entry.return_crit_edge57
    i32 49, label %entry.return_crit_edge58
    i32 50, label %entry.return_crit_edge59
    i32 51, label %entry.return_crit_edge60
    i32 52, label %entry.return_crit_edge61
    i32 35, label %entry.return_crit_edge62
    i32 36, label %entry.return_crit_edge63
    i32 37, label %entry.return_crit_edge64
    i32 38, label %entry.return_crit_edge65
    i32 39, label %entry.return_crit_edge66
    i32 40, label %entry.return_crit_edge67
    i32 41, label %entry.return_crit_edge68
    i32 42, label %entry.return_crit_edge69
    i32 43, label %entry.return_crit_edge70
    i32 28, label %entry.return_crit_edge71
    i32 29, label %entry.return_crit_edge72
    i32 30, label %entry.return_crit_edge73
    i32 31, label %entry.return_crit_edge74
    i32 32, label %entry.return_crit_edge75
    i32 17, label %entry.return_crit_edge76
    i32 18, label %entry.return_crit_edge77
    i32 19, label %entry.return_crit_edge78
    i32 20, label %entry.return_crit_edge79
    i32 21, label %entry.return_crit_edge80
    i32 22, label %entry.return_crit_edge81
    i32 23, label %entry.return_crit_edge82
    i32 24, label %entry.return_crit_edge83
    i32 0, label %entry.return_crit_edge84
    i32 1, label %entry.return_crit_edge85
    i32 2, label %entry.return_crit_edge86
    i32 3, label %entry.return_crit_edge87
    i32 4, label %entry.return_crit_edge88
    i32 5, label %entry.return_crit_edge89
    i32 6, label %entry.return_crit_edge90
    i32 7, label %entry.return_crit_edge91
    i32 8, label %entry.return_crit_edge92
    i32 9, label %entry.return_crit_edge93
    i32 10, label %entry.return_crit_edge94
  ]

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8824_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %reg, label %sw.default [
    i32 13, label %entry.return_crit_edge
    i32 15, label %entry.return_crit_edge16
    i32 16, label %entry.return_crit_edge17
    i32 26, label %entry.return_crit_edge18
    i32 86, label %entry.return_crit_edge19
    i32 127, label %entry.return_crit_edge20
    i32 128, label %entry.return_crit_edge21
    i32 129, label %entry.return_crit_edge22
    i32 113, label %entry.return_crit_edge23
    i32 114, label %entry.return_crit_edge24
    i32 115, label %entry.return_crit_edge25
    i32 116, label %entry.return_crit_edge26
    i32 117, label %entry.return_crit_edge27
    i32 118, label %entry.return_crit_edge28
    i32 119, label %entry.return_crit_edge29
    i32 120, label %entry.return_crit_edge30
    i32 121, label %entry.return_crit_edge31
    i32 122, label %entry.return_crit_edge32
    i32 123, label %entry.return_crit_edge33
    i32 124, label %entry.return_crit_edge34
    i32 102, label %entry.return_crit_edge35
    i32 103, label %entry.return_crit_edge36
    i32 104, label %entry.return_crit_edge37
    i32 105, label %entry.return_crit_edge38
    i32 106, label %entry.return_crit_edge39
    i32 107, label %entry.return_crit_edge40
    i32 108, label %entry.return_crit_edge41
    i32 109, label %entry.return_crit_edge42
    i32 110, label %entry.return_crit_edge43
    i32 88, label %entry.return_crit_edge44
    i32 89, label %entry.return_crit_edge45
    i32 83, label %entry.return_crit_edge46
    i32 84, label %entry.return_crit_edge47
    i32 80, label %entry.return_crit_edge48
    i32 81, label %entry.return_crit_edge49
    i32 69, label %entry.return_crit_edge50
    i32 70, label %entry.return_crit_edge51
    i32 71, label %entry.return_crit_edge52
    i32 72, label %entry.return_crit_edge53
    i32 73, label %entry.return_crit_edge54
    i32 74, label %entry.return_crit_edge55
    i32 56, label %entry.return_crit_edge56
    i32 57, label %entry.return_crit_edge57
    i32 58, label %entry.return_crit_edge58
    i32 59, label %entry.return_crit_edge59
    i32 60, label %entry.return_crit_edge60
    i32 61, label %entry.return_crit_edge61
    i32 62, label %entry.return_crit_edge62
    i32 63, label %entry.return_crit_edge63
    i32 64, label %entry.return_crit_edge64
    i32 65, label %entry.return_crit_edge65
    i32 66, label %entry.return_crit_edge66
    i32 67, label %entry.return_crit_edge67
    i32 45, label %entry.return_crit_edge68
    i32 46, label %entry.return_crit_edge69
    i32 47, label %entry.return_crit_edge70
    i32 48, label %entry.return_crit_edge71
    i32 49, label %entry.return_crit_edge72
    i32 50, label %entry.return_crit_edge73
    i32 51, label %entry.return_crit_edge74
    i32 52, label %entry.return_crit_edge75
    i32 35, label %entry.return_crit_edge76
    i32 36, label %entry.return_crit_edge77
    i32 37, label %entry.return_crit_edge78
    i32 38, label %entry.return_crit_edge79
    i32 39, label %entry.return_crit_edge80
    i32 40, label %entry.return_crit_edge81
    i32 41, label %entry.return_crit_edge82
    i32 42, label %entry.return_crit_edge83
    i32 43, label %entry.return_crit_edge84
    i32 28, label %entry.return_crit_edge85
    i32 29, label %entry.return_crit_edge86
    i32 30, label %entry.return_crit_edge87
    i32 31, label %entry.return_crit_edge88
    i32 32, label %entry.return_crit_edge89
    i32 17, label %entry.return_crit_edge90
    i32 18, label %entry.return_crit_edge91
    i32 19, label %entry.return_crit_edge92
    i32 20, label %entry.return_crit_edge93
    i32 21, label %entry.return_crit_edge94
    i32 22, label %entry.return_crit_edge95
    i32 23, label %entry.return_crit_edge96
    i32 24, label %entry.return_crit_edge97
    i32 1, label %entry.return_crit_edge98
    i32 2, label %entry.return_crit_edge99
    i32 3, label %entry.return_crit_edge100
    i32 4, label %entry.return_crit_edge101
    i32 5, label %entry.return_crit_edge102
    i32 6, label %entry.return_crit_edge103
    i32 7, label %entry.return_crit_edge104
    i32 8, label %entry.return_crit_edge105
    i32 9, label %entry.return_crit_edge106
    i32 10, label %entry.return_crit_edge107
  ]

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8824_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 129, label %entry.return_crit_edge7
    i32 88, label %entry.return_crit_edge8
    i32 89, label %entry.return_crit_edge9
    i32 83, label %entry.return_crit_edge10
    i32 84, label %entry.return_crit_edge11
    i32 73, label %entry.return_crit_edge12
    i32 74, label %entry.return_crit_edge13
    i32 64, label %entry.return_crit_edge14
    i32 65, label %entry.return_crit_edge15
    i32 66, label %entry.return_crit_edge16
    i32 67, label %entry.return_crit_edge17
    i32 16, label %entry.return_crit_edge18
    i32 17, label %entry.return_crit_edge19
  ]

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nau8824_component_probe(ptr noundef %component) #4 align 64 {
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
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %dapm2 = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dapm2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dapm.i, ptr %dapm2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_suspend(ptr noundef %component) #0 align 64 {
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
  %irq = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @disable_irq(i32 noundef %5) #8
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext true) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_resume(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %regmap = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %7) #8
  %irq = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %jd_sem2.i = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 5
  %call3.i = tail call i32 @down_interruptible(ptr noundef %jd_sem2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end11.sink.split.i, label %if.then.nau8824_sema_acquire.exit_crit_edge

if.then.nau8824_sema_acquire.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8824_sema_acquire.exit

if.end11.sink.split.i:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.25) #11
  br label %nau8824_sema_acquire.exit

nau8824_sema_acquire.exit:                        ; preds = %if.end11.sink.split.i, %if.then.nau8824_sema_acquire.exit_crit_edge
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %13) #8
  br label %if.end

if.end:                                           ; preds = %nau8824_sema_acquire.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %call1 = tail call fastcc i32 @nau8824_config_sysclk(ptr noundef %3, i32 noundef %clk_id, i32 noundef %freq)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_set_pll(ptr nocapture noundef readonly %component, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #0 align 64 {
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
  %div21 = lshr i32 %freq_out, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500001, i32 %freq_in)
  %cmp1.i = icmp ult i32 %freq_in, 13500001
  br i1 %cmp1.i, label %if.end4.i, label %for.inc.i

for.inc.i:                                        ; preds = %entry
  %div.1110.i = lshr i32 %freq_in, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000002, i32 %freq_in)
  %cmp1.1.i = icmp ult i32 %freq_in, 27000002
  br i1 %cmp1.1.i, label %for.inc.i.if.end4.thread.i_crit_edge, label %for.inc.1.i

for.inc.i.if.end4.thread.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.thread.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %div.2111.i = lshr i32 %freq_in, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000004, i32 %freq_in)
  %cmp1.2.i = icmp ult i32 %freq_in, 54000004
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end4.thread.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end4.thread.i_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.thread.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %div.3112.i = lshr i32 %freq_in, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000008, i32 %freq_in)
  %cmp1.3.i = icmp ult i32 %freq_in, 108000008
  br i1 %cmp1.3.i, label %for.inc.2.i.if.end4.thread.i_crit_edge, label %for.inc.2.i.do.end_crit_edge

for.inc.2.i.do.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.2.i.if.end4.thread.i_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.thread.i

if.end4.thread.i:                                 ; preds = %for.inc.2.i.if.end4.thread.i_crit_edge, %for.inc.1.i.if.end4.thread.i_crit_edge, %for.inc.i.if.end4.thread.i_crit_edge
  %i.0100.lcssa.ph.i = phi i32 [ 3, %for.inc.2.i.if.end4.thread.i_crit_edge ], [ 2, %for.inc.1.i.if.end4.thread.i_crit_edge ], [ 1, %for.inc.i.if.end4.thread.i_crit_edge ]
  %div.lcssa.ph.i = phi i32 [ %div.3112.i, %for.inc.2.i.if.end4.thread.i_crit_edge ], [ %div.2111.i, %for.inc.1.i.if.end4.thread.i_crit_edge ], [ %div.1110.i, %for.inc.i.if.end4.thread.i_crit_edge ]
  %val115.i = getelementptr [4 x %struct.nau8824_fll_attr], ptr @fll_pre_scalar, i32 0, i32 %i.0100.lcssa.ph.i, i32 1
  %4 = ptrtoint ptr %val115.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val115.i, align 4
  br label %if.end19.i

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 512000, i32 %freq_in)
  %cmp11.not.i = icmp ult i32 %freq_in, 512000
  br i1 %cmp11.not.i, label %for.inc14.i, label %if.end4.i.if.end19.i_crit_edge

if.end4.i.if.end19.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %freq_in)
  %cmp11.not.1.i = icmp ult i32 %freq_in, 256000
  br i1 %cmp11.not.1.i, label %for.inc14.1.i, label %for.inc14.i.if.end19.i_crit_edge

for.inc14.i.if.end19.i_crit_edge:                 ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.1.i:                                    ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000, i32 %freq_in)
  %cmp11.not.2.i = icmp ult i32 %freq_in, 128000
  br i1 %cmp11.not.2.i, label %for.inc14.2.i, label %for.inc14.1.i.if.end19.i_crit_edge

for.inc14.1.i.if.end19.i_crit_edge:               ; preds = %for.inc14.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.2.i:                                    ; preds = %for.inc14.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %freq_in)
  %cmp11.not.3.i = icmp ult i32 %freq_in, 64000
  br i1 %cmp11.not.3.i, label %for.inc14.3.i, label %for.inc14.2.i.if.end19.i_crit_edge

for.inc14.2.i.if.end19.i_crit_edge:               ; preds = %for.inc14.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.3.i:                                    ; preds = %for.inc14.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %freq_in)
  %cmp11.not.4.i = icmp ult i32 %freq_in, 32000
  br i1 %cmp11.not.4.i, label %for.inc14.4.i, label %for.inc14.3.i.if.end19.i_crit_edge

for.inc14.3.i.if.end19.i_crit_edge:               ; preds = %for.inc14.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.4.i:                                    ; preds = %for.inc14.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %freq_in)
  %cmp11.not.5.i = icmp ult i32 %freq_in, 8000
  br i1 %cmp11.not.5.i, label %for.inc14.5.i, label %for.inc14.4.i.if.end19.i_crit_edge

for.inc14.4.i.if.end19.i_crit_edge:               ; preds = %for.inc14.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.5.i:                                    ; preds = %for.inc14.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %freq_in)
  %cmp11.not.6.i = icmp ult i32 %freq_in, 4000
  br i1 %cmp11.not.6.i, label %for.inc14.5.i.do.end_crit_edge, label %for.inc14.5.i.if.end19.i_crit_edge

for.inc14.5.i.if.end19.i_crit_edge:               ; preds = %for.inc14.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.5.i.do.end_crit_edge:                   ; preds = %for.inc14.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end19.i:                                       ; preds = %for.inc14.5.i.if.end19.i_crit_edge, %for.inc14.4.i.if.end19.i_crit_edge, %for.inc14.3.i.if.end19.i_crit_edge, %for.inc14.2.i.if.end19.i_crit_edge, %for.inc14.1.i.if.end19.i_crit_edge, %for.inc14.i.if.end19.i_crit_edge, %if.end4.i.if.end19.i_crit_edge, %if.end4.thread.i
  %fll_param.sroa.19.0 = phi i32 [ 0, %for.inc14.5.i.if.end19.i_crit_edge ], [ 0, %for.inc14.4.i.if.end19.i_crit_edge ], [ 0, %for.inc14.3.i.if.end19.i_crit_edge ], [ 0, %for.inc14.2.i.if.end19.i_crit_edge ], [ 0, %for.inc14.1.i.if.end19.i_crit_edge ], [ 0, %for.inc14.i.if.end19.i_crit_edge ], [ 0, %if.end4.i.if.end19.i_crit_edge ], [ %5, %if.end4.thread.i ]
  %div.lcssa119.i = phi i32 [ %freq_in, %for.inc14.5.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.4.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.3.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.2.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.1.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.i.if.end19.i_crit_edge ], [ %freq_in, %if.end4.i.if.end19.i_crit_edge ], [ %div.lcssa.ph.i, %if.end4.thread.i ]
  %i.1101.lcssa.i = phi i32 [ 6, %for.inc14.5.i.if.end19.i_crit_edge ], [ 5, %for.inc14.4.i.if.end19.i_crit_edge ], [ 4, %for.inc14.3.i.if.end19.i_crit_edge ], [ 3, %for.inc14.2.i.if.end19.i_crit_edge ], [ 2, %for.inc14.1.i.if.end19.i_crit_edge ], [ 1, %for.inc14.i.if.end19.i_crit_edge ], [ 0, %if.end4.i.if.end19.i_crit_edge ], [ 0, %if.end4.thread.i ]
  %val21.i = getelementptr [7 x %struct.nau8824_fll_attr], ptr @fll_ratio, i32 0, i32 %i.1101.lcssa.i, i32 1
  %6 = ptrtoint ptr %val21.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val21.i, align 4
  %conv.i = zext i32 %div21 to i64
  %mul25.i = shl nuw nsw i64 %conv.i, 9
  %8 = add nsw i64 %mul25.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %8)
  %9 = icmp ult i64 %8, 9999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %freq_out)
  %cmp35.i = icmp ugt i32 %freq_out, 255
  %or.cond84.i = and i1 %cmp35.i, %9
  %fvco_max.1.i = select i1 %or.cond84.i, i64 %mul25.i, i64 0
  %fvco_sel.1.i = select i1 %or.cond84.i, i32 0, i32 10
  %mul29.1.i = shl nuw nsw i64 %conv.i, 10
  %10 = add nsw i64 %mul29.1.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %10)
  %11 = icmp ult i64 %10, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.i, i64 %mul29.1.i)
  %cmp35.1.i = icmp ult i64 %fvco_max.1.i, %mul29.1.i
  %or.cond84.1.i = select i1 %11, i1 %cmp35.1.i, i1 false
  %fvco_max.1.1.i = select i1 %or.cond84.1.i, i64 %mul29.1.i, i64 %fvco_max.1.i
  %fvco_sel.1.1.i = select i1 %or.cond84.1.i, i32 1, i32 %fvco_sel.1.i
  %mul29.2.i = shl nuw nsw i64 %conv.i, 11
  %12 = add nsw i64 %mul29.2.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %12)
  %13 = icmp ult i64 %12, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.1.i, i64 %mul29.2.i)
  %cmp35.2.i = icmp ult i64 %fvco_max.1.1.i, %mul29.2.i
  %or.cond84.2.i = select i1 %13, i1 %cmp35.2.i, i1 false
  %fvco_max.1.2.i = select i1 %or.cond84.2.i, i64 %mul29.2.i, i64 %fvco_max.1.1.i
  %fvco_sel.1.2.i = select i1 %or.cond84.2.i, i32 2, i32 %fvco_sel.1.1.i
  %mul29.3.i = shl nuw nsw i64 %conv.i, 12
  %14 = add nsw i64 %mul29.3.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %14)
  %15 = icmp ult i64 %14, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.2.i, i64 %mul29.3.i)
  %cmp35.3.i = icmp ult i64 %fvco_max.1.2.i, %mul29.3.i
  %or.cond84.3.i = select i1 %15, i1 %cmp35.3.i, i1 false
  %fvco_max.1.3.i = select i1 %or.cond84.3.i, i64 %mul29.3.i, i64 %fvco_max.1.2.i
  %fvco_sel.1.3.i = select i1 %or.cond84.3.i, i32 3, i32 %fvco_sel.1.2.i
  %mul29.4.i = shl nuw nsw i64 %conv.i, 13
  %16 = add nsw i64 %mul29.4.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %16)
  %17 = icmp ult i64 %16, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.3.i, i64 %mul29.4.i)
  %cmp35.4.i = icmp ult i64 %fvco_max.1.3.i, %mul29.4.i
  %or.cond84.4.i = select i1 %17, i1 %cmp35.4.i, i1 false
  %fvco_max.1.4.i = select i1 %or.cond84.4.i, i64 %mul29.4.i, i64 %fvco_max.1.3.i
  %fvco_sel.1.4.i = select i1 %or.cond84.4.i, i32 4, i32 %fvco_sel.1.3.i
  %mul29.5.i = shl nuw nsw i64 %conv.i, 14
  %18 = add nsw i64 %mul29.5.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %18)
  %19 = icmp ult i64 %18, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.4.i, i64 %mul29.5.i)
  %cmp35.5.i = icmp ult i64 %fvco_max.1.4.i, %mul29.5.i
  %or.cond84.5.i = select i1 %19, i1 %cmp35.5.i, i1 false
  %fvco_max.1.5.i = select i1 %or.cond84.5.i, i64 %mul29.5.i, i64 %fvco_max.1.4.i
  %fvco_sel.1.5.i = select i1 %or.cond84.5.i, i32 5, i32 %fvco_sel.1.4.i
  %mul29.6.i = mul nuw nsw i64 %conv.i, 1536
  %20 = add nsw i64 %mul29.6.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %20)
  %21 = icmp ult i64 %20, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.5.i, i64 %mul29.6.i)
  %cmp35.6.i = icmp ult i64 %fvco_max.1.5.i, %mul29.6.i
  %or.cond84.6.i = select i1 %21, i1 %cmp35.6.i, i1 false
  %fvco_max.1.6.i = select i1 %or.cond84.6.i, i64 %mul29.6.i, i64 %fvco_max.1.5.i
  %fvco_sel.1.6.i = select i1 %or.cond84.6.i, i32 6, i32 %fvco_sel.1.5.i
  %mul29.7.i = mul nuw nsw i64 %conv.i, 3072
  %22 = add nsw i64 %mul29.7.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %22)
  %23 = icmp ult i64 %22, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.6.i, i64 %mul29.7.i)
  %cmp35.7.i = icmp ult i64 %fvco_max.1.6.i, %mul29.7.i
  %or.cond84.7.i = select i1 %23, i1 %cmp35.7.i, i1 false
  %fvco_max.1.7.i = select i1 %or.cond84.7.i, i64 %mul29.7.i, i64 %fvco_max.1.6.i
  %fvco_sel.1.7.i = select i1 %or.cond84.7.i, i32 7, i32 %fvco_sel.1.6.i
  %mul29.8.i = mul nuw nsw i64 %conv.i, 6144
  %24 = add nsw i64 %mul29.8.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %24)
  %25 = icmp ult i64 %24, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.7.i, i64 %mul29.8.i)
  %cmp35.8.i = icmp ult i64 %fvco_max.1.7.i, %mul29.8.i
  %or.cond84.8.i = select i1 %25, i1 %cmp35.8.i, i1 false
  %fvco_max.1.8.i = select i1 %or.cond84.8.i, i64 %mul29.8.i, i64 %fvco_max.1.7.i
  %fvco_sel.1.8.i = select i1 %or.cond84.8.i, i32 8, i32 %fvco_sel.1.7.i
  %mul29.9.i = mul nuw nsw i64 %conv.i, 12288
  %26 = add nsw i64 %mul29.9.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %26)
  %27 = icmp ult i64 %26, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.8.i, i64 %mul29.9.i)
  %cmp35.9.i = icmp ult i64 %fvco_max.1.8.i, %mul29.9.i
  %or.cond84.9.i = select i1 %27, i1 %cmp35.9.i, i1 false
  %fvco_sel.1.9.i = select i1 %or.cond84.9.i, i32 9, i32 %fvco_sel.1.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %fvco_sel.1.9.i)
  %cmp42.i = icmp eq i32 %fvco_sel.1.9.i, 10
  br i1 %cmp42.i, label %if.end19.i.do.end_crit_edge, label %if.end45.i

if.end19.i.do.end_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end45.i:                                       ; preds = %if.end19.i
  %fvco_max.1.9.i = select i1 %or.cond84.9.i, i64 %mul29.9.i, i64 %fvco_max.1.8.i
  %val47.i = getelementptr [10 x %struct.nau8824_fll_attr], ptr @mclk_src_scaling, i32 0, i32 %fvco_sel.1.9.i, i32 1
  %28 = ptrtoint ptr %val47.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val47.i, align 4
  %shl.i = shl nuw nsw i64 %fvco_max.1.9.i, 16
  %mul49.i = mul i32 %7, %div.lcssa119.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %fvco_max.1.9.i)
  %cmp164.i.i.i = icmp ult i64 %fvco_max.1.9.i, 65536
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !490

if.then168.i.i.i:                                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %shl.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %mul49.i
  br label %do.body2

if.else174.i.i.i:                                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul49.i, i64 %shl.i) #12, !srcloc !491
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %30, 1
  %extract.t93.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %do.body2

do.end:                                           ; preds = %if.end19.i.do.end_crit_edge, %for.inc14.5.i.do.end_crit_edge, %for.inc.2.i.do.end_crit_edge
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.200, i32 noundef %freq_in) #11
  br label %cleanup

do.body2:                                         ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t93.i, %if.else174.i.i.i ]
  %33 = lshr i32 %dividend.addr.0.i.i.off0.i, 16
  %conv50.i = and i32 %33, 1023
  %conv52.i = and i32 %dividend.addr.0.i.i.off0.i, 65535
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_set_pll.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_set_pll, %if.then6)) #8
          to label %do.end10 [label %if.then6], !srcloc !489

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_set_pll.__UNIQUE_ID_ddebug302, ptr noundef %35, ptr noundef nonnull @.str.202, i32 noundef %29, i32 noundef %7, i32 noundef %conv52.i, i32 noundef %conv50.i, i32 noundef %fll_param.sroa.19.0) #8
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2
  %regmap = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 3, i32 noundef 32783, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i27.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 4, i32 noundef 127, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call2.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 5, i32 noundef %conv52.i) #8
  %call.i28.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 6, i32 noundef 1023, i32 noundef %conv50.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %shl.i27 = shl i32 %fll_param.sroa.19.0, 10
  %call.i29.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 7, i32 noundef 3072, i32 noundef %shl.i27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i30.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 8, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i31.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv52.i)
  %tobool.not.i = icmp eq i32 %conv52.i, 0
  %..i = select i1 %tobool.not.i, i32 4096, i32 49152
  %.37.i = select i1 %tobool.not.i, i32 0, i32 16384
  %call.i34.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 8, i32 noundef 53248, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i35.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 9, i32 noundef 16384, i32 noundef %.37.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 429496000) #8
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 3, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
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
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @nau8824_resume_setup(ptr noundef %3)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.nau8824, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 18, i32 noundef 1023, i32 noundef 1023, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 15, i32 noundef 768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @system_clock_control(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #0 align 64 {
entry:
  %value = alloca i32, align 4
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
  %regmap2 = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %value, align 4, !annotation !488
  %and = and i32 %event, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body14, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @system_clock_control.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@system_clock_control, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !489

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @system_clock_control.__UNIQUE_ID_ddebug296, ptr noundef %10, ptr noundef nonnull @.str.177) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %jack1.i = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %jack1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %jack1.i, align 4
  %irq.i = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 7
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  %tobool2.not.i = icmp eq ptr %12, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %do.end.if.else_crit_edge, label %nau8824_is_jack_inserted.exit

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

nau8824_is_jack_inserted.exit:                    ; preds = %do.end
  %status.i = getelementptr inbounds %struct.snd_soc_jack, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status.i, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool3.i.not, label %nau8824_is_jack_inserted.exit.if.else_crit_edge, label %if.then9

nau8824_is_jack_inserted.exit.if.else_crit_edge:  ; preds = %nau8824_is_jack_inserted.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then9:                                         ; preds = %nau8824_is_jack_inserted.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap2, align 4
  %call.i50.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 9, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i51.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 3, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_config_sysclk.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@system_clock_control, %if.then.i83)) #8
          to label %if.end65 [label %if.then.i83], !srcloc !489

if.then.i83:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_config_sysclk.__UNIQUE_ID_ddebug303, ptr noundef %20, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 2) #8
  br label %if.end65

if.else:                                          ; preds = %nau8824_is_jack_inserted.exit.if.else_crit_edge, %do.end.if.else_crit_edge
  %21 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap2, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 3, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i46.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_config_sysclk.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@system_clock_control, %if.then.i86)) #8
          to label %if.end65 [label %if.then.i86], !srcloc !489

if.then.i86:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_config_sysclk.__UNIQUE_ID_ddebug303, ptr noundef %24, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 0) #8
  br label %if.end65

do.body14:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @system_clock_control.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@system_clock_control, %if.then26)) #8
          to label %do.end30 [label %if.then26], !srcloc !489

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @system_clock_control.__UNIQUE_ID_ddebug297, ptr noundef %26, ptr noundef nonnull @.str.178) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  %call31 = call i32 @regmap_read(ptr noundef %7, i32 noundef 4, ptr noundef nonnull %value) #8
  %27 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value, align 4
  %and32 = and i32 %28, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %call35 = call i32 @regmap_read(ptr noundef %7, i32 noundef 9, ptr noundef nonnull %value) #8
  %29 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %value, align 4
  %and36 = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then40, label %if.then56

if.then40:                                        ; preds = %do.end30
  %call41 = call i32 @regmap_read(ptr noundef %7, i32 noundef 3, ptr noundef nonnull %value) #8
  %31 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %value, align 4
  %33 = and i32 %32, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %.not = icmp eq i32 %33, 0
  br i1 %tobool33.not, label %if.else49, label %if.then43

if.then43:                                        ; preds = %if.then40
  br i1 %.not, label %if.then43.if.then58_crit_edge, label %if.then43.if.end65_crit_edge

if.then43.if.end65_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then43.if.then58_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

if.else49:                                        ; preds = %if.then40
  br i1 %.not, label %if.else49.if.end65_crit_edge, label %if.else49.if.else61_crit_edge

if.else49.if.else61_crit_edge:                    ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else61

if.else49.if.end65_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then56:                                        ; preds = %do.end30
  br i1 %tobool33.not, label %if.then56.if.else61_crit_edge, label %if.then56.if.then58_crit_edge

if.then56.if.then58_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

if.then56.if.else61_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else61

if.then58:                                        ; preds = %if.then56.if.then58_crit_edge, %if.then43.if.then58_crit_edge
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i89 = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 3, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end65

if.else61:                                        ; preds = %if.then56.if.else61_crit_edge, %if.else49.if.else61_crit_edge
  %call62 = call fastcc i32 @nau8824_config_sysclk(ptr noundef %5, i32 noundef 1, i32 noundef 0)
  br label %if.end65

if.end65:                                         ; preds = %if.else61, %if.then58, %if.else49.if.end65_crit_edge, %if.then43.if.end65_crit_edge, %if.then.i86, %if.else, %if.then.i83, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmic_clock_control(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #0 align 64 {
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
  %fs = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fs, align 4
  %mul = shl i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072001, i32 %mul)
  %cmp2 = icmp slt i32 %mul, 3072001
  br i1 %cmp2, label %entry.do.body_crit_edge, label %for.inc

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc:                                          ; preds = %entry
  %mul.1 = shl i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072001, i32 %mul.1)
  %cmp2.1 = icmp slt i32 %mul.1, 3072001
  br i1 %cmp2.1, label %for.inc.do.body_crit_edge, label %for.inc.1

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.1:                                        ; preds = %for.inc
  %mul.2 = shl i32 %7, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072001, i32 %mul.2)
  %cmp2.2 = icmp slt i32 %mul.2, 3072001
  br i1 %cmp2.2, label %for.inc.1.do.body_crit_edge, label %for.inc.2

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.2:                                        ; preds = %for.inc.1
  %mul.3 = shl i32 %7, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072001, i32 %mul.3)
  %cmp2.3 = icmp slt i32 %mul.3, 3072001
  br i1 %cmp2.3, label %for.inc.2.do.body_crit_edge, label %for.inc.3

for.inc.2.do.body_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %mul.4 = shl i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072001, i32 %mul.4)
  %cmp2.4 = icmp slt i32 %mul.4, 3072001
  %spec.select = select i1 %cmp2.4, i32 4, i32 5
  br label %do.body

do.body:                                          ; preds = %for.inc.3, %for.inc.2.do.body_crit_edge, %for.inc.1.do.body_crit_edge, %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %src.0.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ 1, %for.inc.do.body_crit_edge ], [ 2, %for.inc.1.do.body_crit_edge ], [ 3, %for.inc.2.do.body_crit_edge ], [ %spec.select, %for.inc.3 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmic_clock_control.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmic_clock_control, %if.then6)) #8
          to label %do.end [label %if.then6], !srcloc !489

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fs, align 4
  %mul8 = shl i32 %11, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dmic_clock_control.__UNIQUE_ID_ddebug298, ptr noundef %9, ptr noundef nonnull @.str.180, i32 noundef %src.0.lcssa, i32 noundef %mul8) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %regmap = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %shl10 = shl nuw nsw i32 %src.0.lcssa, 10
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 3, i32 noundef 7168, i32 noundef %shl10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_output_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 8, label %sw.bb3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 49152, %sw.bb3 ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 107, i32 noundef 49152, i32 noundef %.sink9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_spk_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 8, label %sw.bb3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 0, %sw.bb3 ], [ 8, %entry.cleanup.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 106, i32 noundef 8, i32 noundef %.sink9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_pump_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 10) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 32768, %sw.bb ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 128, i32 noundef 32768, i32 noundef %.sink9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8824_resume_setup(ptr nocapture noundef readonly %nau8824) unnamed_addr #0 align 64 {
entry:
  %active_irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1.i = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i46.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8824_config_sysclk.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8824_resume_setup, %if.then.i)) #8
          to label %nau8824_config_sysclk.exit [label %if.then.i], !srcloc !489

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %nau8824 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nau8824, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8824_config_sysclk.__UNIQUE_ID_ddebug303, ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 0) #8
  br label %nau8824_config_sysclk.exit

nau8824_config_sysclk.exit:                       ; preds = %if.then.i, %entry
  %irq = getelementptr inbounds %struct.nau8824, ptr %nau8824, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %nau8824_config_sysclk.exit.if.end_crit_edge, label %if.then

nau8824_config_sysclk.exit.if.end_crit_edge:      ; preds = %nau8824_config_sysclk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %nau8824_config_sysclk.exit
  %6 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_irq.i) #8
  %8 = ptrtoint ptr %active_irq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %active_irq.i, align 4, !annotation !488
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 16, ptr noundef nonnull %active_irq.i) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.06.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %i.06.i
  %9 = ptrtoint ptr %active_irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_irq.i, align 4
  %and.i = and i32 %10, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i12

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i12:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 @regmap_write(ptr noundef %7, i32 noundef 17, i32 noundef %shl.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i12, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %nau8824_int_status_clear_all.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

nau8824_int_status_clear_all.exit:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_irq.i) #8
  %11 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap1.i, align 4
  %call.i13 = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 1, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %13 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap1.i, align 4
  %call.i14 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 15, i32 noundef 768, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap1.i, align 4
  %call.i15 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 18, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %nau8824_int_status_clear_all.exit, %nau8824_config_sysclk.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %jd_sem2.i = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 5
  %call.i = tail call i32 @down_timeout(ptr noundef %jd_sem2.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end11.sink.split.i, label %entry.nau8824_sema_acquire.exit_crit_edge

entry.nau8824_sema_acquire.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8824_sema_acquire.exit

if.end11.sink.split.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.21) #11
  br label %nau8824_sema_acquire.exit

nau8824_sema_acquire.exit:                        ; preds = %if.end11.sink.split.i, %entry.nau8824_sema_acquire.exit_crit_edge
  %8 = trunc i32 %fmt to i16
  %trunc = and i16 %8, -4096
  %9 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.213)
  switch i16 %trunc, label %nau8824_sema_acquire.exit.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %nau8824_sema_acquire.exit.sw.epilog_crit_edge
  ]

nau8824_sema_acquire.exit.sw.epilog_crit_edge:    ; preds = %nau8824_sema_acquire.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

nau8824_sema_acquire.exit.cleanup_crit_edge:      ; preds = %nau8824_sema_acquire.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %nau8824_sema_acquire.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %nau8824_sema_acquire.exit.sw.epilog_crit_edge
  %ctrl2_val.0 = phi i32 [ 0, %nau8824_sema_acquire.exit.sw.epilog_crit_edge ], [ 8, %sw.bb ]
  %and3 = and i32 %fmt, 3840
  %10 = zext i32 %and3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %and3, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog7_crit_edge
    i32 768, label %sw.bb4
  ]

sw.epilog.sw.epilog7_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog7

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog7

sw.epilog7:                                       ; preds = %sw.bb4, %sw.epilog.sw.epilog7_crit_edge
  %ctrl1_val.0 = phi i32 [ 128, %sw.bb4 ], [ %and3, %sw.epilog.sw.epilog7_crit_edge ]
  %and8 = and i32 %fmt, 15
  %11 = zext i32 %and8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %and8, label %sw.epilog7.cleanup_crit_edge [
    i32 1, label %sw.bb9
    i32 3, label %sw.bb11
    i32 2, label %sw.epilog7.sw.epilog21_crit_edge
    i32 4, label %sw.bb15
    i32 5, label %sw.bb17
  ]

sw.epilog7.sw.epilog21_crit_edge:                 ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

sw.epilog7.cleanup_crit_edge:                     ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb9:                                           ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #10
  %or10 = or i32 %ctrl1_val.0, 2
  br label %sw.epilog21

sw.bb11:                                          ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #10
  %or12 = or i32 %ctrl1_val.0, 1
  br label %sw.epilog21

sw.bb15:                                          ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #10
  %or16 = or i32 %ctrl1_val.0, 3
  br label %sw.epilog21

sw.bb17:                                          ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #10
  %or19 = or i32 %ctrl1_val.0, 67
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %sw.bb17, %sw.bb15, %sw.bb11, %sw.bb9, %sw.epilog7.sw.epilog21_crit_edge
  %ctrl1_val.1 = phi i32 [ %or19, %sw.bb17 ], [ %or16, %sw.bb15 ], [ %or12, %sw.bb11 ], [ %or10, %sw.bb9 ], [ %ctrl1_val.0, %sw.epilog7.sw.epilog21_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 28, i32 noundef 195, i32 noundef %ctrl1_val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 29, i32 noundef 8, i32 noundef %ctrl2_val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @up(ptr noundef %jd_sem2.i) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog21, %sw.epilog7.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %nau8824_sema_acquire.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog21 ], [ -22, %nau8824_sema_acquire.exit.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %slots)
  %cmp = icmp sgt i32 %slots, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %and = and i32 %tx_mask, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %tx_mask, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = or i1 %tobool.not, %tobool3.not
  br i1 %or.cond, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %and5 = and i32 %rx_mask, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %and8 = and i32 %rx_mask, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %6 = or i32 %rx_mask, %tx_mask
  %7 = and i32 %6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  %or.cond64 = or i1 %tobool6.not, %8
  %brmerge = or i1 %tobool.not, %tobool9.not
  %or.cond65 = and i1 %brmerge, %or.cond64
  br i1 %or.cond65, label %if.end, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl i32 %slot_width, 2
  %shr = lshr i32 %tx_mask, 4
  %tslot_l.0 = select i1 %tobool.not, i32 0, i32 %mul
  %ctrl_val.0.in = select i1 %tobool.not, i32 %tx_mask, i32 %shr
  %shr31 = lshr i32 %rx_mask, 4
  %shl.pn.in = select i1 %tobool6.not, i32 %rx_mask, i32 %shr31
  %shl.pn = shl i32 %shl.pn.in, 4
  %ctrl_val.0 = or i32 %ctrl_val.0.in, %shl.pn
  %ctrl_val.1 = or i32 %ctrl_val.0, 49152
  %regmap = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 32, i32 noundef 49407, i32 noundef %ctrl_val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 30, i32 noundef 1023, i32 noundef %tslot_l.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8824_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  %osr = alloca i32, align 4
  %ctrl_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %osr) #8
  %6 = ptrtoint ptr %osr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %osr, align 4, !annotation !488
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_val) #8
  %7 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ctrl_val, align 4, !annotation !488
  %jd_sem2.i = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 5
  %call.i = tail call i32 @down_timeout(ptr noundef %jd_sem2.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end11.sink.split.i, label %entry.nau8824_sema_acquire.exit_crit_edge

entry.nau8824_sema_acquire.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8824_sema_acquire.exit

if.end11.sink.split.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.21) #11
  br label %nau8824_sema_acquire.exit

nau8824_sema_acquire.exit:                        ; preds = %if.end11.sink.split.i, %entry.nau8824_sema_acquire.exit_crit_edge
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %fs = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fs, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %13 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  %regmap = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %nau8824_sema_acquire.exit
  %call4 = call i32 @regmap_read(ptr noundef %16, i32 noundef 37, ptr noundef nonnull %osr) #8
  %17 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %osr, align 4
  %and = and i32 %18, 7
  store i32 %and, ptr %osr, align 4
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream, align 4
  %21 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i95 = icmp eq i32 %20, 0
  br i1 %cmp.i95, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp1.i = icmp ugt i32 %and, 4
  br i1 %cmp1.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [5 x %struct.nau8824_osr_attr], ptr @osr_dac_sel, i32 0, i32 %and
  br label %if.end9.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp4.i = icmp ugt i32 %and, 3
  br i1 %cmp4.i, label %if.else.i.cleanup_crit_edge, label %if.end6.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7.i = getelementptr [4 x %struct.nau8824_osr_attr], ptr @osr_adc_sel, i32 0, i32 %and
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end6.i, %if.end.i
  %osrate.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %arrayidx7.i, %if.end6.i ]
  %23 = ptrtoint ptr %osrate.0.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %osrate.0.i = load i32, ptr %osrate.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %osrate.0.i)
  %tobool.not.i = icmp eq i32 %osrate.0.i, 0
  %mul.i = mul i32 %22, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144000, i32 %mul.i)
  %cmp10.i = icmp sgt i32 %mul.i, 6144000
  %or.cond.i = or i1 %cmp10.i, %tobool.not.i
  br i1 %or.cond.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.204) #11
  br label %cleanup

if.end:                                           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %28 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %osr, align 4
  %clk_src = getelementptr [5 x %struct.nau8824_osr_attr], ptr @osr_dac_sel, i32 0, i32 %29, i32 1
  %30 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clk_src, align 4
  %shl = shl i32 %31, 4
  %call.i96 = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 3, i32 noundef 48, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end25

if.else:                                          ; preds = %nau8824_sema_acquire.exit
  %call12 = call i32 @regmap_read(ptr noundef %16, i32 noundef 36, ptr noundef nonnull %osr) #8
  %32 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %osr, align 4
  %and13 = and i32 %33, 3
  store i32 %and13, ptr %osr, align 4
  %34 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stream, align 4
  %36 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i97 = icmp eq i32 %35, 0
  %arrayidx.i99 = getelementptr [5 x %struct.nau8824_osr_attr], ptr @osr_dac_sel, i32 0, i32 %and13
  %arrayidx7.i102 = getelementptr [4 x %struct.nau8824_osr_attr], ptr @osr_adc_sel, i32 0, i32 %and13
  %osrate.0.in.i104 = select i1 %cmp.i97, ptr %arrayidx.i99, ptr %arrayidx7.i102
  %38 = ptrtoint ptr %osrate.0.in.i104 to i32
  call void @__asan_load4_noabort(i32 %38)
  %osrate.0.i105 = load i32, ptr %osrate.0.in.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %osrate.0.i105)
  %tobool.not.i106 = icmp eq i32 %osrate.0.i105, 0
  %mul.i107 = mul i32 %37, %and13
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144000, i32 %mul.i107)
  %cmp10.i108 = icmp sgt i32 %mul.i107, 6144000
  %or.cond.i109 = or i1 %cmp10.i108, %tobool.not.i106
  br i1 %or.cond.i109, label %nau8824_clock_check.exit113, label %if.end19

nau8824_clock_check.exit113:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.204) #11
  br label %cleanup

if.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %43 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %osr, align 4
  %clk_src22 = getelementptr [4 x %struct.nau8824_osr_attr], ptr @osr_adc_sel, i32 0, i32 %44, i32 1
  %45 = ptrtoint ptr %clk_src22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clk_src22, align 4
  %shl23 = shl i32 %46, 6
  %call.i114 = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 3, i32 noundef 192, i32 noundef %shl23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end25

if.end25:                                         ; preds = %if.end19, %if.end
  %regmap26 = getelementptr inbounds %struct.nau8824, ptr %5, i32 0, i32 1
  %47 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap26, align 4
  %call27 = call i32 @regmap_read(ptr noundef %48, i32 noundef 29, ptr noundef nonnull %ctrl_val) #8
  %49 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctrl_val, align 4
  %and28 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end25.if.end52_crit_edge, label %if.then30

if.end25.if.end52_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then30:                                        ; preds = %if.end25
  %call31 = call i32 @snd_soc_params_to_bclk(ptr noundef %params) #8
  %51 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fs, align 4
  %div = sdiv i32 %call31, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %div)
  %cmp33 = icmp ult i32 %div, 33
  br i1 %cmp33, label %if.then30.if.end48_crit_edge, label %if.else35

if.then30.if.end48_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.else35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %div)
  %cmp36 = icmp ult i32 %div, 65
  br i1 %cmp36, label %if.else35.if.end48_crit_edge, label %if.else38

if.else35.if.end48_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.else38:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %div)
  %cmp39 = icmp ult i32 %div, 129
  br i1 %cmp39, label %if.else38.if.end48_crit_edge, label %if.else41

if.else38.if.end48_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.else41:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %div)
  %cmp42 = icmp ult i32 %div, 257
  br i1 %cmp42, label %if.else41.if.end48_crit_edge, label %if.else41.cleanup_crit_edge

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else41.if.end48_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end48:                                         ; preds = %if.else41.if.end48_crit_edge, %if.else38.if.end48_crit_edge, %if.else35.if.end48_crit_edge, %if.then30.if.end48_crit_edge
  %bclk_div.0 = phi i32 [ 12291, %if.then30.if.end48_crit_edge ], [ 8194, %if.else35.if.end48_crit_edge ], [ 4097, %if.else38.if.end48_crit_edge ], [ 0, %if.else41.if.end48_crit_edge ]
  %53 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap26, align 4
  %call.i115 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 29, i32 noundef 12295, i32 noundef %bclk_div.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end52

if.end52:                                         ; preds = %if.end48, %if.end25.if.end52_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end52.if.then.i.i.i_crit_edge

if.end52.if.then.i.i.i_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end52.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end52.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %56, %if.end52.if.then.i.i.i_crit_edge ], [ %59, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %57 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !492
  %add.i.i.i = or i32 %57, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end52
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.1.i.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #8
  %60 = add i32 %call1.i, -16
  %61 = call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %61)
  %62 = icmp ult i32 %61, 5
  br i1 %62, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %61 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %63 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %switch.lobit.not = icmp eq i8 %63, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.nau8824_hw_params, i32 0, i32 %61
  %64 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load = load i32, ptr %switch.gep, align 4
  %65 = ptrtoint ptr %regmap26 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap26, align 4
  %call.i116 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 28, i32 noundef 12, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @up(ptr noundef %jd_sem2.i) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %if.else41.cleanup_crit_edge, %nau8824_clock_check.exit113, %do.end.i, %if.else.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %nau8824_clock_check.exit113 ], [ -22, %if.else41.cleanup_crit_edge ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_val) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %osr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i15 @llvm.bitreverse.i15(i15) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 266)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 266)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !36, !38, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !74, !75, !77, !78, !79, !81, !83, !85, !86, !88, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !344, !346, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !396, !397, !399, !400, !402, !403, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !449, !450, !451, !453, !454, !456, !458, !460, !462, !464, !466, !468, !469, !470, !471, !473, !475, !477}
!llvm.module.flags = !{!479, !480, !481, !482, !483, !484, !485, !486}
!llvm.ident = !{!487}

!0 = !{ptr @__param_quirk, !1, !"__param_quirk", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/nau8824.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_quirktype294, !1, !"__UNIQUE_ID_quirktype294", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_quirk295, !4, !"__UNIQUE_ID_quirk295", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/nau8824.c", i32 37, i32 1}
!5 = !{ptr @nau8824_enable_jack_detect.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/nau8824.c", i32 1611, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/nau8824.c", i32 1614, i32 3}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/nau8824.c", i32 1616, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nau8824_enable_jack_detect._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @nau8824_enable_jack_detect._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_nau8824_enable_jack_detect, !19, !"__ksymtab_nau8824_enable_jack_detect", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/nau8824.c", i32 1622, i32 1}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/nau8824.c", i32 1907, i32 10}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/nau8824.c", i32 1909, i32 10}
!24 = !{ptr @__ksymtab_nau8824_components, !25, !"__ksymtab_nau8824_components", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/nau8824.c", i32 1911, i32 1}
!26 = !{ptr @__initcall__kmod_snd_soc_nau8824__315_1991_nau8824_i2c_driver_init6, !27, !"__initcall__kmod_snd_soc_nau8824__315_1991_nau8824_i2c_driver_init6", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/nau8824.c", i32 1991, i32 1}
!28 = !{ptr @__exitcall_nau8824_i2c_driver_exit, !27, !"__exitcall_nau8824_i2c_driver_exit", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_description316, !30, !"__UNIQUE_ID_description316", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/nau8824.c", i32 1994, i32 1}
!31 = !{ptr @__UNIQUE_ID_author317, !32, !"__UNIQUE_ID_author317", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/nau8824.c", i32 1995, i32 1}
!33 = !{ptr @__UNIQUE_ID_file318, !34, !"__UNIQUE_ID_file318", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/nau8824.c", i32 1996, i32 1}
!35 = !{ptr @__UNIQUE_ID_license319, !34, !"__UNIQUE_ID_license319", i1 false, i1 false}
!36 = !{ptr @nau8824_quirk, !37, !"nau8824_quirk", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/nau8824.c", i32 34, i32 12}
!38 = !{ptr @__param_str_quirk, !1, !"__param_str_quirk", i1 false, i1 false}
!39 = !{ptr @quirk_override, !40, !"quirk_override", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/nau8824.c", i32 35, i32 12}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/nau8824.c", i32 878, i32 38}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/nau8824.c", i32 879, i32 38}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/nau8824.c", i32 886, i32 2}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @nau8824_jdet_work.__UNIQUE_ID_ddebug299, !46, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/nau8824.c", i32 957, i32 3}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @nau8824_interrupt._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @nau8824_interrupt._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/nau8824.c", i32 960, i32 2}
!57 = !{ptr @nau8824_interrupt.__UNIQUE_ID_ddebug300, !56, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/nau8824.c", i32 981, i32 3}
!60 = !{ptr @nau8824_interrupt.__UNIQUE_ID_ddebug301, !59, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/nau8824.c", i32 1419, i32 3}
!63 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @nau8824_config_sysclk._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @nau8824_config_sysclk._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/nau8824.c", i32 1423, i32 2}
!68 = !{ptr @nau8824_config_sysclk.__UNIQUE_ID_ddebug303, !67, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/nau8824.c", i32 213, i32 4}
!71 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @nau8824_sema_acquire._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @nau8824_sema_acquire._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/nau8824.c", i32 217, i32 4}
!77 = !{ptr @nau8824_sema_acquire._entry.24, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @nau8824_sema_acquire._entry_ptr.26, !76, !"_entry_ptr", i1 false, i1 false}
!79 = distinct !{null, !80, !"nau8824_quirk_table", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/nau8824.c", i32 1857, i32 35}
!81 = !{ptr @nau8824_i2c_driver, !82, !"nau8824_i2c_driver", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/nau8824.c", i32 1982, i32 26}
!83 = !{ptr @nau8824_i2c_probe._key, !84, !"_key", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/nau8824.c", i32 1930, i32 20}
!85 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/nau8824.c", i32 1946, i32 3}
!88 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @nau8824_i2c_probe._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @nau8824_i2c_probe._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/nau8824.c", i32 1804, i32 38}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/nau8824.c", i32 1808, i32 38}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/nau8824.c", i32 1812, i32 38}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/nau8824.c", i32 1816, i32 38}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/nau8824.c", i32 1820, i32 44}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/nau8824.c", i32 1828, i32 38}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/nau8824.c", i32 1832, i32 38}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/nau8824.c", i32 1836, i32 38}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/nau8824.c", i32 1840, i32 38}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/nau8824.c", i32 1844, i32 38}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/nau8824.c", i32 1848, i32 38}
!113 = !{ptr @nau8824_regmap_config, !114, !"nau8824_regmap_config", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/nau8824.c", i32 1579, i32 35}
!115 = !{ptr @nau8824_reg_defaults, !116, !"nau8824_reg_defaults", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/nau8824.c", i32 105, i32 33}
!117 = !{ptr @sema_init.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!119 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!121 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!123 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/nau8824.c", i32 1782, i32 2}
!125 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug304, !124, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!127 = !{ptr @.str.45, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/nau8824.c", i32 1783, i32 2}
!129 = !{ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug305, !128, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!130 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/nau8824.c", i32 1784, i32 2}
!132 = !{ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug306, !131, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!133 = !{ptr @.str.47, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/nau8824.c", i32 1786, i32 2}
!135 = !{ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug307, !134, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!136 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/nau8824.c", i32 1788, i32 3}
!138 = !{ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug308, !137, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!139 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/nau8824.c", i32 1791, i32 2}
!141 = !{ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug309, !140, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!142 = !{ptr @.str.50, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/nau8824.c", i32 1792, i32 2}
!144 = !{ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug310, !143, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!145 = !{ptr @.str.51, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/nau8824.c", i32 1793, i32 2}
!147 = !{ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug311, !146, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/nau8824.c", i32 1794, i32 2}
!150 = !{ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug312, !149, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!151 = !{ptr @.str.53, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/nau8824.c", i32 1795, i32 2}
!153 = !{ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug313, !152, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!154 = !{ptr @.str.54, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/nau8824.c", i32 1796, i32 2}
!156 = !{ptr @nau8824_print_device_properties.__UNIQUE_ID_ddebug314, !155, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!157 = !{ptr @nau8824_component_driver, !158, !"nau8824_component_driver", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/nau8824.c", i32 1530, i32 46}
!159 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/nau8824.c", i32 364, i32 2}
!161 = !{ptr @.str.56, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/nau8824.c", i32 365, i32 2}
!163 = !{ptr @.str.57, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/nau8824.c", i32 367, i32 2}
!165 = !{ptr @.str.58, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/nau8824.c", i32 368, i32 2}
!167 = !{ptr @.str.59, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/nau8824.c", i32 370, i32 2}
!169 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/nau8824.c", i32 372, i32 2}
!171 = !{ptr @.str.62, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/nau8824.c", i32 374, i32 2}
!173 = !{ptr @.str.64, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/nau8824.c", i32 376, i32 2}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/nau8824.c", i32 379, i32 2}
!177 = !{ptr @.str.68, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/nau8824.c", i32 381, i32 2}
!179 = !{ptr @.str.70, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/nau8824.c", i32 383, i32 2}
!181 = !{ptr @.str.72, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/nau8824.c", i32 385, i32 2}
!183 = !{ptr @.str.74, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/nau8824.c", i32 388, i32 2}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/nau8824.c", i32 390, i32 2}
!187 = !{ptr @.str.78, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/nau8824.c", i32 393, i32 2}
!189 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/nau8824.c", i32 395, i32 2}
!191 = !{ptr @.str.82, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/nau8824.c", i32 397, i32 2}
!193 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/nau8824.c", i32 399, i32 2}
!195 = !{ptr @.str.86, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/nau8824.c", i32 402, i32 2}
!197 = !{ptr @.str.87, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/nau8824.c", i32 403, i32 2}
!199 = !{ptr @.str.88, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/nau8824.c", i32 404, i32 2}
!201 = !{ptr @.str.89, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/nau8824.c", i32 405, i32 2}
!203 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/nau8824.c", i32 407, i32 2}
!205 = !{ptr @.str.92, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/nau8824.c", i32 408, i32 2}
!207 = !{ptr @.str.94, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/nau8824.c", i32 409, i32 2}
!209 = !{ptr @.str.96, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/nau8824.c", i32 410, i32 2}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/nau8824.c", i32 412, i32 2}
!213 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/nau8824.c", i32 413, i32 2}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/nau8824.c", i32 415, i32 2}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/nau8824.c", i32 416, i32 2}
!219 = !{ptr @.str.104, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/nau8824.c", i32 418, i32 2}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/nau8824.c", i32 420, i32 2}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/nau8824.c", i32 422, i32 2}
!225 = !{ptr @.str.110, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/nau8824.c", i32 424, i32 2}
!227 = !{ptr @nau8824_snd_controls, !228, !"nau8824_snd_controls", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/nau8824.c", i32 363, i32 38}
!229 = !{ptr @nau8824_companding_adc_enum, !230, !"nau8824_companding_adc_enum", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/nau8824.c", i32 306, i32 30}
!231 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/nau8824.c", i32 304, i32 2}
!233 = !{ptr @.str.113, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/nau8824.c", i32 304, i32 9}
!235 = !{ptr @.str.114, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/nau8824.c", i32 304, i32 15}
!237 = !{ptr @.str.115, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/nau8824.c", i32 304, i32 24}
!239 = !{ptr @nau8824_companding, !240, !"nau8824_companding", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/nau8824.c", i32 303, i32 27}
!241 = !{ptr @nau8824_companding_dac_enum, !242, !"nau8824_companding_dac_enum", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/nau8824.c", i32 310, i32 30}
!243 = !{ptr @nau8824_adc_decimation_enum, !244, !"nau8824_adc_decimation_enum", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/nau8824.c", i32 317, i32 30}
!245 = !{ptr @.str.116, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/nau8824.c", i32 315, i32 2}
!247 = !{ptr @.str.117, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/nau8824.c", i32 315, i32 8}
!249 = !{ptr @.str.118, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/nau8824.c", i32 315, i32 14}
!251 = !{ptr @.str.119, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/nau8824.c", i32 315, i32 21}
!253 = !{ptr @nau8824_adc_decimation, !254, !"nau8824_adc_decimation", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/nau8824.c", i32 314, i32 27}
!255 = !{ptr @nau8824_dac_oversampl_enum, !256, !"nau8824_dac_oversampl_enum", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/nau8824.c", i32 324, i32 30}
!257 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/nau8824.c", i32 322, i32 22}
!259 = !{ptr @nau8824_dac_oversampl, !260, !"nau8824_dac_oversampl", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/nau8824.c", i32 321, i32 27}
!261 = !{ptr @spk_vol_tlv, !262, !"spk_vol_tlv", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/nau8824.c", i32 358, i32 14}
!263 = !{ptr @hp_vol_tlv, !264, !"hp_vol_tlv", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/nau8824.c", i32 359, i32 14}
!265 = !{ptr @mic_vol_tlv, !266, !"mic_vol_tlv", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/nau8824.c", i32 360, i32 14}
!267 = !{ptr @dmic_vol_tlv, !268, !"dmic_vol_tlv", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/nau8824.c", i32 361, i32 14}
!269 = !{ptr @nau8824_adc_ch0_enum, !270, !"nau8824_adc_ch0_enum", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/nau8824.c", i32 331, i32 30}
!271 = !{ptr @.str.121, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/nau8824.c", i32 329, i32 2}
!273 = !{ptr @.str.122, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/nau8824.c", i32 329, i32 15}
!275 = !{ptr @.str.123, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/nau8824.c", i32 329, i32 28}
!277 = !{ptr @.str.124, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/nau8824.c", i32 329, i32 41}
!279 = !{ptr @nau8824_input_channel, !280, !"nau8824_input_channel", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/nau8824.c", i32 328, i32 27}
!281 = !{ptr @nau8824_adc_ch1_enum, !282, !"nau8824_adc_ch1_enum", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/nau8824.c", i32 335, i32 30}
!283 = !{ptr @nau8824_adc_ch2_enum, !284, !"nau8824_adc_ch2_enum", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/nau8824.c", i32 339, i32 30}
!285 = !{ptr @nau8824_adc_ch3_enum, !286, !"nau8824_adc_ch3_enum", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/nau8824.c", i32 343, i32 30}
!287 = !{ptr @nau8824_dac_left_sel_enum, !288, !"nau8824_dac_left_sel_enum", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/nau8824.c", i32 350, i32 30}
!289 = !{ptr @.str.125, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/nau8824.c", i32 348, i32 2}
!291 = !{ptr @.str.126, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/nau8824.c", i32 348, i32 12}
!293 = !{ptr @.str.127, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/nau8824.c", i32 348, i32 22}
!295 = !{ptr @.str.128, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/nau8824.c", i32 348, i32 32}
!297 = !{ptr @nau8824_tdm_slot, !298, !"nau8824_tdm_slot", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/nau8824.c", i32 347, i32 27}
!299 = !{ptr @nau8824_dac_right_sel_enum, !300, !"nau8824_dac_right_sel_enum", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/nau8824.c", i32 354, i32 30}
!301 = !{ptr @.str.129, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/nau8824.c", i32 644, i32 2}
!303 = !{ptr @.str.130, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/nau8824.c", i32 648, i32 2}
!305 = !{ptr @.str.131, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/nau8824.c", i32 649, i32 2}
!307 = !{ptr @.str.132, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/nau8824.c", i32 650, i32 2}
!309 = !{ptr @.str.133, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/nau8824.c", i32 651, i32 2}
!311 = !{ptr @.str.134, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/nau8824.c", i32 652, i32 2}
!313 = !{ptr @.str.135, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/nau8824.c", i32 653, i32 2}
!315 = !{ptr @.str.136, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/nau8824.c", i32 654, i32 2}
!317 = !{ptr @.str.137, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/nau8824.c", i32 655, i32 2}
!319 = !{ptr @.str.138, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/nau8824.c", i32 661, i32 2}
!321 = !{ptr @.str.139, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/nau8824.c", i32 663, i32 2}
!323 = !{ptr @.str.140, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/nau8824.c", i32 665, i32 2}
!325 = !{ptr @.str.141, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/nau8824.c", i32 668, i32 2}
!327 = !{ptr @.str.142, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/nau8824.c", i32 670, i32 2}
!329 = !{ptr @.str.143, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/nau8824.c", i32 672, i32 2}
!331 = !{ptr @.str.144, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/nau8824.c", i32 674, i32 2}
!333 = !{ptr @.str.145, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/nau8824.c", i32 677, i32 2}
!335 = !{ptr @.str.146, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/nau8824.c", i32 680, i32 2}
!337 = !{ptr @.str.147, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/nau8824.c", i32 684, i32 2}
!339 = !{ptr @.str.148, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/nau8824.c", i32 686, i32 2}
!341 = !{ptr @.str.149, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/nau8824.c", i32 689, i32 2}
!343 = !{ptr @.str.150, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.151, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/nau8824.c", i32 690, i32 2}
!346 = !{ptr @.str.152, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.153, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/nau8824.c", i32 692, i32 2}
!349 = !{ptr @.str.154, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/nau8824.c", i32 694, i32 2}
!351 = !{ptr @.str.155, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/nau8824.c", i32 696, i32 2}
!353 = !{ptr @.str.156, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/nau8824.c", i32 698, i32 2}
!355 = !{ptr @.str.157, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/nau8824.c", i32 701, i32 2}
!357 = !{ptr @.str.158, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/nau8824.c", i32 702, i32 2}
!359 = !{ptr @.str.159, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/nau8824.c", i32 704, i32 2}
!361 = !{ptr @.str.160, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/nau8824.c", i32 707, i32 2}
!363 = !{ptr @.str.161, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/nau8824.c", i32 711, i32 2}
!365 = !{ptr @.str.162, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/nau8824.c", i32 715, i32 2}
!367 = !{ptr @.str.163, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/nau8824.c", i32 718, i32 2}
!369 = !{ptr @.str.164, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/nau8824.c", i32 721, i32 2}
!371 = !{ptr @.str.165, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/nau8824.c", i32 724, i32 2}
!373 = !{ptr @.str.166, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/nau8824.c", i32 726, i32 2}
!375 = !{ptr @.str.167, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/nau8824.c", i32 728, i32 2}
!377 = !{ptr @.str.168, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/nau8824.c", i32 730, i32 2}
!379 = !{ptr @.str.169, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/nau8824.c", i32 732, i32 2}
!381 = !{ptr @.str.170, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/nau8824.c", i32 734, i32 2}
!383 = !{ptr @.str.171, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/nau8824.c", i32 737, i32 2}
!385 = !{ptr @.str.172, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/nau8824.c", i32 738, i32 2}
!387 = !{ptr @.str.173, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/nau8824.c", i32 739, i32 2}
!389 = !{ptr @.str.174, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/nau8824.c", i32 740, i32 2}
!391 = !{ptr @nau8824_dapm_widgets, !392, !"nau8824_dapm_widgets", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/nau8824.c", i32 643, i32 41}
!393 = !{ptr @.str.176, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/nau8824.c", i32 511, i32 3}
!395 = !{ptr @.str.177, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @system_clock_control.__UNIQUE_ID_ddebug296, !394, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!397 = !{ptr @.str.178, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/nau8824.c", i32 524, i32 3}
!399 = !{ptr @system_clock_control.__UNIQUE_ID_ddebug297, !398, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!400 = !{ptr @.str.179, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/nau8824.c", i32 575, i32 2}
!402 = !{ptr @.str.180, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @dmic_clock_control.__UNIQUE_ID_ddebug298, !401, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!404 = !{ptr @.str.181, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/nau8824.c", i32 583, i32 2}
!406 = !{ptr @nau8824_adc_ch0_dmic, !407, !"nau8824_adc_ch0_dmic", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/nau8824.c", i32 582, i32 38}
!408 = !{ptr @nau8824_adc_ch1_dmic, !409, !"nau8824_adc_ch1_dmic", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/nau8824.c", i32 586, i32 38}
!410 = !{ptr @nau8824_adc_ch2_dmic, !411, !"nau8824_adc_ch2_dmic", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/nau8824.c", i32 590, i32 38}
!412 = !{ptr @nau8824_adc_ch3_dmic, !413, !"nau8824_adc_ch3_dmic", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/nau8824.c", i32 594, i32 38}
!414 = !{ptr @.str.186, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/nau8824.c", i32 599, i32 2}
!416 = !{ptr @.str.188, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/nau8824.c", i32 601, i32 2}
!418 = !{ptr @nau8824_adc_left_mixer, !419, !"nau8824_adc_left_mixer", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/nau8824.c", i32 598, i32 38}
!420 = !{ptr @nau8824_adc_right_mixer, !421, !"nau8824_adc_right_mixer", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/nau8824.c", i32 605, i32 38}
!422 = !{ptr @.str.192, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/nau8824.c", i32 637, i32 2}
!424 = !{ptr @nau8824_dacl_mux, !425, !"nau8824_dacl_mux", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/nau8824.c", i32 636, i32 38}
!426 = !{ptr @nau8824_dacl_enum, !427, !"nau8824_dacl_enum", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/nau8824.c", i32 628, i32 8}
!428 = !{ptr @nau8824_dac_src, !429, !"nau8824_dac_src", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/nau8824.c", i32 626, i32 27}
!430 = !{ptr @.str.193, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/nau8824.c", i32 640, i32 2}
!432 = !{ptr @nau8824_dacr_mux, !433, !"nau8824_dacr_mux", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/nau8824.c", i32 639, i32 38}
!434 = !{ptr @nau8824_dacr_enum, !435, !"nau8824_dacr_enum", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/nau8824.c", i32 632, i32 8}
!436 = !{ptr @.str.194, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/nau8824.c", i32 613, i32 2}
!438 = !{ptr @.str.196, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/nau8824.c", i32 615, i32 2}
!440 = !{ptr @nau8824_hp_left_mixer, !441, !"nau8824_hp_left_mixer", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/nau8824.c", i32 612, i32 38}
!442 = !{ptr @nau8824_hp_right_mixer, !443, !"nau8824_hp_right_mixer", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/nau8824.c", i32 619, i32 38}
!444 = !{ptr @nau8824_dapm_routes, !445, !"nau8824_dapm_routes", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/nau8824.c", i32 743, i32 40}
!446 = !{ptr @.str.200, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/nau8824.c", i32 1353, i32 3}
!448 = !{ptr @.str.201, !447, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @nau8824_set_pll._entry, !447, !"_entry", i1 false, i1 false}
!450 = !{ptr @nau8824_set_pll._entry_ptr, !447, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.202, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/nau8824.c", i32 1356, i32 2}
!453 = !{ptr @nau8824_set_pll.__UNIQUE_ID_ddebug302, !452, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!454 = !{ptr @fll_pre_scalar, !455, !"fll_pre_scalar", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/nau8824.c", i32 79, i32 38}
!456 = !{ptr @fll_ratio, !457, !"fll_ratio", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/nau8824.c", i32 69, i32 38}
!458 = !{ptr @mclk_src_scaling, !459, !"mclk_src_scaling", i1 false, i1 false}
!459 = !{!"../sound/soc/codecs/nau8824.c", i32 55, i32 38}
!460 = !{ptr @.str.203, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/nau8824.c", i32 1561, i32 10}
!462 = !{ptr @nau8824_dai, !463, !"nau8824_dai", i1 false, i1 false}
!463 = !{!"../sound/soc/codecs/nau8824.c", i32 1560, i32 34}
!464 = !{ptr @nau8824_dai_ops, !465, !"nau8824_dai_ops", i1 false, i1 false}
!465 = !{!"../sound/soc/codecs/nau8824.c", i32 1550, i32 37}
!466 = !{ptr @.str.204, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/codecs/nau8824.c", i32 1033, i32 3}
!468 = !{ptr @.str.205, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @nau8824_clock_check._entry, !467, !"_entry", i1 false, i1 false}
!470 = !{ptr @nau8824_clock_check._entry_ptr, !467, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @osr_dac_sel, !472, !"osr_dac_sel", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/nau8824.c", i32 90, i32 38}
!473 = !{ptr @osr_adc_sel, !474, !"osr_adc_sel", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/nau8824.c", i32 98, i32 38}
!475 = !{ptr @nau8824_of_ids, !476, !"nau8824_of_ids", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/nau8824.c", i32 1967, i32 34}
!477 = !{ptr @nau8824_i2c_ids, !478, !"nau8824_i2c_ids", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/nau8824.c", i32 1960, i32 35}
!479 = !{i32 1, !"wchar_size", i32 2}
!480 = !{i32 1, !"min_enum_size", i32 4}
!481 = !{i32 8, !"branch-target-enforcement", i32 0}
!482 = !{i32 8, !"sign-return-address", i32 0}
!483 = !{i32 8, !"sign-return-address-all", i32 0}
!484 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!485 = !{i32 7, !"uwtable", i32 1}
!486 = !{i32 7, !"frame-pointer", i32 2}
!487 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!488 = !{!"auto-init"}
!489 = !{i64 2149015549, i64 2149015554, i64 2149015567, i64 2149015611, i64 2149015645, i64 2149015666}
!490 = !{!"branch_weights", i32 2000, i32 1}
!491 = !{i64 2148248596, i64 2148248876, i64 2148249210, i64 2148249544}
!492 = !{i32 0, i32 33}
