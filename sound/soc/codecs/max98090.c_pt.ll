; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/max98090.c_pt.bc'
source_filename = "../sound/soc/codecs/max98090.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+max98090_mic_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_max98090_mic_detect\09\09\09\09"
module asm "\09.long\09__crc_max98090_mic_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max98090_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22max98090_mic_detect\22\09\09\09\09\09"
module asm "__kstrtabns_max98090_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_bytes = type { i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dmic_table = type { i32, [6 x %struct.anon.108] }
%struct.anon.108 = type { i32, [6 x i32] }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.max98090_priv = type { ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, [1 x %struct.max98090_cdata], i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, ptr, i32, i32, i32, i8, i32, i32, i32, i8, i8 }
%struct.max98090_cdata = type { i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@max98090_mic_detect.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_max98090\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max98090_mic_detect\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/max98090.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max98090_mic_detect\0A\00", [43 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_max98090_mic_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_max98090_mic_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_max98090_mic_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max98090_mic_detect to i32), ptr @__kstrtab_max98090_mic_detect, ptr @__kstrtabns_max98090_mic_detect }, section "___ksymtab_gpl+max98090_mic_detect", align 4
@__initcall__kmod_snd_soc_max98090__312_2699_max98090_i2c_driver_init6 = internal global ptr @max98090_i2c_driver_init, section ".initcall6.init", align 4
@max98090_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max98090_i2c_probe, ptr @max98090_i2c_remove, ptr null, ptr @max98090_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max98090_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98090_pm, ptr null, ptr null }, ptr @max98090_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max98090_i2c_driver_exit = internal global ptr @max98090_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description313 = internal constant [54 x i8] c"snd_soc_max98090.description=ALSA SoC MAX98090 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author314 = internal constant [65 x i8] c"snd_soc_max98090.author=Peter Hsiang, Jesse Marroqin, Jerry Wong\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [56 x i8] c"snd_soc_max98090.file=sound/soc/codecs/snd-soc-max98090\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [29 x i8] c"snd_soc_max98090.license=GPL\00", section ".modinfo", align 1
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max98090\00", [23 x i8] zeroinitializer }, align 32
@max98090_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max98090\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max98091\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@max98090_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @max98090_resume, ptr null, ptr @max98090_resume, ptr null, ptr @max98090_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98090_runtime_suspend, ptr @max98090_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@max98090_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max98090\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max98091\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max98090_i2c_probe.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 2, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98090_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max98090_i2c_probe\0A\00", [44 x i8] zeroinitializer }, align 32
@max98090_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 2551, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No driver data\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max98090_i2c_probe._entry_ptr = internal global ptr @max98090_i2c_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"maxim,dmic-freq\00", [16 x i8] zeroinitializer }, align 32
@max98090_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max98090_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr @max98090_readable_register, ptr @max98090_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98090_reg, i32 208, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"max98090:2568:(&max98090_regmap)->lock\00", [57 x i8] zeroinitializer }, align 32
@max98090_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 2571, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate regmap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@max98090_i2c_probe._entry_ptr.14 = internal global ptr @max98090_i2c_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98090_interrupt\00", [45 x i8] zeroinitializer }, align 32
@max98090_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.2, i32 2580, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request_irq failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@max98090_i2c_probe._entry_ptr.18 = internal global ptr @max98090_i2c_probe._entry.16, section ".printk_index", align 4
@soc_component_dev_max98090 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @max98090_probe, ptr @max98090_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98090_seq_notifier, ptr null, ptr @max98090_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@max98090_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.408, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98090_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.282, i64 68, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.291, i64 68, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@max98090_reg = internal constant { [208 x %struct.reg_default], [416 x i8] } { [208 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 3, i32 4 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 27 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 20 }, %struct.reg_default { i32 17, i32 20 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 3 }, %struct.reg_default { i32 24, i32 3 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 128 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 26 }, %struct.reg_default { i32 45, i32 26 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 44 }, %struct.reg_default { i32 50, i32 44 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 21 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 21 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 0 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 68, i32 6 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 71, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 73, i32 0 }, %struct.reg_default { i32 74, i32 0 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 0 }, %struct.reg_default { i32 83, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 86, i32 0 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 88, i32 0 }, %struct.reg_default { i32 89, i32 0 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 91, i32 0 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 93, i32 0 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 95, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 0 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 103, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 113, i32 0 }, %struct.reg_default { i32 114, i32 0 }, %struct.reg_default { i32 115, i32 0 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 117, i32 0 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 121, i32 0 }, %struct.reg_default { i32 122, i32 0 }, %struct.reg_default { i32 123, i32 0 }, %struct.reg_default { i32 124, i32 0 }, %struct.reg_default { i32 125, i32 0 }, %struct.reg_default { i32 126, i32 0 }, %struct.reg_default { i32 127, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 134, i32 0 }, %struct.reg_default { i32 135, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 137, i32 0 }, %struct.reg_default { i32 138, i32 0 }, %struct.reg_default { i32 139, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 141, i32 0 }, %struct.reg_default { i32 142, i32 0 }, %struct.reg_default { i32 143, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 145, i32 0 }, %struct.reg_default { i32 146, i32 0 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 150, i32 0 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 153, i32 0 }, %struct.reg_default { i32 154, i32 0 }, %struct.reg_default { i32 155, i32 0 }, %struct.reg_default { i32 156, i32 0 }, %struct.reg_default { i32 157, i32 0 }, %struct.reg_default { i32 158, i32 0 }, %struct.reg_default { i32 159, i32 0 }, %struct.reg_default { i32 160, i32 0 }, %struct.reg_default { i32 161, i32 0 }, %struct.reg_default { i32 162, i32 0 }, %struct.reg_default { i32 163, i32 0 }, %struct.reg_default { i32 164, i32 0 }, %struct.reg_default { i32 165, i32 0 }, %struct.reg_default { i32 166, i32 0 }, %struct.reg_default { i32 167, i32 0 }, %struct.reg_default { i32 168, i32 0 }, %struct.reg_default { i32 169, i32 0 }, %struct.reg_default { i32 170, i32 0 }, %struct.reg_default { i32 171, i32 0 }, %struct.reg_default { i32 172, i32 0 }, %struct.reg_default { i32 173, i32 0 }, %struct.reg_default { i32 174, i32 0 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 176, i32 0 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 178, i32 0 }, %struct.reg_default { i32 179, i32 0 }, %struct.reg_default { i32 180, i32 0 }, %struct.reg_default { i32 181, i32 0 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 183, i32 0 }, %struct.reg_default { i32 184, i32 0 }, %struct.reg_default { i32 185, i32 0 }, %struct.reg_default { i32 186, i32 0 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 188, i32 0 }, %struct.reg_default { i32 189, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 0 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 193, i32 0 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 195, i32 0 }, %struct.reg_default { i32 196, i32 0 }, %struct.reg_default { i32 197, i32 0 }, %struct.reg_default { i32 198, i32 0 }, %struct.reg_default { i32 199, i32 0 }, %struct.reg_default { i32 200, i32 0 }, %struct.reg_default { i32 201, i32 0 }, %struct.reg_default { i32 202, i32 0 }, %struct.reg_default { i32 203, i32 0 }, %struct.reg_default { i32 204, i32 0 }, %struct.reg_default { i32 205, i32 0 }, %struct.reg_default { i32 206, i32 0 }, %struct.reg_default { i32 207, i32 0 }, %struct.reg_default { i32 208, i32 0 }, %struct.reg_default { i32 209, i32 0 }], [416 x i8] zeroinitializer }, align 32
@max98090_interrupt.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.19, i8 2, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"***** max98090_interrupt *****\0A\00", [32 x i8] zeroinitializer }, align 32
@max98090_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 2246, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to read M98090_REG_INTERRUPT_S: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@max98090_interrupt._entry_ptr = internal global ptr @max98090_interrupt._entry, section ".printk_index", align 4
@max98090_interrupt._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.2, i32 2255, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to read M98090_REG_DEVICE_STATUS: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@max98090_interrupt._entry_ptr.23 = internal global ptr @max98090_interrupt._entry.21, section ".printk_index", align 4
@max98090_interrupt.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.24, i8 2, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"active=0x%02x mask=0x%02x -> active=0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@max98090_interrupt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.2, i32 2268, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"M98090_CLD_MASK\0A\00", [47 x i8] zeroinitializer }, align 32
@max98090_interrupt._entry_ptr.27 = internal global ptr @max98090_interrupt._entry.25, section ".printk_index", align 4
@max98090_interrupt.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.28, i8 2, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"M98090_SLD_MASK\0A\00", [47 x i8] zeroinitializer }, align 32
@max98090_interrupt.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.29, i8 2, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"M98090_ULK_MASK\0A\00", [47 x i8] zeroinitializer }, align 32
@max98090_interrupt.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.30, i8 2, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"M98090_JDET_MASK\0A\00", [46 x i8] zeroinitializer }, align 32
@max98090_interrupt.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.31, i8 2, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"M98090_DRCACT_MASK\0A\00", [44 x i8] zeroinitializer }, align 32
@max98090_interrupt._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.15, ptr @.str.2, i32 2292, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"M98090_DRCCLP_MASK\0A\00", [44 x i8] zeroinitializer }, align 32
@max98090_interrupt._entry_ptr.34 = internal global ptr @max98090_interrupt._entry.32, section ".printk_index", align 4
@max98090_pll_work._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.max98090_pll_work = private unnamed_addr constant [18 x i8] c"max98090_pll_work\00", align 1
@max98090_pll_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.max98090_pll_work, ptr @.str.2, i32 2116, ptr @.str.37, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL unlocked\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max98090_pll_work._entry_ptr = internal global ptr @max98090_pll_work._entry, section ".printk_index", align 4
@max98090_probe.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 2, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max98090_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max98090_probe\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@max98090_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.38, ptr @.str.2, i32 2412, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read device revision: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@max98090_probe._entry_ptr = internal global ptr @max98090_probe._entry, section ".printk_index", align 4
@max98090_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 2418, ptr @.str.37, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MAX98090 REVID=0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@max98090_probe._entry_ptr.44 = internal global ptr @max98090_probe._entry.42, section ".printk_index", align 4
@max98090_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 2421, ptr @.str.37, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MAX98091 REVID=0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@max98090_probe._entry_ptr.47 = internal global ptr @max98090_probe._entry.45, section ".printk_index", align 4
@max98090_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.2, i32 2424, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unrecognized revision 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@max98090_probe._entry_ptr.50 = internal global ptr @max98090_probe._entry.48, section ".printk_index", align 4
@max98090_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.38, ptr @.str.2, i32 2428, ptr @.str.53, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Mismatch in DT specified CODEC type.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max98090_probe._entry_ptr.54 = internal global ptr @max98090_probe._entry.51, section ".printk_index", align 4
@max98090_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&max98090->jack_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@max98090_probe.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&max98090->jack_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@max98090_probe.__key.58 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"(work_completion)(&(&max98090->pll_det_enable_work)->work)\00", [37 x i8] zeroinitializer }, align 32
@max98090_probe.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"&(&max98090->pll_det_enable_work)->timer\00", [55 x i8] zeroinitializer }, align 32
@max98090_probe.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&max98090->pll_det_disable_work)\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"maxim,micbias\00", [18 x i8] zeroinitializer }, align 32
@max98090_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.38, ptr @.str.2, i32 2469, ptr @.str.37, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"use default 2.8v micbias\0A\00", [38 x i8] zeroinitializer }, align 32
@max98090_probe._entry_ptr.67 = internal global ptr @max98090_probe._entry.65, section ".printk_index", align 4
@max98090_probe._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.38, ptr @.str.2, i32 2471, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"micbias out of range 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@max98090_probe._entry_ptr.70 = internal global ptr @max98090_probe._entry.68, section ".printk_index", align 4
@max98090_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 285, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to reset codec: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max98090_reset\00", [17 x i8] zeroinitializer }, align 32
@max98090_reset._entry_ptr = internal global ptr @max98090_reset._entry, section ".printk_index", align 4
@max98090_jack_work.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 2, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98090_jack_work\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No Headset Detected\0A\00", [43 x i8] zeroinitializer }, align 32
@max98090_jack_work.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.75, i8 2, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Headset Button Down Detected\0A\00", [34 x i8] zeroinitializer }, align 32
@max98090_jack_work.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.76, i8 2, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headphone Detected\0A\00", [44 x i8] zeroinitializer }, align 32
@max98090_jack_work.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.77, i8 2, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Headset Detected\0A\00", [46 x i8] zeroinitializer }, align 32
@max98090_jack_work.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.78, i8 2, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unrecognized Jack Status\0A\00", [38 x i8] zeroinitializer }, align 32
@max98090_snd_controls = internal constant { [66 x %struct.snd_kcontrol_new], [768 x i8] } { [66 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98090_vcmbandgap_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @max98090_get_enab_tlv, ptr @max98090_put_enab_tlv, %union.anon.94 { ptr @max98090_micboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @max98090_get_enab_tlv, ptr @max98090_put_enab_tlv, %union.anon.94 { ptr @max98090_micboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_mic_tlv }, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_mic_tlv }, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.94 { ptr @max98090_line_single_ended_tlv }, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.94 { ptr @max98090_line_single_ended_tlv }, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.94 { ptr @max98090_line_tlv }, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.94 { ptr @max98090_line_tlv }, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_avg_tlv }, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_avg_tlv }, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_av_tlv }, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_av_tlv }, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98090_osr128_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98090_adchp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98090_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_dv_tlv }, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @max98090_get_enab_tlv, ptr @max98090_put_enab_tlv, %union.anon.94 { ptr @max98090_sdg_tlv }, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_dvg_tlv }, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_dv_tlv }, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_dv_tlv }, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98090_drcatk_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98090_drcrls_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_alcmakeup_tlv }, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98090_alccmp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98090_drcexp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_alccomp_tlv }, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_drcexp_tlv }, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98090_dac_perfmode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.159, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98090_dachp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_mixout_tlv }, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_mixout_tlv }, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_mixout_tlv }, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_mixout_tlv }, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_mixout_tlv }, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_mixout_tlv }, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_hp_tlv }, i32 ptrtoint (ptr @.compoundliteral.173 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.94 { ptr @max98090_spk_tlv }, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_rcv_lout_tlv }, i32 ptrtoint (ptr @.compoundliteral.177 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.193 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }], [768 x i8] zeroinitializer }, align 32
@max98091_snd_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.229, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.230 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.231, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @max98090_filter_dmic34mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.233 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_avg_tlv }, i32 ptrtoint (ptr @.compoundliteral.235 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.236, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_avg_tlv }, i32 ptrtoint (ptr @.compoundliteral.237 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_av_tlv }, i32 ptrtoint (ptr @.compoundliteral.239 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.240, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_av_tlv }, i32 ptrtoint (ptr @.compoundliteral.241 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.242, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.243 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.244, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.245 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.246, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @max98090_dv_tlv }, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }], [96 x i8] zeroinitializer }, align 32
@max98090_dapm_routes = internal constant { [128 x %struct.snd_soc_dapm_route], [1664 x i8] } { [128 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.271, ptr null, ptr @.str.248, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.272, ptr null, ptr @.str.249, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr null, ptr @.str.265, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr null, ptr @.str.266, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr null, ptr @.str.265, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr null, ptr @.str.266, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr null, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr null, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.268, ptr @.str.258, ptr @.str.258, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.268, ptr @.str.260, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.269, ptr @.str.259, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.269, ptr @.str.260, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.271, ptr null, ptr @.str.268, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.272, ptr null, ptr @.str.269, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.277, ptr @.str.335, ptr @.str.258, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.277, ptr @.str.325, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.277, ptr @.str.333, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.277, ptr @.str.339, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.277, ptr @.str.341, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.277, ptr @.str.343, ptr @.str.271, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.277, ptr @.str.345, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.278, ptr @.str.335, ptr @.str.258, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.278, ptr @.str.325, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.278, ptr @.str.333, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.278, ptr @.str.339, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.278, ptr @.str.341, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.278, ptr @.str.343, ptr @.str.271, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.278, ptr @.str.345, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.273, ptr @.str.319, ptr @.str.252, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.273, ptr @.str.321, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.273, ptr @.str.323, ptr @.str.256, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.273, ptr @.str.325, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.274, ptr @.str.327, ptr @.str.253, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.274, ptr @.str.329, ptr @.str.255, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.274, ptr @.str.331, ptr @.str.257, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.274, ptr @.str.333, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.275, ptr null, ptr @.str.273, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.276, ptr null, ptr @.str.274, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.279, ptr null, ptr @.str.277, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.280, ptr null, ptr @.str.278, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.279, ptr null, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.280, ptr null, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.270, ptr @.str.317, ptr @.str.279, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.270, ptr @.str.317, ptr @.str.280, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.270, ptr @.str.318, ptr @.str.250, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.270, ptr @.str.318, ptr @.str.251, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.284, ptr @.str.354, ptr @.str.270, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.284, ptr @.str.355, ptr @.str.286, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.285, ptr @.str.354, ptr @.str.270, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.285, ptr @.str.355, ptr @.str.287, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.281, ptr null, ptr @.str.284, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.283, ptr null, ptr @.str.285, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.281, ptr null, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.283, ptr null, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.281, ptr null, ptr @.str.264, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.283, ptr null, ptr @.str.264, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.286, ptr @.str.354, ptr @.str.290, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.286, ptr @.str.356, ptr @.str.284, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.287, ptr @.str.354, ptr @.str.292, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.287, ptr @.str.356, ptr @.str.285, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr null, ptr @.str.286, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.294, ptr null, ptr @.str.287, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.288, ptr @.str.357, ptr @.str.279, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.288, ptr @.str.357, ptr @.str.250, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.289, ptr @.str.358, ptr @.str.280, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.289, ptr @.str.358, ptr @.str.251, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr null, ptr @.str.288, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.294, ptr null, ptr @.str.289, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.290, ptr null, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr null, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.290, ptr null, ptr @.str.263, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr null, ptr @.str.263, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr null, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.294, ptr null, ptr @.str.262, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr @.str.359, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr @.str.361, ptr @.str.294, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr @.str.343, ptr @.str.271, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr @.str.345, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr @.str.339, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr @.str.341, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.296, ptr @.str.359, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.296, ptr @.str.361, ptr @.str.294, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.296, ptr @.str.343, ptr @.str.271, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.296, ptr @.str.345, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.296, ptr @.str.339, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.296, ptr @.str.341, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.297, ptr @.str.359, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.297, ptr @.str.361, ptr @.str.294, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.297, ptr @.str.343, ptr @.str.271, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.297, ptr @.str.345, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.297, ptr @.str.339, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.297, ptr @.str.341, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.298, ptr @.str.359, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.298, ptr @.str.361, ptr @.str.294, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.298, ptr @.str.343, ptr @.str.271, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.298, ptr @.str.345, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.298, ptr @.str.339, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.298, ptr @.str.341, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr @.str.359, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr @.str.361, ptr @.str.294, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr @.str.343, ptr @.str.271, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr @.str.345, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr @.str.339, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr @.str.341, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.359, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.361, ptr @.str.294, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.343, ptr @.str.271, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.345, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.339, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.341, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.302, ptr @.str.400, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.304, ptr null, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.304, ptr null, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.303, ptr @.str.400, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.305, ptr null, ptr @.str.294, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.305, ptr null, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.306, ptr null, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.307, ptr null, ptr @.str.298, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.308, ptr null, ptr @.str.299, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.301, ptr @.str.398, ptr @.str.300, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.301, ptr @.str.397, ptr @.str.299, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.309, ptr null, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.310, ptr null, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.311, ptr null, ptr @.str.305, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.312, ptr null, ptr @.str.306, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.313, ptr null, ptr @.str.307, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.314, ptr null, ptr @.str.308, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.315, ptr null, ptr @.str.309, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1664 x i8] zeroinitializer }, align 32
@max98091_dapm_routes = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.401, ptr null, ptr @.str.403, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.402, ptr null, ptr @.str.404, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.401, ptr null, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.402, ptr null, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MIC Bias VCM Bandgap\00", [43 x i8] zeroinitializer }, align 32
@max98090_vcmbandgap_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 66, i8 0, i8 0, i32 2, i32 1, ptr @max98090_pwr_perf_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DMIC MIC Comp Filter Config\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 20, i32 20, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MIC1 Boost Volume\00", [46 x i8] zeroinitializer }, align 32
@max98090_micboost_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 1, i32 1, i32 8, i32 0, i32 2000, i32 2, i32 2, i32 1, i32 8, i32 3000, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 16, i32 16, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MIC2 Boost Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 17, i32 17, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC1 Volume\00", [20 x i8] zeroinitializer }, align 32
@max98090_mic_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 16, i32 16, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 17, i32 17, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LINEA Single Ended Volume\00", [38 x i8] zeroinitializer }, align 32
@max98090_line_single_ended_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LINEB Single Ended Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LINEA Volume\00", [19 x i8] zeroinitializer }, align 32
@max98090_line_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 3, i32 1, i32 8, i32 -600, i32 300, i32 4, i32 5, i32 1, i32 8, i32 1400, i32 600], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 14, i32 14, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LINEB Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 14, i32 14, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LINEA Ext Resistor Gain Mode\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LINEB Ext Resistor Gain Mode\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADCL Boost Volume\00", [46 x i8] zeroinitializer }, align 32
@max98090_avg_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 23, i32 23, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADCR Boost Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 24, i32 24, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADCL Volume\00", [20 x i8] zeroinitializer }, align 32
@max98090_av_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 23, i32 23, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADCR Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 24, i32 24, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC Oversampling Rate\00", [42 x i8] zeroinitializer }, align 32
@max98090_osr128_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 2, i8 2, i32 2, i32 1, ptr @max98090_osr128_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC Quantizer Dither\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 68, i32 68, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ADC High Performance Mode\00", [38 x i8] zeroinitializer }, align 32
@max98090_adchp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 0, i8 0, i32 2, i32 1, ptr @max98090_pwr_perf_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC Mono Mode\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SDIN Mode\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SDOUT Mode\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SDOUT Hi-Z Mode\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Filter Mode\00", [20 x i8] zeroinitializer }, align 32
@max98090_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 7, i8 7, i32 2, i32 1, ptr @max98090_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Record Path DC Blocking\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Playback Path DC Blocking\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Digital BQ Volume\00", [46 x i8] zeroinitializer }, align 32
@max98090_dv_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1500, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 25, i32 25, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Sidetone Volume\00", [40 x i8] zeroinitializer }, align 32
@max98090_sdg_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 50, i32 200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 30, i32 30, i32 26, i32 26, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Digital Coarse Volume\00", [42 x i8] zeroinitializer }, align 32
@max98090_dvg_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 39, i32 39, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Digital Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 39, i32 39, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EQ Coefficients\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 70, i32 105, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Digital EQ 3 Band Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 65, i32 65, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Digital EQ 5 Band Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 65, i32 65, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Digital EQ 7 Band Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 65, i32 65, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Digital EQ Clipping Detection\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Digital EQ Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 40, i32 40, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALC Enable\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ALC Attack Time\00", [16 x i8] zeroinitializer }, align 32
@max98090_drcatk_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 51, i8 0, i8 0, i32 8, i32 7, ptr @max98090_drcatk_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ALC Release Time\00", [47 x i8] zeroinitializer }, align 32
@max98090_drcrls_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 51, i8 4, i8 4, i32 8, i32 7, ptr @max98090_drcrls_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ALC Make Up Volume\00", [45 x i8] zeroinitializer }, align 32
@max98090_alcmakeup_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 54, i32 54, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ALC Compression Ratio\00", [42 x i8] zeroinitializer }, align 32
@max98090_alccmp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 52, i8 5, i8 5, i32 5, i32 7, ptr @max98090_alccmp_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALC Expansion Ratio\00", [44 x i8] zeroinitializer }, align 32
@max98090_drcexp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 53, i8 5, i8 5, i32 3, i32 3, ptr @max98090_drcexp_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ALC Compression Threshold Volume\00", [63 x i8] zeroinitializer }, align 32
@max98090_alccomp_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3100, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 52, i32 52, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ALC Expansion Threshold Volume\00", [33 x i8] zeroinitializer }, align 32
@max98090_drcexp_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6600, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 53, i32 53, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DAC HP Playback Performance Mode\00", [63 x i8] zeroinitializer }, align 32
@max98090_dac_perfmode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 67, i8 1, i8 1, i32 2, i32 1, ptr @max98090_perf_pwr_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DAC High Performance Mode\00", [38 x i8] zeroinitializer }, align 32
@max98090_dachp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 67, i8 0, i8 0, i32 2, i32 1, ptr @max98090_pwr_perf_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Headphone Left Mixer Volume\00", [36 x i8] zeroinitializer }, align 32
@max98090_mixout_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 1, i32 1, i32 8, i32 -1200, i32 250, i32 2, i32 3, i32 1, i32 8, i32 -600, i32 600], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 43, i32 43, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Headphone Right Mixer Volume\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 43, i32 43, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Speaker Left Mixer Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 48, i32 48, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Speaker Right Mixer Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 48, i32 48, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Receiver Left Mixer Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 56, i32 56, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Receiver Right Mixer Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 59, i32 59, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@max98090_hp_tlv = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 120, i32 0, i32 6, i32 1, i32 8, i32 -6700, i32 400, i32 7, i32 14, i32 1, i32 8, i32 -4000, i32 300, i32 15, i32 21, i32 1, i32 8, i32 -1700, i32 200, i32 22, i32 27, i32 1, i32 8, i32 -400, i32 100, i32 28, i32 31, i32 1, i32 8, i32 150, i32 50], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 44, i32 45, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@max98090_spk_tlv = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 120, i32 0, i32 4, i32 1, i32 8, i32 -4800, i32 400, i32 5, i32 10, i32 1, i32 8, i32 -2900, i32 300, i32 11, i32 14, i32 1, i32 8, i32 -1200, i32 200, i32 15, i32 29, i32 1, i32 8, i32 -500, i32 100, i32 30, i32 39, i32 1, i32 8, i32 950, i32 50], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 24, i32 63, i32 63, i32 49, i32 50, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Receiver Volume\00", [16 x i8] zeroinitializer }, align 32
@max98090_rcv_lout_tlv = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 120, i32 0, i32 6, i32 1, i32 8, i32 -6200, i32 400, i32 7, i32 14, i32 1, i32 8, i32 -3500, i32 300, i32 15, i32 21, i32 1, i32 8, i32 -1200, i32 200, i32 22, i32 27, i32 1, i32 8, i32 100, i32 100, i32 28, i32 31, i32 1, i32 8, i32 650, i32 50], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 57, i32 60, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Headphone Left Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Headphone Right Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Speaker Left Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 49, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Speaker Right Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Receiver Left Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Receiver Right Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Zero-Crossing Detection\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enhanced Vol Smoothing\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.193 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Volume Adjustment Smoothing\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Biquad Coefficients\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 175, i32 15, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Biquad Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 65, i32 65, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@max98090_pwr_perf_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.200, ptr @.str.201], [24 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Low Power\00", [22 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"High Performance\00", [47 x i8] zeroinitializer }, align 32
@max98090_osr128_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.202, ptr @.str.203], [24 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"64*fs\00", [26 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"128*fs\00", [25 x i8] zeroinitializer }, align 32
@max98090_mode_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.204, ptr @.str.205], [24 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Voice\00", [26 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Music\00", [26 x i8] zeroinitializer }, align 32
@max98090_drcatk_text = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213], [32 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.5ms\00", [26 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1ms\00", [28 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5ms\00", [28 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"10ms\00", [27 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"25ms\00", [27 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"50ms\00", [27 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100ms\00", [26 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200ms\00", [26 x i8] zeroinitializer }, align 32
@max98090_drcrls_text = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221], [32 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"8s\00", [29 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4s\00", [29 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2s\00", [29 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1s\00", [29 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.5s\00", [27 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.25s\00", [26 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.125s\00", [25 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.0625s\00", [24 x i8] zeroinitializer }, align 32
@max98090_alccmp_text = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226], [44 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1:1\00", [28 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1:1.5\00", [26 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1:2\00", [28 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1:4\00", [28 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1:INF\00", [26 x i8] zeroinitializer }, align 32
@max98090_drcexp_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.222, ptr @.str.227, ptr @.str.228], [20 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2:1\00", [28 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3:1\00", [28 x i8] zeroinitializer }, align 32
@max98090_perf_pwr_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.201, ptr @.str.200], [24 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DMIC34 Zeropad\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.230 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 194, i32 194, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Filter DMIC34 Mode\00", [45 x i8] zeroinitializer }, align 32
@max98090_filter_dmic34mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 3, i8 3, i32 2, i32 1, ptr @max98090_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMIC34 DC Blocking\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.233 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMIC3 Boost Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.235 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 190, i32 190, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMIC4 Boost Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.237 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 191, i32 191, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC3 Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.239 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 190, i32 190, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC4 Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.241 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 191, i32 191, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMIC34 Biquad Coefficients\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 195, i32 15, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMIC34 Biquad Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.245 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 65, i32 65, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMIC34 BQ PreAttenuation Volume\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 192, i32 192, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMICL\00", [26 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMICR\00", [26 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN1\00", [28 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN2\00", [28 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN3\00", [28 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN4\00", [28 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN5\00", [28 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN6\00", [28 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN12\00", [27 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN34\00", [27 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN56\00", [27 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SHDN\00", [27 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDIEN\00", [26 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDOEN\00", [26 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMICL_ENA\00", [22 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMICR_ENA\00", [22 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AHPF\00", [27 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MIC1 Mux\00", [23 x i8] zeroinitializer }, align 32
@max98090_mic1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.268, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @mic1_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MIC2 Mux\00", [23 x i8] zeroinitializer }, align 32
@max98090_mic2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.269, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @mic2_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC Mux\00", [23 x i8] zeroinitializer }, align 32
@max98090_dmic_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dmic_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIC1 Input\00", [21 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIC2 Input\00", [21 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINEA Mixer\00", [20 x i8] zeroinitializer }, align 32
@max98090_linea_mixer_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.319, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.320 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.321, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.322 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.323, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.324 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.325, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.326 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINEB Mixer\00", [20 x i8] zeroinitializer }, align 32
@max98090_lineb_mixer_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.327, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.328 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.329, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.330 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.331, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.332 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.333, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.334 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINEA Input\00", [20 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINEB Input\00", [20 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left ADC Mixer\00", [17 x i8] zeroinitializer }, align 32
@max98090_left_adc_mixer_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.335, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.336 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.325, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.337 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.333, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.338 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.339, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.340 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.342 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.344 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.346 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right ADC Mixer\00", [16 x i8] zeroinitializer }, align 32
@max98090_right_adc_mixer_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.335, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.347 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.325, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.348 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.333, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.349 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.339, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.350 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.351 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.352 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.353 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCL\00", [27 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCR\00", [27 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIFOUTL\00", [24 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIFOUTR\00", [24 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LBENL Mux\00", [22 x i8] zeroinitializer }, align 32
@max98090_lbenl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.284, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @lbenl_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LBENR Mux\00", [22 x i8] zeroinitializer }, align 32
@max98090_lbenr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @lbenr_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LTENL Mux\00", [22 x i8] zeroinitializer }, align 32
@max98090_ltenl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.286, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @ltenl_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LTENR Mux\00", [22 x i8] zeroinitializer }, align 32
@max98090_ltenr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @ltenr_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STENL Mux\00", [22 x i8] zeroinitializer }, align 32
@max98090_stenl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.288, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @stenl_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STENR Mux\00", [22 x i8] zeroinitializer }, align 32
@max98090_stenr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.289, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @stenr_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFINL\00", [25 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFINR\00", [25 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left Headphone Mixer\00", [43 x i8] zeroinitializer }, align 32
@max98090_left_hp_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.359, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.360 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.361, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.362 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.339, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.363 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.364 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.365 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.366 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Right Headphone Mixer\00", [42 x i8] zeroinitializer }, align 32
@max98090_right_hp_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.359, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.367 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.361, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.368 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.339, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.369 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.370 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.371 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.372 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Left Speaker Mixer\00", [45 x i8] zeroinitializer }, align 32
@max98090_left_speaker_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.359, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.373 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.361, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.374 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.339, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.375 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.376 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.377 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.378 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Right Speaker Mixer\00", [44 x i8] zeroinitializer }, align 32
@max98090_right_speaker_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.359, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.379 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.361, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.380 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.339, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.381 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.382 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.383 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.384 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Left Receiver Mixer\00", [44 x i8] zeroinitializer }, align 32
@max98090_left_rcv_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.359, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.385 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.361, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.386 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.339, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.387 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.388 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.389 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.390 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Right Receiver Mixer\00", [43 x i8] zeroinitializer }, align 32
@max98090_right_rcv_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.359, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.391 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.361, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.392 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.339, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.393 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.394 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.395 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.396 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LINMOD Mux\00", [21 x i8] zeroinitializer }, align 32
@max98090_linmod_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.301, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @linmod_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXHPLSEL Mux\00", [18 x i8] zeroinitializer }, align 32
@max98090_mixhplsel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.302, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @mixhplsel_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXHPRSEL Mux\00", [18 x i8] zeroinitializer }, align 32
@max98090_mixhprsel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @mixhprsel_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HP Left Out\00", [20 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HP Right Out\00", [19 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPK Left Out\00", [19 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SPK Right Out\00", [18 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RCV Left Out\00", [19 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RCV Right Out\00", [18 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKL\00", [27 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKR\00", [27 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RCVL\00", [27 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RCVR\00", [27 x i8] zeroinitializer }, align 32
@max98090_dapm_widgets = internal constant { [66 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2968 x i8] } { [66 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.248, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.249, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.250, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.251, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.252, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.253, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.254, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.255, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.256, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.257, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.258, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.259, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.260, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.261, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.262, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 69, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.263, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.264, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.265, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @max98090_shdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.266, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @max98090_shdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.267, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.268, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_mic1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.269, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_mic2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.270, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_dmic_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.271, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98090_micinput_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.272, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 17, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98090_micinput_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.273, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @max98090_linea_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.274, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @max98090_lineb_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.275, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.276, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.277, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @max98090_left_adc_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.278, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @max98090_right_adc_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.279, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @max98090_shdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.280, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @max98090_shdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.281, ptr @.str.282, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.283, ptr @.str.282, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.284, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_lbenl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.285, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_lbenr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.286, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_ltenl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.287, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_ltenr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.288, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_stenl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.289, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_stenr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.290, ptr @.str.291, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.292, ptr @.str.291, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.293, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.294, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.295, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98090_left_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.296, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98090_right_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.297, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98090_left_speaker_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.298, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98090_right_speaker_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.299, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98090_left_rcv_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.300, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98090_right_rcv_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.301, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_linmod_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.302, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_mixhplsel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.303, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_mixhprsel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.304, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.305, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.306, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.307, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.308, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.309, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.310, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.311, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.312, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.313, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.314, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.315, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2968 x i8] zeroinitializer }, align 32
@mic1_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 0, i8 0, i32 2, i32 1, ptr @mic1_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mic1_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.258, ptr @.str.260], [24 x i8] zeroinitializer }, align 32
@mic2_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 1, i8 1, i32 2, i32 1, ptr @mic2_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mic2_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.259, ptr @.str.260], [24 x i8] zeroinitializer }, align 32
@dmic_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @dmic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dmic_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.317, ptr @.str.318], [24 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN1 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.320 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN3 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.322 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN5 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.324 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN34 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.326 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN2 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.328 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN4 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.330 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN6 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.332 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN56 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.334 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN12 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.336 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.337 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.338 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LINEA Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.340 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LINEB Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.342 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.344 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.346 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.347 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.348 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.349 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.350 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.351 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.352 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.353 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@lbenl_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 4, i8 4, i32 2, i32 1, ptr @lben_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@lben_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.354, ptr @.str.355], [24 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Loopback\00", [23 x i8] zeroinitializer }, align 32
@lbenr_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 4, i8 4, i32 2, i32 1, ptr @lben_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ltenl_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 5, i8 5, i32 2, i32 1, ptr @lten_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@lten_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.354, ptr @.str.356], [24 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Loopthrough\00", [20 x i8] zeroinitializer }, align 32
@ltenr_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 5, i8 5, i32 2, i32 1, ptr @lten_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@stenl_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 26, i8 6, i8 6, i32 2, i32 1, ptr @stenl_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@stenl_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.354, ptr @.str.357], [24 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sidetone Left\00", [18 x i8] zeroinitializer }, align 32
@stenr_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 26, i8 7, i8 7, i32 2, i32 1, ptr @stenr_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@stenr_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.354, ptr @.str.358], [24 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Sidetone Right\00", [17 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Left DAC Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.360 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Right DAC Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.362 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.363 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.364 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.365 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.366 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.367 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.368 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.369 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.370 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.371 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.372 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.373 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.374 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.375 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.376 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.377 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.378 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.379 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.380 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.381 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.382 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.383 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.384 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.385 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.386 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.387 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.388 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.389 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.390 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.391 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.392 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.393 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.394 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.395 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.396 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@linmod_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 58, i8 7, i8 7, i32 2, i32 1, ptr @linmod_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@linmod_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.397, ptr @.str.398], [24 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Left Only\00", [22 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left and Right\00", [17 x i8] zeroinitializer }, align 32
@mixhplsel_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 43, i8 4, i8 4, i32 2, i32 1, ptr @mixhpsel_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mixhpsel_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.399, ptr @.str.400], [24 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC Only\00", [23 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP Mixer\00", [23 x i8] zeroinitializer }, align 32
@mixhprsel_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 43, i8 5, i8 5, i32 2, i32 1, ptr @mixhpsel_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC3\00", [26 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC4\00", [26 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC3_ENA\00", [22 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC4_ENA\00", [22 x i8] zeroinitializer }, align 32
@max98091_dapm_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.401, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.402, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.403, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.404, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@max98090_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.406, ptr @.str.407, ptr @.str.2, i32 1744, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to sync cache: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max98090_set_bias_level\00", [40 x i8] zeroinitializer }, align 32
@max98090_set_bias_level._entry_ptr = internal global ptr @max98090_set_bias_level._entry, section ".printk_index", align 4
@.str.408 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@max98090_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @max98090_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @max98090_dai_set_fmt, ptr null, ptr @max98090_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98090_dai_mute, ptr @max98090_dai_startup, ptr null, ptr @max98090_dai_hw_params, ptr null, ptr null, ptr @max98090_dai_trigger, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@max98090_dai_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.409, ptr @.str.410, ptr @.str.2, i32 2011, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid master clock frequency\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max98090_dai_set_sysclk\00", [40 x i8] zeroinitializer }, align 32
@max98090_dai_set_sysclk._entry_ptr = internal global ptr @max98090_dai_set_sysclk._entry, section ".printk_index", align 4
@max98090_dai_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.411, ptr @.str.412, ptr @.str.2, i32 1618, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DAI clock mode unsupported\00", [37 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max98090_dai_set_fmt\00", [43 x i8] zeroinitializer }, align 32
@max98090_dai_set_fmt._entry_ptr = internal global ptr @max98090_dai_set_fmt._entry, section ".printk_index", align 4
@max98090_dai_set_fmt._entry.413 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.414, ptr @.str.412, ptr @.str.2, i32 1636, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DAI format unsupported\00", [41 x i8] zeroinitializer }, align 32
@max98090_dai_set_fmt._entry_ptr.415 = internal global ptr @max98090_dai_set_fmt._entry.413, section ".printk_index", align 4
@max98090_dai_set_fmt._entry.416 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.417, ptr @.str.412, ptr @.str.2, i32 1653, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAI invert mode unsupported\00", [36 x i8] zeroinitializer }, align 32
@max98090_dai_set_fmt._entry_ptr.418 = internal global ptr @max98090_dai_set_fmt._entry.416, section ".printk_index", align 4
@max98090_configure_bclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.419, ptr @.str.420, ptr @.str.2, i32 1489, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No SYSCLK configured\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max98090_configure_bclk\00", [40 x i8] zeroinitializer }, align 32
@max98090_configure_bclk._entry_ptr = internal global ptr @max98090_configure_bclk._entry, section ".printk_index", align 4
@max98090_configure_bclk._entry.421 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.422, ptr @.str.420, ptr @.str.2, i32 1494, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No audio clocks configured\0A\00", [36 x i8] zeroinitializer }, align 32
@max98090_configure_bclk._entry_ptr.423 = internal global ptr @max98090_configure_bclk._entry.421, section ".printk_index", align 4
@max98090_configure_bclk.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.420, ptr @.str.2, ptr @.str.424, i8 1, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.424 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Found supported PCLK to LRCLK rates 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@max98090_configure_bclk.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.420, ptr @.str.2, ptr @.str.425, i8 1, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.425 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Found user supported PCLK to LRCLK rates\0A\00", [54 x i8] zeroinitializer }, align 32
@max98090_configure_bclk.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.420, ptr @.str.2, ptr @.str.426, i8 1, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.426 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i %d ni %lld mi %lld\0A\00", [42 x i8] zeroinitializer }, align 32
@ni_value = internal constant { [4 x i64], [32 x i8] } { [4 x i64] [i64 3528, i64 768, i64 441, i64 8], [32 x i8] zeroinitializer }, align 32
@mi_value = internal constant { [4 x i64], [32 x i8] } { [4 x i64] [i64 8125, i64 1625, i64 1500, i64 25], [32 x i8] zeroinitializer }, align 32
@max98090_configure_bclk._entry.427 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.428, ptr @.str.420, ptr @.str.2, i32 1565, ptr @.str.37, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No better method found\0A\00", [40 x i8] zeroinitializer }, align 32
@max98090_configure_bclk._entry_ptr.429 = internal global ptr @max98090_configure_bclk._entry.427, section ".printk_index", align 4
@max98090_configure_bclk._entry.430 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.431, ptr @.str.420, ptr @.str.2, i32 1566, ptr @.str.37, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Calculating ni %lld with mi 65536\0A\00", [61 x i8] zeroinitializer }, align 32
@max98090_configure_bclk._entry_ptr.432 = internal global ptr @max98090_configure_bclk._entry.430, section ".printk_index", align 4
@dmic_table = internal constant { [5 x %struct.dmic_table], [196 x i8] } { [5 x %struct.dmic_table] [%struct.dmic_table { i32 11289600, [6 x %struct.anon.108] [%struct.anon.108 { i32 2, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.108 { i32 1, [6 x i32] [i32 7, i32 8, i32 2, i32 2, i32 2, i32 2] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 6, i32 6, i32 6, i32 6] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }] }, %struct.dmic_table { i32 12000000, [6 x %struct.anon.108] [%struct.anon.108 { i32 2, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.108 { i32 1, [6 x i32] [i32 7, i32 8, i32 2, i32 2, i32 2, i32 2] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 5, i32 5, i32 6, i32 6] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }] }, %struct.dmic_table { i32 12288000, [6 x %struct.anon.108] [%struct.anon.108 { i32 2, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.108 { i32 1, [6 x i32] [i32 7, i32 8, i32 2, i32 2, i32 2, i32 2] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 6, i32 6, i32 6, i32 6] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }] }, %struct.dmic_table { i32 13000000, [6 x %struct.anon.108] [%struct.anon.108 { i32 2, [6 x i32] [i32 7, i32 8, i32 1, i32 1, i32 1, i32 1] }, %struct.anon.108 { i32 1, [6 x i32] [i32 7, i32 8, i32 0, i32 0, i32 0, i32 0] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 1, i32 1, i32 1, i32 1] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 4, i32 4, i32 5, i32 5] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 1, i32 1, i32 1, i32 1] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 1, i32 1, i32 1, i32 1] }] }, %struct.dmic_table { i32 19200000, [6 x %struct.anon.108] [%struct.anon.108 { i32 2, [6 x i32] zeroinitializer }, %struct.anon.108 { i32 1, [6 x i32] [i32 7, i32 8, i32 1, i32 1, i32 1, i32 1] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 5, i32 5, i32 6, i32 6] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 2, i32 2, i32 3, i32 3] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 1, i32 1, i32 2, i32 2] }, %struct.anon.108 { i32 0, [6 x i32] [i32 7, i32 8, i32 5, i32 5, i32 6, i32 6] }] }], [196 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 255]
@__sancov_gen_cov_switch_values.433 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 255]
@__sancov_gen_cov_switch_values.434 = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 80]
@__sancov_gen_cov_switch_values.435 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.436 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 6]
@__sancov_gen_cov_switch_values.437 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 17, i64 26]
@__sancov_gen_cov_switch_values.438 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 17, i64 26]
@__sancov_gen_cov_switch_values.439 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.440 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.441 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.442 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.443 = internal global [6 x i64] [i64 4, i64 32, i64 12000000, i64 13000000, i64 16000000, i64 19200000]
@__sancov_gen_cov_switch_values.444 = internal global [4 x i64] [i64 2, i64 32, i64 13000000, i64 19200000]
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2315, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant [20 x i8] c"max98090_i2c_driver\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2686, i32 26 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2688, i32 11 }
@___asan_gen_.463 = private unnamed_addr constant [18 x i8] c"max98090_of_match\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2670, i32 34 }
@___asan_gen_.466 = private unnamed_addr constant [12 x i8] c"max98090_pm\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2656, i32 32 }
@___asan_gen_.469 = private unnamed_addr constant [16 x i8] c"max98090_i2c_id\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2662, i32 35 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2540, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2551, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2563, i32 47 }
@___asan_gen_.493 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.496 = private unnamed_addr constant [16 x i8] c"max98090_regmap\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2520, i32 35 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2568, i32 21 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2571, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2577, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2579, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant [27 x i8] c"soc_component_dev_max98090\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2509, i32 46 }
@___asan_gen_.520 = private unnamed_addr constant [13 x i8] c"max98090_dai\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2354, i32 34 }
@___asan_gen_.523 = private unnamed_addr constant [13 x i8] c"max98090_reg\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 27, i32 33 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2239, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2244, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2253, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2259, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2268, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2271, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2274, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2279, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2289, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2292, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2116, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2384, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2386, i32 48 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2411, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2418, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2421, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2424, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2428, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2434, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2435, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2437, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2466, i32 49 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2469, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2471, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 284, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2172, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2184, i32 5 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2201, i32 4 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2210, i32 4 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2219, i32 4 }
@___asan_gen_.697 = private unnamed_addr constant [22 x i8] c"max98090_snd_controls\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 508, i32 38 }
@___asan_gen_.700 = private unnamed_addr constant [22 x i8] c"max98091_snd_controls\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 692, i32 38 }
@___asan_gen_.703 = private unnamed_addr constant [21 x i8] c"max98090_dapm_routes\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1236, i32 40 }
@___asan_gen_.706 = private unnamed_addr constant [21 x i8] c"max98091_dapm_routes\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1418, i32 40 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 509, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant [25 x i8] c"max98090_vcmbandgap_enum\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 438, i32 8 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 511, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 514, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant [22 x i8] c"max98090_micboost_tlv\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 293, i32 14 }
@___asan_gen_.725 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 519, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 524, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [17 x i8] c"max98090_mic_tlv\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 298, i32 14 }
@___asan_gen_.736 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 528, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 532, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant [31 x i8] c"max98090_line_single_ended_tlv\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 300, i32 14 }
@___asan_gen_.747 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 536, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 540, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant [18 x i8] c"max98090_line_tlv\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 303, i32 14 }
@___asan_gen_.758 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 544, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 548, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 550, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 553, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant [17 x i8] c"max98090_avg_tlv\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 308, i32 14 }
@___asan_gen_.777 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 556, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 560, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant [16 x i8] c"max98090_av_tlv\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 309, i32 14 }
@___asan_gen_.788 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 563, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 567, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant [21 x i8] c"max98090_osr128_enum\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 445, i32 8 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 568, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 570, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant [20 x i8] c"max98090_adchp_enum\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 503, i32 8 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 572, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 574, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 576, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 578, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 580, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant [19 x i8] c"max98090_mode_enum\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 452, i32 8 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 581, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 583, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 585, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant [16 x i8] c"max98090_dv_tlv\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 312, i32 14 }
@___asan_gen_.845 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 587, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant [17 x i8] c"max98090_sdg_tlv\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 317, i32 14 }
@___asan_gen_.852 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 591, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant [17 x i8] c"max98090_dvg_tlv\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 311, i32 14 }
@___asan_gen_.859 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 594, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 597, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 598, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 600, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 602, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 604, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 607, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 611, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 613, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant [21 x i8] c"max98090_drcatk_enum\00", align 1
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 465, i32 8 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 614, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant [21 x i8] c"max98090_drcrls_enum\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 473, i32 8 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 615, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant [23 x i8] c"max98090_alcmakeup_tlv\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 314, i32 14 }
@___asan_gen_.910 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 618, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant [21 x i8] c"max98090_alccmp_enum\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 481, i32 8 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 619, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant [21 x i8] c"max98090_drcexp_enum\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 488, i32 8 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 620, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant [21 x i8] c"max98090_alccomp_tlv\00", align 1
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 315, i32 14 }
@___asan_gen_.929 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 623, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant [20 x i8] c"max98090_drcexp_tlv\00", align 1
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 316, i32 14 }
@___asan_gen_.936 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 627, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant [27 x i8] c"max98090_dac_perfmode_enum\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 493, i32 8 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 629, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant [20 x i8] c"max98090_dachp_enum\00", align 1
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 498, i32 8 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 631, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant [20 x i8] c"max98090_mixout_tlv\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 319, i32 14 }
@___asan_gen_.955 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 634, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 638, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 641, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 645, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 648, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 652, i32 2 }
@___asan_gen_.979 = private unnamed_addr constant [16 x i8] c"max98090_hp_tlv\00", align 1
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 324, i32 14 }
@___asan_gen_.982 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 656, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant [17 x i8] c"max98090_spk_tlv\00", align 1
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 332, i32 14 }
@___asan_gen_.989 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 661, i32 2 }
@___asan_gen_.993 = private unnamed_addr constant [22 x i8] c"max98090_rcv_lout_tlv\00", align 1
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 340, i32 14 }
@___asan_gen_.996 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 665, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 667, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 670, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 672, i32 2 }
@___asan_gen_.1012 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 675, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 677, i32 2 }
@___asan_gen_.1020 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 680, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 682, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant [21 x i8] c".compoundliteral.193\00", align 1
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 684, i32 2 }
@___asan_gen_.1032 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 687, i32 2 }
@___asan_gen_.1036 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 688, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant [23 x i8] c"max98090_pwr_perf_text\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 435, i32 20 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 436, i32 4 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 436, i32 17 }
@___asan_gen_.1050 = private unnamed_addr constant [21 x i8] c"max98090_osr128_text\00", align 1
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 443, i32 20 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 443, i32 47 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 443, i32 56 }
@___asan_gen_.1059 = private unnamed_addr constant [19 x i8] c"max98090_mode_text\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 450, i32 20 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 450, i32 45 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 450, i32 54 }
@___asan_gen_.1068 = private unnamed_addr constant [21 x i8] c"max98090_drcatk_text\00", align 1
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 462, i32 20 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 463, i32 4 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 463, i32 13 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 463, i32 20 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 463, i32 27 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 463, i32 35 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 463, i32 43 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 463, i32 51 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 463, i32 60 }
@___asan_gen_.1095 = private unnamed_addr constant [21 x i8] c"max98090_drcrls_text\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 470, i32 20 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 471, i32 4 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 471, i32 10 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 471, i32 16 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 471, i32 22 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 471, i32 28 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 471, i32 36 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 471, i32 45 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 471, i32 55 }
@___asan_gen_.1122 = private unnamed_addr constant [21 x i8] c"max98090_alccmp_text\00", align 1
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 478, i32 20 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 479, i32 4 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 479, i32 11 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 479, i32 20 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 479, i32 27 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 479, i32 34 }
@___asan_gen_.1140 = private unnamed_addr constant [21 x i8] c"max98090_drcexp_text\00", align 1
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 486, i32 20 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 486, i32 54 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 486, i32 61 }
@___asan_gen_.1149 = private unnamed_addr constant [23 x i8] c"max98090_perf_pwr_text\00", align 1
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 433, i32 20 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 694, i32 2 }
@___asan_gen_.1155 = private unnamed_addr constant [21 x i8] c".compoundliteral.230\00", align 1
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 698, i32 2 }
@___asan_gen_.1159 = private unnamed_addr constant [32 x i8] c"max98090_filter_dmic34mode_enum\00", align 1
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 457, i32 8 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 699, i32 2 }
@___asan_gen_.1165 = private unnamed_addr constant [21 x i8] c".compoundliteral.233\00", align 1
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 703, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant [21 x i8] c".compoundliteral.235\00", align 1
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 706, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant [21 x i8] c".compoundliteral.237\00", align 1
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 710, i32 2 }
@___asan_gen_.1177 = private unnamed_addr constant [21 x i8] c".compoundliteral.239\00", align 1
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 713, i32 2 }
@___asan_gen_.1181 = private unnamed_addr constant [21 x i8] c".compoundliteral.241\00", align 1
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 717, i32 2 }
@___asan_gen_.1185 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 719, i32 2 }
@___asan_gen_.1189 = private unnamed_addr constant [21 x i8] c".compoundliteral.245\00", align 1
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 722, i32 2 }
@___asan_gen_.1193 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1060, i32 2 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1061, i32 2 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1062, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1063, i32 2 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1064, i32 2 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1065, i32 2 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1066, i32 2 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1067, i32 2 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1068, i32 2 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1069, i32 2 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1070, i32 2 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1071, i32 2 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1072, i32 2 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1074, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1076, i32 2 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1078, i32 2 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1080, i32 2 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1082, i32 2 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1085, i32 2 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1088, i32 2 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1095, i32 2 }
@___asan_gen_.1257 = private unnamed_addr constant [18 x i8] c"max98090_mic1_mux\00", align 1
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 794, i32 38 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1098, i32 2 }
@___asan_gen_.1263 = private unnamed_addr constant [18 x i8] c"max98090_mic2_mux\00", align 1
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 804, i32 38 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1101, i32 2 }
@___asan_gen_.1269 = private unnamed_addr constant [18 x i8] c"max98090_dmic_mux\00", align 1
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 811, i32 38 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1103, i32 2 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1107, i32 2 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1111, i32 2 }
@___asan_gen_.1281 = private unnamed_addr constant [30 x i8] c"max98090_linea_mixer_controls\00", align 1
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 815, i32 38 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1115, i32 2 }
@___asan_gen_.1287 = private unnamed_addr constant [30 x i8] c"max98090_lineb_mixer_controls\00", align 1
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 827, i32 38 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1119, i32 2 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1121, i32 2 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1124, i32 2 }
@___asan_gen_.1299 = private unnamed_addr constant [33 x i8] c"max98090_left_adc_mixer_controls\00", align 1
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 839, i32 38 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1128, i32 2 }
@___asan_gen_.1305 = private unnamed_addr constant [34 x i8] c"max98090_right_adc_mixer_controls\00", align 1
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 857, i32 38 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1132, i32 2 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1135, i32 2 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1139, i32 2 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1141, i32 2 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1144, i32 2 }
@___asan_gen_.1326 = private unnamed_addr constant [19 x i8] c"max98090_lbenl_mux\00", align 1
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 904, i32 38 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1147, i32 2 }
@___asan_gen_.1332 = private unnamed_addr constant [19 x i8] c"max98090_lbenr_mux\00", align 1
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 907, i32 38 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1150, i32 2 }
@___asan_gen_.1338 = private unnamed_addr constant [19 x i8] c"max98090_ltenl_mux\00", align 1
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 886, i32 38 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1153, i32 2 }
@___asan_gen_.1344 = private unnamed_addr constant [19 x i8] c"max98090_ltenr_mux\00", align 1
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 889, i32 38 }
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1156, i32 2 }
@___asan_gen_.1350 = private unnamed_addr constant [19 x i8] c"max98090_stenl_mux\00", align 1
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 924, i32 38 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1159, i32 2 }
@___asan_gen_.1356 = private unnamed_addr constant [19 x i8] c"max98090_stenr_mux\00", align 1
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 927, i32 38 }
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1162, i32 2 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1163, i32 2 }
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1165, i32 2 }
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1167, i32 2 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1170, i32 2 }
@___asan_gen_.1377 = private unnamed_addr constant [32 x i8] c"max98090_left_hp_mixer_controls\00", align 1
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 965, i32 38 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1174, i32 2 }
@___asan_gen_.1383 = private unnamed_addr constant [33 x i8] c"max98090_right_hp_mixer_controls\00", align 1
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 981, i32 38 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1178, i32 2 }
@___asan_gen_.1389 = private unnamed_addr constant [37 x i8] c"max98090_left_speaker_mixer_controls\00", align 1
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 932, i32 19 }
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1182, i32 2 }
@___asan_gen_.1395 = private unnamed_addr constant [38 x i8] c"max98090_right_speaker_mixer_controls\00", align 1
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 949, i32 19 }
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1186, i32 2 }
@___asan_gen_.1401 = private unnamed_addr constant [33 x i8] c"max98090_left_rcv_mixer_controls\00", align 1
@___asan_gen_.1403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 997, i32 38 }
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1190, i32 2 }
@___asan_gen_.1407 = private unnamed_addr constant [34 x i8] c"max98090_right_rcv_mixer_controls\00", align 1
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1013, i32 38 }
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1194, i32 2 }
@___asan_gen_.1413 = private unnamed_addr constant [20 x i8] c"max98090_linmod_mux\00", align 1
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1035, i32 38 }
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1197, i32 2 }
@___asan_gen_.1419 = private unnamed_addr constant [23 x i8] c"max98090_mixhplsel_mux\00", align 1
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1048, i32 38 }
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1200, i32 2 }
@___asan_gen_.1425 = private unnamed_addr constant [23 x i8] c"max98090_mixhprsel_mux\00", align 1
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1056, i32 38 }
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1203, i32 2 }
@___asan_gen_.1433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1205, i32 2 }
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1208, i32 2 }
@___asan_gen_.1439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1210, i32 2 }
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1213, i32 2 }
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1215, i32 2 }
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1218, i32 2 }
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1219, i32 2 }
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1220, i32 2 }
@___asan_gen_.1457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1221, i32 2 }
@___asan_gen_.1460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1222, i32 2 }
@___asan_gen_.1463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1223, i32 2 }
@___asan_gen_.1464 = private unnamed_addr constant [22 x i8] c"max98090_dapm_widgets\00", align 1
@___asan_gen_.1466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1059, i32 41 }
@___asan_gen_.1467 = private unnamed_addr constant [14 x i8] c"mic1_mux_enum\00", align 1
@___asan_gen_.1469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 789, i32 8 }
@___asan_gen_.1470 = private unnamed_addr constant [14 x i8] c"mic1_mux_text\00", align 1
@___asan_gen_.1472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 787, i32 20 }
@___asan_gen_.1473 = private unnamed_addr constant [14 x i8] c"mic2_mux_enum\00", align 1
@___asan_gen_.1475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 799, i32 8 }
@___asan_gen_.1476 = private unnamed_addr constant [14 x i8] c"mic2_mux_text\00", align 1
@___asan_gen_.1478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 797, i32 20 }
@___asan_gen_.1479 = private unnamed_addr constant [14 x i8] c"dmic_mux_enum\00", align 1
@___asan_gen_.1481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 809, i32 8 }
@___asan_gen_.1482 = private unnamed_addr constant [14 x i8] c"dmic_mux_text\00", align 1
@___asan_gen_.1484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 807, i32 20 }
@___asan_gen_.1487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 807, i32 40 }
@___asan_gen_.1490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 807, i32 47 }
@___asan_gen_.1493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 816, i32 2 }
@___asan_gen_.1494 = private unnamed_addr constant [21 x i8] c".compoundliteral.320\00", align 1
@___asan_gen_.1497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 818, i32 2 }
@___asan_gen_.1498 = private unnamed_addr constant [21 x i8] c".compoundliteral.322\00", align 1
@___asan_gen_.1501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 820, i32 2 }
@___asan_gen_.1502 = private unnamed_addr constant [21 x i8] c".compoundliteral.324\00", align 1
@___asan_gen_.1505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 822, i32 2 }
@___asan_gen_.1506 = private unnamed_addr constant [21 x i8] c".compoundliteral.326\00", align 1
@___asan_gen_.1509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 828, i32 2 }
@___asan_gen_.1510 = private unnamed_addr constant [21 x i8] c".compoundliteral.328\00", align 1
@___asan_gen_.1513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 830, i32 2 }
@___asan_gen_.1514 = private unnamed_addr constant [21 x i8] c".compoundliteral.330\00", align 1
@___asan_gen_.1517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 832, i32 2 }
@___asan_gen_.1518 = private unnamed_addr constant [21 x i8] c".compoundliteral.332\00", align 1
@___asan_gen_.1521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 834, i32 2 }
@___asan_gen_.1522 = private unnamed_addr constant [21 x i8] c".compoundliteral.334\00", align 1
@___asan_gen_.1525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 840, i32 2 }
@___asan_gen_.1526 = private unnamed_addr constant [21 x i8] c".compoundliteral.336\00", align 1
@___asan_gen_.1527 = private unnamed_addr constant [21 x i8] c".compoundliteral.337\00", align 1
@___asan_gen_.1528 = private unnamed_addr constant [21 x i8] c".compoundliteral.338\00", align 1
@___asan_gen_.1531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 846, i32 2 }
@___asan_gen_.1532 = private unnamed_addr constant [21 x i8] c".compoundliteral.340\00", align 1
@___asan_gen_.1535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 848, i32 2 }
@___asan_gen_.1536 = private unnamed_addr constant [21 x i8] c".compoundliteral.342\00", align 1
@___asan_gen_.1539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 850, i32 2 }
@___asan_gen_.1540 = private unnamed_addr constant [21 x i8] c".compoundliteral.344\00", align 1
@___asan_gen_.1543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 852, i32 2 }
@___asan_gen_.1544 = private unnamed_addr constant [21 x i8] c".compoundliteral.346\00", align 1
@___asan_gen_.1545 = private unnamed_addr constant [21 x i8] c".compoundliteral.347\00", align 1
@___asan_gen_.1546 = private unnamed_addr constant [21 x i8] c".compoundliteral.348\00", align 1
@___asan_gen_.1547 = private unnamed_addr constant [21 x i8] c".compoundliteral.349\00", align 1
@___asan_gen_.1548 = private unnamed_addr constant [21 x i8] c".compoundliteral.350\00", align 1
@___asan_gen_.1549 = private unnamed_addr constant [21 x i8] c".compoundliteral.351\00", align 1
@___asan_gen_.1550 = private unnamed_addr constant [21 x i8] c".compoundliteral.352\00", align 1
@___asan_gen_.1551 = private unnamed_addr constant [21 x i8] c".compoundliteral.353\00", align 1
@___asan_gen_.1552 = private unnamed_addr constant [15 x i8] c"lbenl_mux_enum\00", align 1
@___asan_gen_.1554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 894, i32 8 }
@___asan_gen_.1555 = private unnamed_addr constant [14 x i8] c"lben_mux_text\00", align 1
@___asan_gen_.1557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 892, i32 20 }
@___asan_gen_.1560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 892, i32 40 }
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 892, i32 50 }
@___asan_gen_.1564 = private unnamed_addr constant [15 x i8] c"lbenr_mux_enum\00", align 1
@___asan_gen_.1566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 899, i32 8 }
@___asan_gen_.1567 = private unnamed_addr constant [15 x i8] c"ltenl_mux_enum\00", align 1
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 876, i32 8 }
@___asan_gen_.1570 = private unnamed_addr constant [14 x i8] c"lten_mux_text\00", align 1
@___asan_gen_.1572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 874, i32 20 }
@___asan_gen_.1575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 874, i32 50 }
@___asan_gen_.1576 = private unnamed_addr constant [15 x i8] c"ltenr_mux_enum\00", align 1
@___asan_gen_.1578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 881, i32 8 }
@___asan_gen_.1579 = private unnamed_addr constant [15 x i8] c"stenl_mux_enum\00", align 1
@___asan_gen_.1581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 914, i32 8 }
@___asan_gen_.1582 = private unnamed_addr constant [15 x i8] c"stenl_mux_text\00", align 1
@___asan_gen_.1584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 910, i32 20 }
@___asan_gen_.1587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 910, i32 51 }
@___asan_gen_.1588 = private unnamed_addr constant [15 x i8] c"stenr_mux_enum\00", align 1
@___asan_gen_.1590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 919, i32 8 }
@___asan_gen_.1591 = private unnamed_addr constant [15 x i8] c"stenr_mux_text\00", align 1
@___asan_gen_.1593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 912, i32 20 }
@___asan_gen_.1596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 912, i32 51 }
@___asan_gen_.1599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 966, i32 2 }
@___asan_gen_.1600 = private unnamed_addr constant [21 x i8] c".compoundliteral.360\00", align 1
@___asan_gen_.1603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 968, i32 2 }
@___asan_gen_.1604 = private unnamed_addr constant [21 x i8] c".compoundliteral.362\00", align 1
@___asan_gen_.1605 = private unnamed_addr constant [21 x i8] c".compoundliteral.363\00", align 1
@___asan_gen_.1606 = private unnamed_addr constant [21 x i8] c".compoundliteral.364\00", align 1
@___asan_gen_.1607 = private unnamed_addr constant [21 x i8] c".compoundliteral.365\00", align 1
@___asan_gen_.1608 = private unnamed_addr constant [21 x i8] c".compoundliteral.366\00", align 1
@___asan_gen_.1609 = private unnamed_addr constant [21 x i8] c".compoundliteral.367\00", align 1
@___asan_gen_.1610 = private unnamed_addr constant [21 x i8] c".compoundliteral.368\00", align 1
@___asan_gen_.1611 = private unnamed_addr constant [21 x i8] c".compoundliteral.369\00", align 1
@___asan_gen_.1612 = private unnamed_addr constant [21 x i8] c".compoundliteral.370\00", align 1
@___asan_gen_.1613 = private unnamed_addr constant [21 x i8] c".compoundliteral.371\00", align 1
@___asan_gen_.1614 = private unnamed_addr constant [21 x i8] c".compoundliteral.372\00", align 1
@___asan_gen_.1615 = private unnamed_addr constant [21 x i8] c".compoundliteral.373\00", align 1
@___asan_gen_.1616 = private unnamed_addr constant [21 x i8] c".compoundliteral.374\00", align 1
@___asan_gen_.1617 = private unnamed_addr constant [21 x i8] c".compoundliteral.375\00", align 1
@___asan_gen_.1618 = private unnamed_addr constant [21 x i8] c".compoundliteral.376\00", align 1
@___asan_gen_.1619 = private unnamed_addr constant [21 x i8] c".compoundliteral.377\00", align 1
@___asan_gen_.1620 = private unnamed_addr constant [21 x i8] c".compoundliteral.378\00", align 1
@___asan_gen_.1621 = private unnamed_addr constant [21 x i8] c".compoundliteral.379\00", align 1
@___asan_gen_.1622 = private unnamed_addr constant [21 x i8] c".compoundliteral.380\00", align 1
@___asan_gen_.1623 = private unnamed_addr constant [21 x i8] c".compoundliteral.381\00", align 1
@___asan_gen_.1624 = private unnamed_addr constant [21 x i8] c".compoundliteral.382\00", align 1
@___asan_gen_.1625 = private unnamed_addr constant [21 x i8] c".compoundliteral.383\00", align 1
@___asan_gen_.1626 = private unnamed_addr constant [21 x i8] c".compoundliteral.384\00", align 1
@___asan_gen_.1627 = private unnamed_addr constant [21 x i8] c".compoundliteral.385\00", align 1
@___asan_gen_.1628 = private unnamed_addr constant [21 x i8] c".compoundliteral.386\00", align 1
@___asan_gen_.1629 = private unnamed_addr constant [21 x i8] c".compoundliteral.387\00", align 1
@___asan_gen_.1630 = private unnamed_addr constant [21 x i8] c".compoundliteral.388\00", align 1
@___asan_gen_.1631 = private unnamed_addr constant [21 x i8] c".compoundliteral.389\00", align 1
@___asan_gen_.1632 = private unnamed_addr constant [21 x i8] c".compoundliteral.390\00", align 1
@___asan_gen_.1633 = private unnamed_addr constant [21 x i8] c".compoundliteral.391\00", align 1
@___asan_gen_.1634 = private unnamed_addr constant [21 x i8] c".compoundliteral.392\00", align 1
@___asan_gen_.1635 = private unnamed_addr constant [21 x i8] c".compoundliteral.393\00", align 1
@___asan_gen_.1636 = private unnamed_addr constant [21 x i8] c".compoundliteral.394\00", align 1
@___asan_gen_.1637 = private unnamed_addr constant [21 x i8] c".compoundliteral.395\00", align 1
@___asan_gen_.1638 = private unnamed_addr constant [21 x i8] c".compoundliteral.396\00", align 1
@___asan_gen_.1639 = private unnamed_addr constant [16 x i8] c"linmod_mux_enum\00", align 1
@___asan_gen_.1641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1030, i32 8 }
@___asan_gen_.1642 = private unnamed_addr constant [16 x i8] c"linmod_mux_text\00", align 1
@___asan_gen_.1644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1028, i32 20 }
@___asan_gen_.1647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1028, i32 42 }
@___asan_gen_.1650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1028, i32 55 }
@___asan_gen_.1651 = private unnamed_addr constant [19 x i8] c"mixhplsel_mux_enum\00", align 1
@___asan_gen_.1653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1043, i32 8 }
@___asan_gen_.1654 = private unnamed_addr constant [18 x i8] c"mixhpsel_mux_text\00", align 1
@___asan_gen_.1656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1038, i32 20 }
@___asan_gen_.1659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1038, i32 44 }
@___asan_gen_.1662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1038, i32 56 }
@___asan_gen_.1663 = private unnamed_addr constant [19 x i8] c"mixhprsel_mux_enum\00", align 1
@___asan_gen_.1665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1051, i32 8 }
@___asan_gen_.1668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1227, i32 2 }
@___asan_gen_.1671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1228, i32 2 }
@___asan_gen_.1674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1230, i32 2 }
@___asan_gen_.1677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1232, i32 2 }
@___asan_gen_.1678 = private unnamed_addr constant [22 x i8] c"max98091_dapm_widgets\00", align 1
@___asan_gen_.1680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1226, i32 41 }
@___asan_gen_.1689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1743, i32 5 }
@___asan_gen_.1692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2356, i32 10 }
@___asan_gen_.1693 = private unnamed_addr constant [17 x i8] c"max98090_dai_ops\00", align 1
@___asan_gen_.1695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2343, i32 37 }
@___asan_gen_.1704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 2011, i32 3 }
@___asan_gen_.1713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1618, i32 4 }
@___asan_gen_.1719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1636, i32 4 }
@___asan_gen_.1725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1653, i32 4 }
@___asan_gen_.1734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1489, i32 3 }
@___asan_gen_.1740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1494, i32 3 }
@___asan_gen_.1743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1508, i32 4 }
@___asan_gen_.1746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1525, i32 4 }
@___asan_gen_.1749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1527, i32 4 }
@___asan_gen_.1750 = private unnamed_addr constant [9 x i8] c"ni_value\00", align 1
@___asan_gen_.1752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1474, i32 33 }
@___asan_gen_.1753 = private unnamed_addr constant [9 x i8] c"mi_value\00", align 1
@___asan_gen_.1755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1478, i32 33 }
@___asan_gen_.1761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1565, i32 2 }
@___asan_gen_.1762 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1765 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1566, i32 2 }
@___asan_gen_.1768 = private unnamed_addr constant [11 x i8] c"dmic_table\00", align 1
@___asan_gen_.1769 = private constant [31 x i8] c"../sound/soc/codecs/max98090.c\00", align 1
@___asan_gen_.1770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1769, i32 1774, i32 32 }
@llvm.compiler.used = appending global [557 x ptr] [ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_max98090_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_max98090__312_2699_max98090_i2c_driver_init6, ptr @__ksymtab_max98090_mic_detect, ptr @max98090_configure_bclk._entry, ptr @max98090_configure_bclk._entry.421, ptr @max98090_configure_bclk._entry.427, ptr @max98090_configure_bclk._entry.430, ptr @max98090_configure_bclk._entry_ptr, ptr @max98090_configure_bclk._entry_ptr.423, ptr @max98090_configure_bclk._entry_ptr.429, ptr @max98090_configure_bclk._entry_ptr.432, ptr @max98090_dai_set_fmt._entry, ptr @max98090_dai_set_fmt._entry.413, ptr @max98090_dai_set_fmt._entry.416, ptr @max98090_dai_set_fmt._entry_ptr, ptr @max98090_dai_set_fmt._entry_ptr.415, ptr @max98090_dai_set_fmt._entry_ptr.418, ptr @max98090_dai_set_sysclk._entry, ptr @max98090_dai_set_sysclk._entry_ptr, ptr @max98090_i2c_driver_exit, ptr @max98090_i2c_probe._entry, ptr @max98090_i2c_probe._entry.12, ptr @max98090_i2c_probe._entry.16, ptr @max98090_i2c_probe._entry_ptr, ptr @max98090_i2c_probe._entry_ptr.14, ptr @max98090_i2c_probe._entry_ptr.18, ptr @max98090_interrupt._entry, ptr @max98090_interrupt._entry.21, ptr @max98090_interrupt._entry.25, ptr @max98090_interrupt._entry.32, ptr @max98090_interrupt._entry_ptr, ptr @max98090_interrupt._entry_ptr.23, ptr @max98090_interrupt._entry_ptr.27, ptr @max98090_interrupt._entry_ptr.34, ptr @max98090_pll_work._entry, ptr @max98090_pll_work._entry_ptr, ptr @max98090_probe._entry, ptr @max98090_probe._entry.42, ptr @max98090_probe._entry.45, ptr @max98090_probe._entry.48, ptr @max98090_probe._entry.51, ptr @max98090_probe._entry.65, ptr @max98090_probe._entry.68, ptr @max98090_probe._entry_ptr, ptr @max98090_probe._entry_ptr.44, ptr @max98090_probe._entry_ptr.47, ptr @max98090_probe._entry_ptr.50, ptr @max98090_probe._entry_ptr.54, ptr @max98090_probe._entry_ptr.67, ptr @max98090_probe._entry_ptr.70, ptr @max98090_reset._entry, ptr @max98090_reset._entry_ptr, ptr @max98090_set_bias_level._entry, ptr @max98090_set_bias_level._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @max98090_i2c_driver, ptr @.str.4, ptr @max98090_of_match, ptr @max98090_pm, ptr @max98090_i2c_id, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @max98090_i2c_probe._key, ptr @max98090_regmap, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @soc_component_dev_max98090, ptr @max98090_dai, ptr @max98090_reg, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @max98090_pll_work._rs, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @max98090_probe.__key, ptr @.str.55, ptr @max98090_probe.__key.56, ptr @.str.57, ptr @max98090_probe.__key.58, ptr @.str.59, ptr @max98090_probe.__key.60, ptr @.str.61, ptr @max98090_probe.__key.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @max98090_snd_controls, ptr @max98091_snd_controls, ptr @max98090_dapm_routes, ptr @max98091_dapm_routes, ptr @.str.79, ptr @max98090_vcmbandgap_enum, ptr @.str.80, ptr @.compoundliteral, ptr @.str.81, ptr @max98090_micboost_tlv, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @max98090_mic_tlv, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @max98090_line_single_ended_tlv, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @max98090_line_tlv, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @max98090_avg_tlv, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @max98090_av_tlv, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.str.109, ptr @max98090_osr128_enum, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @max98090_adchp_enum, ptr @.str.113, ptr @.compoundliteral.114, ptr @.str.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @max98090_mode_enum, ptr @.str.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @max98090_dv_tlv, ptr @.compoundliteral.127, ptr @.str.128, ptr @max98090_sdg_tlv, ptr @.compoundliteral.129, ptr @.str.130, ptr @max98090_dvg_tlv, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.str.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @max98090_drcatk_enum, ptr @.str.149, ptr @max98090_drcrls_enum, ptr @.str.150, ptr @max98090_alcmakeup_tlv, ptr @.compoundliteral.151, ptr @.str.152, ptr @max98090_alccmp_enum, ptr @.str.153, ptr @max98090_drcexp_enum, ptr @.str.154, ptr @max98090_alccomp_tlv, ptr @.compoundliteral.155, ptr @.str.156, ptr @max98090_drcexp_tlv, ptr @.compoundliteral.157, ptr @.str.158, ptr @max98090_dac_perfmode_enum, ptr @.str.159, ptr @max98090_dachp_enum, ptr @.str.160, ptr @max98090_mixout_tlv, ptr @.compoundliteral.161, ptr @.str.162, ptr @.compoundliteral.163, ptr @.str.164, ptr @.compoundliteral.165, ptr @.str.166, ptr @.compoundliteral.167, ptr @.str.168, ptr @.compoundliteral.169, ptr @.str.170, ptr @.compoundliteral.171, ptr @.str.172, ptr @max98090_hp_tlv, ptr @.compoundliteral.173, ptr @.str.174, ptr @max98090_spk_tlv, ptr @.compoundliteral.175, ptr @.str.176, ptr @max98090_rcv_lout_tlv, ptr @.compoundliteral.177, ptr @.str.178, ptr @.compoundliteral.179, ptr @.str.180, ptr @.compoundliteral.181, ptr @.str.182, ptr @.compoundliteral.183, ptr @.str.184, ptr @.compoundliteral.185, ptr @.str.186, ptr @.compoundliteral.187, ptr @.str.188, ptr @.compoundliteral.189, ptr @.str.190, ptr @.compoundliteral.191, ptr @.str.192, ptr @.compoundliteral.193, ptr @.str.194, ptr @.compoundliteral.195, ptr @.str.196, ptr @.compoundliteral.197, ptr @.str.198, ptr @.compoundliteral.199, ptr @max98090_pwr_perf_text, ptr @.str.200, ptr @.str.201, ptr @max98090_osr128_text, ptr @.str.202, ptr @.str.203, ptr @max98090_mode_text, ptr @.str.204, ptr @.str.205, ptr @max98090_drcatk_text, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @max98090_drcrls_text, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @max98090_alccmp_text, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @max98090_drcexp_text, ptr @.str.227, ptr @.str.228, ptr @max98090_perf_pwr_text, ptr @.str.229, ptr @.compoundliteral.230, ptr @.str.231, ptr @max98090_filter_dmic34mode_enum, ptr @.str.232, ptr @.compoundliteral.233, ptr @.str.234, ptr @.compoundliteral.235, ptr @.str.236, ptr @.compoundliteral.237, ptr @.str.238, ptr @.compoundliteral.239, ptr @.str.240, ptr @.compoundliteral.241, ptr @.str.242, ptr @.compoundliteral.243, ptr @.str.244, ptr @.compoundliteral.245, ptr @.str.246, ptr @.compoundliteral.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @max98090_mic1_mux, ptr @.str.269, ptr @max98090_mic2_mux, ptr @.str.270, ptr @max98090_dmic_mux, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @max98090_linea_mixer_controls, ptr @.str.274, ptr @max98090_lineb_mixer_controls, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @max98090_left_adc_mixer_controls, ptr @.str.278, ptr @max98090_right_adc_mixer_controls, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @max98090_lbenl_mux, ptr @.str.285, ptr @max98090_lbenr_mux, ptr @.str.286, ptr @max98090_ltenl_mux, ptr @.str.287, ptr @max98090_ltenr_mux, ptr @.str.288, ptr @max98090_stenl_mux, ptr @.str.289, ptr @max98090_stenr_mux, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @max98090_left_hp_mixer_controls, ptr @.str.296, ptr @max98090_right_hp_mixer_controls, ptr @.str.297, ptr @max98090_left_speaker_mixer_controls, ptr @.str.298, ptr @max98090_right_speaker_mixer_controls, ptr @.str.299, ptr @max98090_left_rcv_mixer_controls, ptr @.str.300, ptr @max98090_right_rcv_mixer_controls, ptr @.str.301, ptr @max98090_linmod_mux, ptr @.str.302, ptr @max98090_mixhplsel_mux, ptr @.str.303, ptr @max98090_mixhprsel_mux, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @max98090_dapm_widgets, ptr @mic1_mux_enum, ptr @mic1_mux_text, ptr @mic2_mux_enum, ptr @mic2_mux_text, ptr @dmic_mux_enum, ptr @dmic_mux_text, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.compoundliteral.320, ptr @.str.321, ptr @.compoundliteral.322, ptr @.str.323, ptr @.compoundliteral.324, ptr @.str.325, ptr @.compoundliteral.326, ptr @.str.327, ptr @.compoundliteral.328, ptr @.str.329, ptr @.compoundliteral.330, ptr @.str.331, ptr @.compoundliteral.332, ptr @.str.333, ptr @.compoundliteral.334, ptr @.str.335, ptr @.compoundliteral.336, ptr @.compoundliteral.337, ptr @.compoundliteral.338, ptr @.str.339, ptr @.compoundliteral.340, ptr @.str.341, ptr @.compoundliteral.342, ptr @.str.343, ptr @.compoundliteral.344, ptr @.str.345, ptr @.compoundliteral.346, ptr @.compoundliteral.347, ptr @.compoundliteral.348, ptr @.compoundliteral.349, ptr @.compoundliteral.350, ptr @.compoundliteral.351, ptr @.compoundliteral.352, ptr @.compoundliteral.353, ptr @lbenl_mux_enum, ptr @lben_mux_text, ptr @.str.354, ptr @.str.355, ptr @lbenr_mux_enum, ptr @ltenl_mux_enum, ptr @lten_mux_text, ptr @.str.356, ptr @ltenr_mux_enum, ptr @stenl_mux_enum, ptr @stenl_mux_text, ptr @.str.357, ptr @stenr_mux_enum, ptr @stenr_mux_text, ptr @.str.358, ptr @.str.359, ptr @.compoundliteral.360, ptr @.str.361, ptr @.compoundliteral.362, ptr @.compoundliteral.363, ptr @.compoundliteral.364, ptr @.compoundliteral.365, ptr @.compoundliteral.366, ptr @.compoundliteral.367, ptr @.compoundliteral.368, ptr @.compoundliteral.369, ptr @.compoundliteral.370, ptr @.compoundliteral.371, ptr @.compoundliteral.372, ptr @.compoundliteral.373, ptr @.compoundliteral.374, ptr @.compoundliteral.375, ptr @.compoundliteral.376, ptr @.compoundliteral.377, ptr @.compoundliteral.378, ptr @.compoundliteral.379, ptr @.compoundliteral.380, ptr @.compoundliteral.381, ptr @.compoundliteral.382, ptr @.compoundliteral.383, ptr @.compoundliteral.384, ptr @.compoundliteral.385, ptr @.compoundliteral.386, ptr @.compoundliteral.387, ptr @.compoundliteral.388, ptr @.compoundliteral.389, ptr @.compoundliteral.390, ptr @.compoundliteral.391, ptr @.compoundliteral.392, ptr @.compoundliteral.393, ptr @.compoundliteral.394, ptr @.compoundliteral.395, ptr @.compoundliteral.396, ptr @linmod_mux_enum, ptr @linmod_mux_text, ptr @.str.397, ptr @.str.398, ptr @mixhplsel_mux_enum, ptr @mixhpsel_mux_text, ptr @.str.399, ptr @.str.400, ptr @mixhprsel_mux_enum, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @max98091_dapm_widgets, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @max98090_dai_ops, ptr @.str.409, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.414, ptr @.str.417, ptr @.str.419, ptr @.str.420, ptr @.str.422, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @ni_value, ptr @mi_value, ptr @.str.428, ptr @.str.431, ptr @dmic_table], section "llvm.metadata"
@0 = internal global [524 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_max98090 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_reg to i32), i32 1664, i32 2080, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_interrupt._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_interrupt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_interrupt._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_pll_work._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_pll_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_probe.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_probe.__key.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_probe.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_probe.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_probe._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_snd_controls to i32), i32 3168, i32 3936, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98091_snd_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_dapm_routes to i32), i32 6656, i32 8320, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98091_dapm_routes to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_vcmbandgap_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_micboost_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_mic_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_line_single_ended_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_line_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_avg_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_av_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_osr128_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_adchp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_dv_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_sdg_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_dvg_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_drcatk_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_drcrls_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_alcmakeup_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_alccmp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_drcexp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_alccomp_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_drcexp_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_dac_perfmode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_dachp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_mixout_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_hp_tlv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_spk_tlv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_rcv_lout_tlv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.193 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_pwr_perf_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_osr128_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_mode_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_drcatk_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_drcrls_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_alccmp_text to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_drcexp_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_perf_pwr_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.230 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_filter_dmic34mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.233 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.235 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.237 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.239 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.241 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.245 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_mic1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_mic2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_dmic_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_linea_mixer_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_lineb_mixer_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_left_adc_mixer_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_right_adc_mixer_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_lbenl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_lbenr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_ltenl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_ltenr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_stenl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_stenr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_left_hp_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_right_hp_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_left_speaker_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_right_speaker_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_left_rcv_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_right_rcv_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_linmod_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_mixhplsel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_mixhprsel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_dapm_widgets to i32), i32 11880, i32 14848, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic1_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic1_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic2_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic2_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.320 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.322 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.324 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.326 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.328 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.330 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.332 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.334 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.336 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.337 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.338 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.340 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.342 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.344 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.346 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1544 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.347 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.348 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.349 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.350 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.351 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.352 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.353 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbenl_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lben_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbenr_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltenl_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lten_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltenr_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stenl_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stenl_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stenr_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stenr_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.360 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.362 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1604 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.363 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.364 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.365 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.366 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.367 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.368 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.369 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.370 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.371 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.372 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.373 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.374 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.375 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.376 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.377 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.378 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.379 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.380 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.381 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.382 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.383 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.384 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.385 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.386 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1628 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.387 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.388 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.389 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.390 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.391 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.392 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1634 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.393 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.394 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.395 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.396 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linmod_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linmod_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixhplsel_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixhpsel_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixhprsel_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98091_dapm_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_dai_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_dai_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_dai_set_fmt._entry.413 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_dai_set_fmt._entry.416 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_configure_bclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_configure_bclk._entry.421 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_value to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_value to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1753 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_configure_bclk._entry.427 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_configure_bclk._entry.430 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_table to i32), i32 860, i32 1056, i32 ptrtoint (ptr @___asan_gen_.1768 to i32), i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max98090_mic_detect(ptr noundef %component, ptr noundef %jack) #0 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_mic_detect.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_mic_detect, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !826

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_mic_detect.__UNIQUE_ID_ddebug309, ptr noundef %5, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %jack4 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %jack4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %jack, ptr %jack4, align 4
  %tobool5.not = icmp eq ptr %jack, null
  %. = select i1 %tobool5.not, i32 0, i32 4
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 3, i32 noundef 4, i32 noundef %.) #8
  %7 = ptrtoint ptr %jack4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %jack4, align 4
  tail call void @snd_soc_jack_report(ptr noundef %8, i32 noundef 0, i32 noundef 16387) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %9 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_work = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 12
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %jack_work, i32 noundef 10) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_i2c_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max98090_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max98090_i2c_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @max98090_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_i2c_probe(ptr noundef %i2c, ptr noundef readonly %i2c_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_i2c_probe.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_i2c_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !826

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @max98090_i2c_probe.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 332, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.else

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %do.end
  %tobool18.not = icmp eq ptr %i2c_id, null
  br i1 %tobool18.not, label %if.else.if.end22_crit_edge, label %if.then19

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data20 = getelementptr inbounds %struct.i2c_device_id, ptr %i2c_id, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data20 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data20, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.else.if.end22_crit_edge
  %driver_data.0 = phi i32 [ %1, %if.then19 ], [ 0, %if.else.if.end22_crit_edge ]
  %devtype = getelementptr inbounds %struct.max98090_priv, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %devtype to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %driver_data.0, ptr %devtype, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %pdata = getelementptr inbounds %struct.max98090_priv, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pdata, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %dmic_freq = getelementptr inbounds %struct.max98090_priv, ptr %call.i, i32 0, i32 9
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.10, ptr noundef %dmic_freq, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp26 = icmp slt i32 %call.i.i, 0
  br i1 %cmp26, label %if.then27, label %if.end22.if.end29_crit_edge

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dmic_freq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2500000, ptr %dmic_freq, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end22.if.end29_crit_edge
  %call31 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @max98090_regmap, ptr noundef nonnull @max98090_i2c_probe._key, ptr noundef nonnull @.str.11) #8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call31, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end41

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call31 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %11) #11
  br label %cleanup

if.end41:                                         ; preds = %if.end29
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call43 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %13, ptr noundef null, ptr noundef nonnull @max98090_interrupt, i32 noundef 8194, ptr noundef nonnull @.str.15, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call43) #11
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_max98090, ptr noundef nonnull @max98090_dai, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end48, %if.then34, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %do.end48 ], [ -12, %do.end.cleanup_crit_edge ], [ %11, %if.then34 ], [ %call52, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_i2c_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 64, i32 noundef 1) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 69, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 40) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max98090_i2c_shutdown(ptr nocapture noundef readonly %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 64, i32 noundef 1) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 69, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 40) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_interrupt(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %mask = alloca i32, align 4
  %active = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.max98090_priv, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mask, align 4, !annotation !827
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active) #8
  %3 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %active, align 4, !annotation !827
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_interrupt.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_interrupt, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !826

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_interrupt.__UNIQUE_ID_ddebug303, ptr noundef %5, ptr noundef nonnull @.str.19) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call6 = call i32 @regmap_read(ptr noundef %7, i32 noundef 3, ptr noundef nonnull %mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.20, i32 noundef %call6) #11
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call15 = call i32 @regmap_read(ptr noundef %11, i32 noundef 1, ptr noundef nonnull %active) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %do.body23, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22, i32 noundef %call15) #11
  br label %cleanup

do.body23:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_interrupt.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_interrupt, %if.then35)) #8
          to label %do.end39 [label %if.then35], !srcloc !826

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %dev36 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev36, align 4
  %16 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active, align 4
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask, align 4
  %and = and i32 %19, %17
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_interrupt.__UNIQUE_ID_ddebug304, ptr noundef %15, ptr noundef nonnull @.str.24, i32 noundef %17, i32 noundef %19, i32 noundef %and) #8
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body23
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask, align 4
  %22 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active, align 4
  %and40 = and i32 %23, %21
  store i32 %and40, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.end39.cleanup_crit_edge, label %if.end43

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %do.end39
  %and44 = and i32 %and40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end51_crit_edge, label %do.end49

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %dev50 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev50, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.26) #11
  br label %if.end51

if.end51:                                         ; preds = %do.end49, %if.end43.if.end51_crit_edge
  %26 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %active, align 4
  %and52 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end72_crit_edge, label %do.body55

if.end51.if.end72_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

do.body55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_interrupt.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_interrupt, %if.then67)) #8
          to label %if.end72 [label %if.then67], !srcloc !826

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %dev68 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev68, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_interrupt.__UNIQUE_ID_ddebug305, ptr noundef %29, ptr noundef nonnull @.str.28) #8
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %do.body55, %if.end51.if.end72_crit_edge
  %30 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %active, align 4
  %and73 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.if.end93_crit_edge, label %do.body76

if.end72.if.end93_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

do.body76:                                        ; preds = %if.end72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_interrupt.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_interrupt, %if.then88)) #8
          to label %do.end92 [label %if.then88], !srcloc !826

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  %dev89 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev89, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_interrupt.__UNIQUE_ID_ddebug306, ptr noundef %33, ptr noundef nonnull @.str.29) #8
  br label %do.end92

do.end92:                                         ; preds = %if.then88, %do.body76
  %34 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %component1, align 4
  %active.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %do.end92.if.end93_crit_edge, label %do.body.i

do.end92.if.end93_crit_edge:                      ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

do.body.i:                                        ; preds = %do.end92
  %call2.i = call i32 @___ratelimit(ptr noundef nonnull @max98090_pll_work._rs, ptr noundef nonnull @__func__.max98090_pll_work) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.body.i.do.end8.i_crit_edge, label %do.end.i

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %35, i32 0, i32 3
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.36) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %do.body.i.do.end8.i_crit_edge
  %call9.i = call i32 @snd_soc_component_update_bits(ptr noundef %35, i32 noundef 69, i32 noundef 128, i32 noundef 0) #8
  %call10.i = call i32 @snd_soc_component_update_bits(ptr noundef %35, i32 noundef 69, i32 noundef 128, i32 noundef 128) #8
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %call11.i = call i32 @snd_soc_component_read(ptr noundef %35, i32 noundef 1) #8
  %and.i = and i32 %call11.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %do.end8.i.if.end93_crit_edge, label %for.cond.i

do.end8.i.if.end93_crit_edge:                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

for.cond.i:                                       ; preds = %do.end8.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %call11.1.i = call i32 @snd_soc_component_read(ptr noundef %35, i32 noundef 1) #8
  %and.1.i = and i32 %call11.1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool12.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool12.not.1.i, label %for.cond.i.if.end93_crit_edge, label %for.cond.1.i

for.cond.i.if.end93_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %call11.2.i = call i32 @snd_soc_component_read(ptr noundef %35, i32 noundef 1) #8
  %and.2.i = and i32 %call11.2.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool12.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool12.not.2.i, label %for.cond.1.i.if.end93_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end93_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %call11.3.i = call i32 @snd_soc_component_read(ptr noundef %35, i32 noundef 1) #8
  %and.3.i = and i32 %call11.3.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool12.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool12.not.3.i, label %for.cond.2.i.if.end93_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end93_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %call11.4.i = call i32 @snd_soc_component_read(ptr noundef %35, i32 noundef 1) #8
  %and.4.i = and i32 %call11.4.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool12.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool12.not.4.i, label %for.cond.3.i.if.end93_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end93_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %call11.5.i = call i32 @snd_soc_component_read(ptr noundef %35, i32 noundef 1) #8
  %and.5.i = and i32 %call11.5.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool12.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool12.not.5.i, label %for.cond.4.i.if.end93_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end93_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %call11.6.i = call i32 @snd_soc_component_read(ptr noundef %35, i32 noundef 1) #8
  %and.6.i = and i32 %call11.6.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool12.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool12.not.6.i, label %for.cond.5.i.if.end93_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end93_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %call11.7.i = call i32 @snd_soc_component_read(ptr noundef %35, i32 noundef 1) #8
  %and.7.i = and i32 %call11.7.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool12.not.7.i = icmp eq i32 %and.7.i, 0
  br i1 %tobool12.not.7.i, label %for.cond.6.i.if.end93_crit_edge, label %for.cond.7.i

for.cond.6.i.if.end93_crit_edge:                  ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

for.cond.7.i:                                     ; preds = %for.cond.6.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %call11.8.i = call i32 @snd_soc_component_read(ptr noundef %35, i32 noundef 1) #8
  %and.8.i = and i32 %call11.8.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i)
  %tobool12.not.8.i = icmp eq i32 %and.8.i, 0
  br i1 %tobool12.not.8.i, label %for.cond.7.i.if.end93_crit_edge, label %for.cond.8.i

for.cond.7.i.if.end93_crit_edge:                  ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

for.cond.8.i:                                     ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %call11.9.i = call i32 @snd_soc_component_read(ptr noundef %35, i32 noundef 1) #8
  br label %if.end93

if.end93:                                         ; preds = %for.cond.8.i, %for.cond.7.i.if.end93_crit_edge, %for.cond.6.i.if.end93_crit_edge, %for.cond.5.i.if.end93_crit_edge, %for.cond.4.i.if.end93_crit_edge, %for.cond.3.i.if.end93_crit_edge, %for.cond.2.i.if.end93_crit_edge, %for.cond.1.i.if.end93_crit_edge, %for.cond.i.if.end93_crit_edge, %do.end8.i.if.end93_crit_edge, %do.end92.if.end93_crit_edge, %if.end72.if.end93_crit_edge
  %40 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %active, align 4
  %and94 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end117_crit_edge, label %do.body97

if.end93.if.end117_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

do.body97:                                        ; preds = %if.end93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_interrupt.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_interrupt, %if.then109)) #8
          to label %do.end113 [label %if.then109], !srcloc !826

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #10
  %dev110 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev110, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_interrupt.__UNIQUE_ID_ddebug307, ptr noundef %43, ptr noundef nonnull @.str.30) #8
  br label %do.end113

do.end113:                                        ; preds = %if.then109, %do.body97
  %dev114 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev114, align 4
  call void @pm_wakeup_dev_event(ptr noundef %45, i32 noundef 100, i1 noundef zeroext false) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %46 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_work = getelementptr inbounds %struct.max98090_priv, ptr %data, i32 0, i32 12
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %jack_work, i32 noundef 10) #8
  br label %if.end117

if.end117:                                        ; preds = %do.end113, %if.end93.if.end117_crit_edge
  %47 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %active, align 4
  %and118 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end117.if.end138_crit_edge, label %do.body121

if.end117.if.end138_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

do.body121:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_interrupt.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_interrupt, %if.then133)) #8
          to label %if.end138 [label %if.then133], !srcloc !826

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #10
  %dev134 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %dev134 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev134, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_interrupt.__UNIQUE_ID_ddebug308, ptr noundef %50, ptr noundef nonnull @.str.31) #8
  br label %if.end138

if.end138:                                        ; preds = %if.then133, %do.body121, %if.end117.if.end138_crit_edge
  %51 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %active, align 4
  %and139 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.end138.cleanup_crit_edge, label %do.end144

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end144:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  %dev145 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %dev145 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev145, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.33) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end144, %if.end138.cleanup_crit_edge, %do.end39.cleanup_crit_edge, %do.end20, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end11 ], [ 0, %do.end20 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end39.cleanup_crit_edge ], [ 1, %do.end144 ], [ 1, %if.end138.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98090_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.caserange [
    i32 255, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge3
    i32 2, label %entry.return_crit_edge4
    i32 3, label %entry.return_crit_edge5
  ]

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.caserange:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = add i32 %reg, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 197, i32 %1)
  %inbounds = icmp ult i32 %1, 197
  br label %return

return:                                           ; preds = %sw.caserange, %entry.return_crit_edge, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ %inbounds, %sw.caserange ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98090_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.433)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 2, label %entry.return_crit_edge2
    i32 255, label %entry.return_crit_edge3
  ]

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_probe(ptr noundef %component) #0 align 64 {
entry:
  %micbias = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %micbias) #8
  %4 = ptrtoint ptr %micbias to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %micbias, align 4, !annotation !827
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_probe.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !826

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_probe.__UNIQUE_ID_ddebug310, ptr noundef %6, ptr noundef nonnull @.str.39) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %call5 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.40) #8
  %mclk = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %mclk, align 4
  %cmp = icmp eq ptr %call5, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %component10 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %component10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %component, ptr %component10, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 0, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %component10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %component10, align 4
  %dev.i201 = getelementptr inbounds %struct.snd_soc_component, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dev.i201 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i201, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.71, i32 noundef %call.i) #11
  br label %max98090_reset.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 20) #8
  br label %max98090_reset.exit

max98090_reset.exit:                              ; preds = %if.end.i, %do.end.i
  %sysclk = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %sysclk, align 4
  %pclk = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %pclk, align 4
  %master = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 23
  %19 = ptrtoint ptr %master to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %master, align 4
  %dai = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %dai to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %dai, align 4
  %fmt = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 10, i32 0, i32 1
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %fmt, align 4
  %lin_state = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 19
  %22 = ptrtoint ptr %lin_state to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %lin_state, align 4
  %pa1en = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 20
  %23 = ptrtoint ptr %pa1en to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pa1en, align 4
  %pa2en = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 21
  %24 = ptrtoint ptr %pa2en to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %pa2en, align 4
  %call12 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %max98090_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.41, i32 noundef %call12) #11
  br label %cleanup

if.end19:                                         ; preds = %max98090_reset.exit
  %27 = and i32 %call12, -16
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.434)
  switch i32 %27, label %if.else35 [
    i32 64, label %if.then22
    i32 80, label %if.then30
  ]

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.43, i32 noundef %call12) #11
  br label %if.end41

if.then30:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.46, i32 noundef %call12) #11
  br label %if.end41

if.else35:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.49, i32 noundef %call12) #11
  br label %if.end41

if.end41:                                         ; preds = %if.else35, %if.then30, %if.then22
  %devtype.0 = phi i32 [ 0, %if.then22 ], [ 1, %if.then30 ], [ 0, %if.else35 ]
  %devtype42 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 2
  %35 = ptrtoint ptr %devtype42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %devtype42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %devtype.0)
  %cmp43.not = icmp eq i32 %36, %devtype.0
  br i1 %cmp43.not, label %if.end41.if.end50_crit_edge, label %do.end47

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.52) #11
  %39 = ptrtoint ptr %devtype42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %devtype.0, ptr %devtype42, align 4
  br label %if.end50

if.end50:                                         ; preds = %do.end47, %if.end41.if.end50_crit_edge
  %jack_state = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 11
  %40 = ptrtoint ptr %jack_state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %jack_state, align 4
  %jack_work = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 12
  tail call void @__init_work(ptr noundef %jack_work, i32 noundef 0) #8
  %41 = ptrtoint ptr %jack_work to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -64, ptr %jack_work, align 4
  %lockdep_map = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 12, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @max98090_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry59 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 12, i32 0, i32 1
  %42 = ptrtoint ptr %entry59 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry59, ptr %entry59, align 4
  %prev.i = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 12, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry59, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 12, i32 0, i32 2
  %44 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @max98090_jack_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 12, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.57, ptr noundef nonnull @max98090_probe.__key.56) #8
  %pll_det_enable_work = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 13
  tail call void @__init_work(ptr noundef %pll_det_enable_work, i32 noundef 0) #8
  %45 = ptrtoint ptr %pll_det_enable_work to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -64, ptr %pll_det_enable_work, align 4
  %lockdep_map80 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map80, ptr noundef nonnull @.str.59, ptr noundef nonnull @max98090_probe.__key.58, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry83 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 13, i32 0, i32 1
  %46 = ptrtoint ptr %entry83 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry83, ptr %entry83, align 4
  %prev.i202 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 13, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i202 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry83, ptr %prev.i202, align 4
  %func86 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 13, i32 0, i32 2
  %48 = ptrtoint ptr %func86 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @max98090_pll_det_enable_work, ptr %func86, align 4
  %timer91 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %timer91, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.61, ptr noundef nonnull @max98090_probe.__key.60) #8
  %pll_det_disable_work = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 14
  tail call void @__init_work(ptr noundef %pll_det_disable_work, i32 noundef 0) #8
  %49 = ptrtoint ptr %pll_det_disable_work to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -64, ptr %pll_det_disable_work, align 4
  %lockdep_map102 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map102, ptr noundef nonnull @.str.63, ptr noundef nonnull @max98090_probe.__key.62, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry104 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 14, i32 1
  %50 = ptrtoint ptr %entry104 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %entry104, ptr %entry104, align 4
  %prev.i203 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 14, i32 1, i32 1
  %51 = ptrtoint ptr %prev.i203 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %entry104, ptr %prev.i203, align 4
  %func106 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 14, i32 2
  %52 = ptrtoint ptr %func106 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @max98090_pll_det_disable_work, ptr %func106, align 4
  %call109 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 61, i32 noundef 128) #8
  %call110 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1) #8
  %call111 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 67, i32 noundef 1, i32 noundef 1) #8
  %call112 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 67, i32 noundef 2, i32 noundef 0) #8
  %call113 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 68, i32 noundef 1, i32 noundef 1) #8
  %call114 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 66, i32 noundef 1) #8
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  %call.i204 = call i32 @device_property_read_u32_array(ptr noundef %54, ptr noundef nonnull @.str.64, ptr noundef nonnull %micbias, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool117.not = icmp eq i32 %call.i204, 0
  br i1 %tobool117.not, label %if.else123, label %if.then118

if.then118:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %micbias to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %micbias, align 4
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.66) #11
  br label %if.end131

if.else123:                                       ; preds = %if.end50
  %58 = ptrtoint ptr %micbias to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %micbias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %cmp124 = icmp ugt i32 %59, 3
  br i1 %cmp124, label %do.end128, label %if.else123.if.end131_crit_edge

if.else123.if.end131_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

do.end128:                                        ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.69, i32 noundef %59) #11
  %62 = ptrtoint ptr %micbias to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %micbias, align 4
  br label %if.end131

if.end131:                                        ; preds = %do.end128, %if.else123.if.end131_crit_edge, %if.then118
  %63 = ptrtoint ptr %micbias to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %micbias, align 4
  %call132 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 18, i32 noundef 3, i32 noundef %64) #8
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver_data.i.i.i, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call2.i = call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @max98090_snd_controls, i32 noundef 66) #8
  %devtype.i = getelementptr inbounds %struct.max98090_priv, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp.i205 = icmp eq i32 %70, 1
  br i1 %cmp.i205, label %if.then.i, label %if.end131.if.end.i206_crit_edge

if.end131.if.end.i206_crit_edge:                  ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i206

if.then.i:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @max98091_snd_controls, i32 noundef 10) #8
  br label %if.end.i206

if.end.i206:                                      ; preds = %if.then.i, %if.end131.if.end.i206_crit_edge
  %call4.i = call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @max98090_dapm_widgets, i32 noundef 66) #8
  %call5.i = call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @max98090_dapm_routes, i32 noundef 128) #8
  %71 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp7.i = icmp eq i32 %72, 1
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i206.cleanup_crit_edge

if.end.i206.cleanup_crit_edge:                    ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8.i:                                       ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @max98091_dapm_widgets, i32 noundef 4) #8
  %call10.i = call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @max98091_dapm_routes, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %if.end.i206.cleanup_crit_edge, %do.end17, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %do.end.cleanup_crit_edge ], [ %call12, %do.end17 ], [ %call12, %if.end.i206.cleanup_crit_edge ], [ %call12, %if.then8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %micbias) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max98090_remove(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %jack_work = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 12
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_work) #8
  %pll_det_enable_work = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 13
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %pll_det_enable_work) #8
  %pll_det_disable_work = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 14
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %pll_det_disable_work) #8
  %component4 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %component4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %component4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max98090_seq_notifier(ptr noundef %component, i32 noundef %event, i32 noundef %subseq) #0 align 64 {
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
  %shdn_pending = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %shdn_pending to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shdn_pending, align 1, !range !828
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 69, i32 noundef 128, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 40) #8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 69, i32 noundef 128, i32 noundef 128) #8
  %6 = ptrtoint ptr %shdn_pending to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %shdn_pending, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_set_bias_level(ptr noundef %component, i32 noundef %level) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.435)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb19
    i32 2, label %sw.bb
    i32 1, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mclk = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %7 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %6) #8
  tail call void @clk_unprepare(ptr noundef %6) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %6) #8
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %dapm.i.i35 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %9 = ptrtoint ptr %dapm.i.i35 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dapm.i.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %if.then13, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %sw.bb10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %call14 = tail call i32 @regcache_sync(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.then13.cleanup_crit_edge, label %do.end

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.406, i32 noundef %call14) #11
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 61, i32 noundef 64, i32 noundef 64) #8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  tail call void @regcache_mark_dirty(ptr noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb19, %do.end, %if.then13.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %if.then3.i, %if.end.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %sw.bb10.cleanup_crit_edge ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb19 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max98090_jack_work(ptr nocapture noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr i8, ptr %work, i32 -48
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %jack_state = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %jack_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jack_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 61, i32 noundef 64, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 50) #8
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 2) #8
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 61, i32 noundef 64, i32 noundef 64) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 2) #8
  %and = and i32 %call4, 6
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.436)
  switch i32 %and, label %do.body75 [
    i32 6, label %do.body
    i32 0, label %sw.bb12
    i32 2, label %do.body56
  ]

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_jack_work.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_jack_work, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !826

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_jack_work.__UNIQUE_ID_ddebug298, ptr noundef %6, ptr noundef nonnull @.str.74) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %7 = ptrtoint ptr %jack_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %jack_state, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %8 = ptrtoint ptr %jack_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %jack_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp14 = icmp eq i32 %9, 3
  br i1 %cmp14, label %do.body16, label %do.body36

do.body16:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_jack_work.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_jack_work, %if.then28)) #8
          to label %sw.epilog [label %if.then28], !srcloc !826

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %dev29 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_jack_work.__UNIQUE_ID_ddebug299, ptr noundef %11, ptr noundef nonnull @.str.75) #8
  br label %sw.epilog

do.body36:                                        ; preds = %sw.bb12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_jack_work.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_jack_work, %if.then48)) #8
          to label %do.end52 [label %if.then48], !srcloc !826

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %dev49 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_jack_work.__UNIQUE_ID_ddebug300, ptr noundef %13, ptr noundef nonnull @.str.76) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body36
  %14 = ptrtoint ptr %jack_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %jack_state, align 4
  br label %sw.epilog

do.body56:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_jack_work.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_jack_work, %if.then68)) #8
          to label %do.end72 [label %if.then68], !srcloc !826

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  %dev69 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev69, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_jack_work.__UNIQUE_ID_ddebug301, ptr noundef %16, ptr noundef nonnull @.str.77) #8
  br label %do.end72

do.end72:                                         ; preds = %if.then68, %do.body56
  %17 = ptrtoint ptr %jack_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %jack_state, align 4
  br label %sw.epilog

do.body75:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_jack_work.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_jack_work, %if.then87)) #8
          to label %sw.epilog [label %if.then87], !srcloc !826

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  %dev88 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev88, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_jack_work.__UNIQUE_ID_ddebug302, ptr noundef %19, ptr noundef nonnull @.str.78) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then87, %do.body75, %do.end72, %do.end52, %if.then28, %do.body16, %do.end
  %status.0 = phi i32 [ 0, %if.then87 ], [ 3, %do.end72 ], [ 1, %do.end52 ], [ 0, %do.end ], [ 16387, %if.then28 ], [ 16387, %do.body16 ], [ 0, %do.body75 ]
  %jack = getelementptr i8, ptr %work, i32 244
  %20 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %21, i32 noundef %status.0, i32 noundef 16387) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max98090_pll_det_enable_work(ptr noundef %work) #0 align 64 {
entry:
  %status = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -152
  %component1 = getelementptr i8, ptr %work, i32 -148
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !827
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mask, align 4, !annotation !827
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 1, ptr noundef nonnull %status) #8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef 3, ptr noundef nonnull %mask) #8
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %and = and i32 %11, %9
  store i32 %and, ptr %status, align 4
  %and4 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %12 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_work = getelementptr i8, ptr %work, i32 -100
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %jack_work, i32 noundef 10) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call7 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 32, i32 noundef 32) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max98090_pll_det_disable_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr i8, ptr %work, i32 -248
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %pll_det_enable_work = getelementptr i8, ptr %work, i32 -100
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %pll_det_enable_work) #8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 32, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
define internal i32 @max98090_get_enab_tlv(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
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
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 true) #8, !range !829
  %sub.i = sub nuw nsw i32 32, %11
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %13) #8
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.437)
  switch i32 %15, label %entry.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 17, label %sw.bb5
    i32 26, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pa1en = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 20
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pa2en = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 21
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sidetone = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb
  %select.0 = phi ptr [ %sidetone, %sw.bb6 ], [ %pa2en, %sw.bb5 ], [ %pa1en, %sw.bb ]
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 5
  %17 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %shift, align 4
  %shr = lshr i32 %call3, %18
  %and = and i32 %shr, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %sub7 = add i32 %and, -1
  %19 = ptrtoint ptr %select.0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub7, ptr %select.0, align 4
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %select.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %select.0, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %sub7, %if.then ], [ %21, %if.else ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %val.0, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_put_enab_tlv(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 true) #8, !range !829
  %sub.i = sub nuw nsw i32 32, %11
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 8
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %15) #8
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.438)
  switch i32 %17, label %entry.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 17, label %sw.bb5
    i32 26, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pa1en = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 20
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pa2en = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 21
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sidetone = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb
  %select.0 = phi ptr [ %sidetone, %sw.bb6 ], [ %pa2en, %sw.bb5 ], [ %pa1en, %sw.bb ]
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 5
  %19 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %shift, align 4
  %shr = lshr i32 %call3, %20
  %and = and i32 %shr, %sub
  %21 = ptrtoint ptr %select.0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %13, ptr %select.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %add = add i32 %13, 1
  %sel.0 = select i1 %cmp.not, i32 0, i32 %add
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg, align 4
  %24 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %shift, align 4
  %shl9 = shl i32 %sub, %25
  %shl11 = shl i32 %sel.0, %25
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %23, i32 noundef %shl9, i32 noundef %shl11) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_range(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_range(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_range(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_put(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max98090_shdn_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
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
  %shdn_pending = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %shdn_pending to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %shdn_pending, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_micinput_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %reg = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %7) #8
  %val.0.in = lshr i32 %call2, 5
  %val.0 = and i32 %val.0.in, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %cmp6.not = icmp eq i32 %val.0, 0
  br i1 %cmp6.not, label %entry.if.end14_crit_edge, label %if.then7

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp9 = icmp eq i32 %9, 16
  %sub = add nsw i32 %val.0, -1
  %pa1en = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 20
  %pa2en = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 21
  %pa1en.sink = select i1 %cmp9, ptr %pa1en, ptr %pa2en
  %10 = ptrtoint ptr %pa1en.sink to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %pa1en.sink, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %entry.if.end14_crit_edge
  %11 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.439)
  switch i32 %event, label %if.end14.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %if.end14.sw.epilog_crit_edge
  ]

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp16 = icmp eq i32 %13, 16
  %pa1en18 = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 20
  %pa2en20 = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 21
  %pa1en18.sink = select i1 %cmp16, ptr %pa1en18, ptr %pa2en20
  %14 = ptrtoint ptr %pa1en18.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pa1en18.sink, align 4
  %add = shl i32 %15, 5
  %phi.bo = add i32 %add, 32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end14.sw.epilog_crit_edge
  %val.1 = phi i32 [ 0, %if.end14.sw.epilog_crit_edge ], [ %phi.bo, %sw.bb ]
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %call28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %17, i32 noundef 96, i32 noundef %val.1) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end14.cleanup_crit_edge ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_dai_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %sysclk = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp = icmp eq i32 %7, %freq
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mclk = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @clk_round_rate(ptr noundef %9, i32 noundef %freq) #8
  %10 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mclk, align 4
  %call7 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %call5) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %freq.addr.0 = phi i32 [ %freq, %if.end.if.end8_crit_edge ], [ %call5, %if.then3 ]
  %12 = add i32 %freq.addr.0, -10000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %12)
  %13 = icmp ult i32 %12, 10000001
  br i1 %13, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 27, i32 noundef 16) #8
  br label %if.end30

if.else:                                          ; preds = %if.end8
  %14 = add i32 %freq.addr.0, -20000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %14)
  %15 = icmp ult i32 %14, 20000000
  br i1 %15, label %if.then16, label %if.else19

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 27, i32 noundef 32) #8
  %shr = lshr i32 %freq.addr.0, 1
  br label %if.end30

if.else19:                                        ; preds = %if.else
  %16 = add i32 %freq.addr.0, -40000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %16)
  %17 = icmp ult i32 %16, 20000000
  br i1 %17, label %if.then23, label %do.end

if.then23:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 27, i32 noundef 48) #8
  %shr25 = lshr i32 %freq.addr.0, 2
  br label %if.end30

do.end:                                           ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.409) #11
  br label %cleanup

if.end30:                                         ; preds = %if.then23, %if.then16, %if.then11
  %shr.sink = phi i32 [ %shr, %if.then16 ], [ %shr25, %if.then23 ], [ %freq.addr.0, %if.then11 ]
  %pclk18 = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %pclk18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.sink, ptr %pclk18, align 4
  %21 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %freq.addr.0, ptr %sysclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_dai_set_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
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
  %dai_fmt = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %fmt, ptr %dai_fmt, align 4
  %fmt2 = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 10, i32 0, i32 1
  %7 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %fmt)
  %cmp.not = icmp eq i32 %8, %fmt
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %fmt, ptr %fmt2, align 4
  %and = and i32 %fmt, 61440
  %10 = add nsw i32 %and, -4096
  %11 = lshr exact i32 %10, 12
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.440)
  switch i32 %11, label %do.end [
    i32 3, label %sw.bb
    i32 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 29, i32 noundef 0) #8
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 30, i32 noundef 0) #8
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 28, i32 noundef 1, i32 noundef 0) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %tdm_slots = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 17
  %13 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tdm_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %switch.selectcmp = icmp eq i32 %14, 3
  %switch.select = select i1 %switch.selectcmp, i32 130, i32 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %switch.selectcmp105 = icmp eq i32 %14, 4
  %switch.select106 = select i1 %switch.selectcmp105, i32 131, i32 %switch.select
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.411) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %.sink = phi i8 [ 1, %sw.bb7 ], [ 0, %sw.bb ]
  %regval.1 = phi i32 [ %switch.select106, %sw.bb7 ], [ 0, %sw.bb ]
  %master23 = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 23
  %17 = ptrtoint ptr %master23 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %master23, align 4
  %call26 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 33, i32 noundef %regval.1) #8
  %and27 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %18 = icmp ult i32 %switch.tableidx, 3
  br i1 %18, label %switch.lookup, label %do.end40

do.end40:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.414) #11
  br label %cleanup

switch.lookup:                                    ; preds = %sw.epilog
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 8196, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %and43 = lshr i32 %fmt, 8
  %21 = and i32 %and43, 15
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.441)
  switch i32 %21, label %do.end59 [
    i32 0, label %switch.lookup.sw.epilog61_crit_edge
    i32 2, label %sw.bb44
    i32 3, label %sw.bb48
    i32 4, label %sw.bb52
  ]

switch.lookup.sw.epilog61_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog61

sw.bb44:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %23 = or i8 %switch.masked, 16
  br label %sw.epilog61

sw.bb48:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %24 = or i8 %switch.masked, 8
  br label %sw.epilog61

sw.bb52:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %25 = or i8 %switch.masked, 24
  br label %sw.epilog61

do.end59:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.417) #11
  br label %cleanup

sw.epilog61:                                      ; preds = %sw.bb52, %sw.bb48, %sw.bb44, %switch.lookup.sw.epilog61_crit_edge
  %regval.3 = phi i8 [ %25, %sw.bb52 ], [ %24, %sw.bb48 ], [ %23, %sw.bb44 ], [ %switch.masked, %switch.lookup.sw.epilog61_crit_edge ]
  %tdm_slots62 = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 17
  %28 = ptrtoint ptr %tdm_slots62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tdm_slots62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp63 = icmp sgt i32 %29, 1
  %30 = xor i8 %regval.3, 8
  %spec.select = select i1 %cmp63, i8 %30, i8 %regval.3
  %conv69 = zext i8 %spec.select to i32
  %call70 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 34, i32 noundef %conv69) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog61, %do.end59, %do.end40, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end40 ], [ -22, %do.end59 ], [ 0, %sw.epilog61 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_set_tdm_slot(ptr nocapture noundef readonly %codec_dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
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
  %6 = icmp ugt i32 %slots, 4
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tdm_slots = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 17
  %7 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %slots, ptr %tdm_slots, align 4
  %tdm_width = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %tdm_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %slot_width, ptr %tdm_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %slots)
  %cmp4 = icmp ugt i32 %slots, 1
  br i1 %cmp4, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 36, i32 noundef 16) #8
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 35, i32 noundef 1, i32 noundef 1) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %fmt = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 10, i32 0, i32 1
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fmt, align 4
  %dai_fmt = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 16
  %10 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dai_fmt, align 4
  %call9 = tail call i32 @max98090_dai_set_fmt(ptr noundef %codec_dai, i32 noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_dai_mute(ptr nocapture noundef readonly %codec_dai, i32 noundef %mute, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %cond = select i1 %tobool.not, i32 0, i32 128
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 39, i32 noundef 128, i32 noundef %cond) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_dai_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %dai_fmt = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dai_fmt, align 4
  %and = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp.not = icmp eq i32 %and, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 46, i32 1
  %10 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 4, ptr %formats, align 8
  %11 = load ptr, ptr %runtime, align 4
  %call3 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %11, i32 noundef 0, i32 noundef 16, i32 noundef 16) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_dai_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %dai2 = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 10
  %call3 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %params) #8
  %bclk = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3, ptr %bclk, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl i32 %call3, 1
  %9 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %bclk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.i.i49 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i49, align 4
  %lrclk = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %lrclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %lrclk, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end.if.then.i.i.i_crit_edge

if.end.if.then.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %14, %if.end.if.then.i.i.i_crit_edge ], [ %17, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %15 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !829
  %add.i.i.i = or i32 %15, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1.i)
  %cond = icmp eq i32 %call1.i, 16
  br i1 %cond, label %sw.bb, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %params_width.exit
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 34, i32 noundef 3, i32 noundef 0) #8
  %master = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 23
  %18 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %master, align 4, !range !828
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %sw.bb.if.end10_crit_edge, label %if.then9

sw.bb.if.end10_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @max98090_configure_bclk(ptr noundef %1)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.bb.if.end10_crit_edge
  %20 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lrclk, align 4
  %22 = ptrtoint ptr %dai2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %dai2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000, i32 %21)
  %cmp13 = icmp ult i32 %21, 24000
  %. = select i1 %cmp13, i32 0, i32 128
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 38, i32 noundef 128, i32 noundef %.) #8
  %23 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %24)
  %cmp19 = icmp ult i32 %24, 50000
  %.sink50 = select i1 %cmp19, i32 0, i32 16
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 38, i32 noundef 16, i32 noundef %.sink50) #8
  %dmic_freq = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 9
  %25 = ptrtoint ptr %dmic_freq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dmic_freq, align 4
  %pclk = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 6
  %27 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pclk, align 4
  %29 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11289601, i32 %28)
  %31 = icmp slt i32 %28, 11289601
  br i1 %31, label %if.end10.if.end.i_crit_edge, label %for.inc.i.i

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end9.i.i:                                      ; preds = %if.end.4.i.i.if.end9.i.i_crit_edge, %if.end.3.i.i.if.end9.i.i_crit_edge, %if.end.2.i.i.if.end9.i.i_crit_edge, %if.end.1.i.i.if.end9.i.i_crit_edge
  %i.036.lcssa38.ph.i.i = phi i32 [ 4, %if.end.4.i.i.if.end9.i.i_crit_edge ], [ 3, %if.end.3.i.i.if.end9.i.i_crit_edge ], [ 2, %if.end.2.i.i.if.end9.i.i_crit_edge ], [ 1, %if.end.1.i.i.if.end9.i.i_crit_edge ]
  %.lcssa37.ph.i.i = phi i32 [ 19200000, %if.end.4.i.i.if.end9.i.i_crit_edge ], [ 13000000, %if.end.3.i.i.if.end9.i.i_crit_edge ], [ 12288000, %if.end.2.i.i.if.end9.i.i_crit_edge ], [ 12000000, %if.end.1.i.i.if.end9.i.i_crit_edge ]
  %sub.i.i = add nsw i32 %i.036.lcssa38.ph.i.i, -1
  %arrayidx10.i.i = getelementptr [5 x %struct.dmic_table], ptr @dmic_table, i32 0, i32 %sub.i.i
  %32 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx10.i.i, align 4
  %sub12.i.i = sub i32 %28, %33
  %sub15.i.i = sub nsw i32 %.lcssa37.ph.i.i, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12.i.i, i32 %sub15.i.i)
  %cmp16.i.i = icmp slt i32 %sub12.i.i, %sub15.i.i
  %sub.i.0.i.i = select i1 %cmp16.i.i, i32 %sub.i.i, i32 %i.036.lcssa38.ph.i.i
  br label %if.end.i

for.inc.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %28)
  %cmp2.1.i.i = icmp eq i32 %28, 12000000
  br i1 %cmp2.1.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %if.end.1.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %28)
  %cmp5.1.i.i = icmp ult i32 %28, 12000000
  br i1 %cmp5.1.i.i, label %if.end.1.i.i.if.end9.i.i_crit_edge, label %for.inc.1.i.i

if.end.1.i.i.if.end9.i.i_crit_edge:               ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

for.inc.1.i.i:                                    ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288000, i32 %28)
  %cmp2.2.i.i = icmp eq i32 %28, 12288000
  br i1 %cmp2.2.i.i, label %for.inc.1.i.i.if.end.i_crit_edge, label %if.end.2.i.i

for.inc.1.i.i.if.end.i_crit_edge:                 ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.2.i.i:                                     ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288000, i32 %28)
  %cmp5.2.i.i = icmp ult i32 %28, 12288000
  br i1 %cmp5.2.i.i, label %if.end.2.i.i.if.end9.i.i_crit_edge, label %for.inc.2.i.i

if.end.2.i.i.if.end9.i.i_crit_edge:               ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

for.inc.2.i.i:                                    ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13000000, i32 %28)
  %cmp2.3.i.i = icmp eq i32 %28, 13000000
  br i1 %cmp2.3.i.i, label %for.inc.2.i.i.if.end.i_crit_edge, label %if.end.3.i.i

for.inc.2.i.i.if.end.i_crit_edge:                 ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.3.i.i:                                     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13000000, i32 %28)
  %cmp5.3.i.i = icmp ult i32 %28, 13000000
  br i1 %cmp5.3.i.i, label %if.end.3.i.i.if.end9.i.i_crit_edge, label %for.inc.3.i.i

if.end.3.i.i.if.end9.i.i_crit_edge:               ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

for.inc.3.i.i:                                    ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %28)
  %cmp2.4.i.i = icmp eq i32 %28, 19200000
  br i1 %cmp2.4.i.i, label %for.inc.3.i.i.if.end.i_crit_edge, label %if.end.4.i.i

for.inc.3.i.i.if.end.i_crit_edge:                 ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.4.i.i:                                     ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %28)
  %cmp5.4.i.i = icmp ult i32 %28, 19200000
  br i1 %cmp5.4.i.i, label %if.end.4.i.i.if.end9.i.i_crit_edge, label %if.end.4.i.i.cleanup_crit_edge

if.end.4.i.i.cleanup_crit_edge:                   ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.4.i.i.if.end9.i.i_crit_edge:               ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

if.end.i:                                         ; preds = %for.inc.3.i.i.if.end.i_crit_edge, %for.inc.2.i.i.if.end.i_crit_edge, %for.inc.1.i.i.if.end.i_crit_edge, %for.inc.i.i.if.end.i_crit_edge, %if.end9.i.i, %if.end10.if.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 4, %for.inc.3.i.i.if.end.i_crit_edge ], [ 3, %for.inc.2.i.i.if.end.i_crit_edge ], [ 2, %for.inc.1.i.i.if.end.i_crit_edge ], [ 1, %for.inc.i.i.if.end.i_crit_edge ], [ 0, %if.end10.if.end.i_crit_edge ], [ %sub.i.0.i.i, %if.end9.i.i ]
  %div.neg.i.i = sdiv i32 %28, -2
  %sub.i1.i = add i32 %div.neg.i.i, %26
  %34 = tail call i32 @llvm.abs.i32(i32 %sub.i1.i, i1 false) #8
  %div.1.neg.i.i = sdiv i32 %28, -3
  %sub.1.i.i = add i32 %div.1.neg.i.i, %26
  %35 = tail call i32 @llvm.abs.i32(i32 %sub.1.i.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %34)
  %cmp3.1.i.i = icmp slt i32 %35, %34
  %divisor_index.1.1.i.i = zext i1 %cmp3.1.i.i to i32
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 %34) #8
  %div.2.neg.i.i = sdiv i32 %28, -4
  %sub.2.i.i = add i32 %div.2.neg.i.i, %26
  %37 = tail call i32 @llvm.abs.i32(i32 %sub.2.i.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %36)
  %cmp3.2.i.i = icmp slt i32 %37, %36
  %divisor_index.1.2.i.i = select i1 %cmp3.2.i.i, i32 2, i32 %divisor_index.1.1.i.i
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 %36) #8
  %div.3.neg.i.i = sdiv i32 %28, -5
  %sub.3.i.i = add i32 %div.3.neg.i.i, %26
  %39 = tail call i32 @llvm.abs.i32(i32 %sub.3.i.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %38)
  %cmp3.3.i.i = icmp slt i32 %39, %38
  %divisor_index.1.3.i.i = select i1 %cmp3.3.i.i, i32 3, i32 %divisor_index.1.2.i.i
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 %38) #8
  %div.4.neg.i.i = sdiv i32 %28, -6
  %sub.4.i.i = add i32 %div.4.neg.i.i, %26
  %41 = tail call i32 @llvm.abs.i32(i32 %sub.4.i.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %40)
  %cmp3.4.i.i = icmp slt i32 %41, %40
  %divisor_index.1.4.i.i = select i1 %cmp3.4.i.i, i32 4, i32 %divisor_index.1.3.i.i
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 %40) #8
  %div.5.neg.i.i = sdiv i32 %28, -8
  %sub.5.i.i = add i32 %div.5.neg.i.i, %26
  %43 = tail call i32 @llvm.abs.i32(i32 %sub.5.i.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %42)
  %cmp3.5.i.i = icmp slt i32 %43, %42
  %divisor_index.1.5.i.i = select i1 %cmp3.5.i.i, i32 5, i32 %divisor_index.1.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %30)
  %cmp5.not.i = icmp sgt i32 %30, 12000
  br i1 %cmp5.not.i, label %for.cond.1.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.1.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000, i32 %30)
  %cmp5.not.1.i = icmp ugt i32 %30, 24000
  br i1 %cmp5.not.1.i, label %for.cond.2.i, label %for.cond.1.i.for.end.i_crit_edge

for.cond.1.i.for.end.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 38050, i32 %30)
  %cmp5.not.2.i = icmp ugt i32 %30, 38050
  br i1 %cmp5.not.2.i, label %for.cond.3.i, label %for.cond.2.i.for.end.i_crit_edge

for.cond.2.i.for.end.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 46050, i32 %30)
  %cmp5.not.3.i = icmp ugt i32 %30, 46050
  br i1 %cmp5.not.3.i, label %for.cond.4.i, label %for.cond.3.i.for.end.i_crit_edge

for.cond.3.i.for.end.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 72000, i32 %30)
  %cmp5.not.4.i = icmp ugt i32 %30, 72000
  %spec.select.i = select i1 %cmp5.not.4.i, i32 5, i32 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.4.i, %for.cond.3.i.for.end.i_crit_edge, %for.cond.2.i.for.end.i_crit_edge, %for.cond.1.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ 1, %for.cond.1.i.for.end.i_crit_edge ], [ 2, %for.cond.2.i.for.end.i_crit_edge ], [ 3, %for.cond.3.i.for.end.i_crit_edge ], [ %spec.select.i, %for.cond.4.i ]
  %arrayidx9.i = getelementptr [5 x %struct.dmic_table], ptr @dmic_table, i32 0, i32 %retval.0.i.ph.i, i32 1, i32 %divisor_index.1.5.i.i
  %44 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx13.i = getelementptr [5 x %struct.dmic_table], ptr @dmic_table, i32 0, i32 %retval.0.i.ph.i, i32 1, i32 %divisor_index.1.5.i.i, i32 1, i32 %i.0.lcssa.i
  %46 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx13.i, align 4
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %5, align 4
  %shl.i = shl nuw nsw i32 %divisor_index.1.5.i.i, 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 19, i32 noundef 112, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %5, align 4
  %shl16.i = shl i32 %47, 4
  %or.i = or i32 %shl16.i, %45
  %call.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 20, i32 noundef 243, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %if.end.4.i.i.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %params_width.exit.cleanup_crit_edge ], [ 0, %if.end.4.i.i.cleanup_crit_edge ], [ 0, %for.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_dai_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr noundef %dai) #0 align 64 {
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
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.442)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge19
    i32 4, label %entry.sw.bb_crit_edge20
    i32 0, label %entry.sw.bb5_crit_edge
    i32 5, label %entry.sw.bb5_crit_edge21
    i32 3, label %entry.sw.bb5_crit_edge22
  ]

entry.sw.bb5_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb5_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge19, %entry.sw.bb_crit_edge20
  %master = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 23
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %master, align 4, !range !828
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %call2 = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %9 = load ptr, ptr @system_power_efficient_wq, align 4
  %pll_det_enable_work = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 13
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %pll_det_enable_work, i32 noundef 1) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge21, %entry.sw.bb5_crit_edge22
  %master6 = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 23
  %10 = ptrtoint ptr %master6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %master6, align 4, !range !828
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true8:                                   ; preds = %sw.bb5
  %call9 = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 1
  br i1 %cmp10, label %if.then11, label %land.lhs.true8.sw.epilog_crit_edge

land.lhs.true8.sw.epilog_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  %pll_det_disable_work = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %pll_det_disable_work) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %land.lhs.true8.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %if.then, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max98090_configure_bclk(ptr noundef %component) unnamed_addr #0 align 64 {
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
  %sysclk = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.419) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bclk = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end.do.end6_crit_edge, label %lor.lhs.false

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

lor.lhs.false:                                    ; preds = %if.end
  %lrclk = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.do.end6_crit_edge, label %if.end8

lor.lhs.false.do.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end6:                                          ; preds = %lor.lhs.false.do.end6_crit_edge, %if.end.do.end6_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.422) #11
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %call9 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 33) #8
  %and = and i32 %call9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %for.cond.preheader

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8
  %10 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sysclk, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.443)
  switch i32 %11, label %for.cond.preheader.for.inc.7_crit_edge [
    i32 12000000, label %land.lhs.true
    i32 13000000, label %land.lhs.true.2
    i32 16000000, label %land.lhs.true.4
    i32 19200000, label %land.lhs.true.6
  ]

for.cond.preheader.for.inc.7_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

land.lhs.true:                                    ; preds = %for.cond.preheader
  %13 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %14)
  %cmp17 = icmp eq i32 %14, 8000
  br i1 %cmp17, label %land.lhs.true.do.body19_crit_edge, label %land.lhs.true.1

land.lhs.true.do.body19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

do.body19:                                        ; preds = %land.lhs.true.7.do.body19_crit_edge, %land.lhs.true.6.do.body19_crit_edge, %land.lhs.true.5.do.body19_crit_edge, %land.lhs.true.4.do.body19_crit_edge, %land.lhs.true.3.do.body19_crit_edge, %land.lhs.true.2.do.body19_crit_edge, %land.lhs.true.1.do.body19_crit_edge, %land.lhs.true.do.body19_crit_edge
  %i.0478.lcssa = phi i32 [ 0, %land.lhs.true.do.body19_crit_edge ], [ 1, %land.lhs.true.1.do.body19_crit_edge ], [ 2, %land.lhs.true.2.do.body19_crit_edge ], [ 3, %land.lhs.true.3.do.body19_crit_edge ], [ 4, %land.lhs.true.4.do.body19_crit_edge ], [ 5, %land.lhs.true.5.do.body19_crit_edge ], [ 6, %land.lhs.true.6.do.body19_crit_edge ], [ 7, %land.lhs.true.7.do.body19_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_configure_bclk.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_configure_bclk, %if.then24)) #8
          to label %do.end28 [label %if.then24], !srcloc !826

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %add = or i32 %i.0478.lcssa, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_configure_bclk.__UNIQUE_ID_ddebug295, ptr noundef %16, ptr noundef nonnull @.str.424, i32 noundef %add) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body19
  %add29 = shl nuw nsw i32 %i.0478.lcssa, 4
  %shl = or i32 %add29, 128
  %call30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 28, i32 noundef 240, i32 noundef %shl) #8
  %call31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 28, i32 noundef 1, i32 noundef 0) #8
  br label %cleanup

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %17 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %18)
  %cmp17.1 = icmp eq i32 %18, 16000
  br i1 %cmp17.1, label %land.lhs.true.1.do.body19_crit_edge, label %land.lhs.true.1.for.inc.7_crit_edge

land.lhs.true.1.for.inc.7_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

land.lhs.true.1.do.body19_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

land.lhs.true.2:                                  ; preds = %for.cond.preheader
  %19 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %20)
  %cmp17.2 = icmp eq i32 %20, 8000
  br i1 %cmp17.2, label %land.lhs.true.2.do.body19_crit_edge, label %land.lhs.true.3

land.lhs.true.2.do.body19_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %21 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %22)
  %cmp17.3 = icmp eq i32 %22, 16000
  br i1 %cmp17.3, label %land.lhs.true.3.do.body19_crit_edge, label %land.lhs.true.3.for.inc.7_crit_edge

land.lhs.true.3.for.inc.7_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

land.lhs.true.3.do.body19_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

land.lhs.true.4:                                  ; preds = %for.cond.preheader
  %23 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %24)
  %cmp17.4 = icmp eq i32 %24, 8000
  br i1 %cmp17.4, label %land.lhs.true.4.do.body19_crit_edge, label %land.lhs.true.5

land.lhs.true.4.do.body19_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

land.lhs.true.5:                                  ; preds = %land.lhs.true.4
  %25 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %26)
  %cmp17.5 = icmp eq i32 %26, 16000
  br i1 %cmp17.5, label %land.lhs.true.5.do.body19_crit_edge, label %land.lhs.true.5.for.inc.7_crit_edge

land.lhs.true.5.for.inc.7_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

land.lhs.true.5.do.body19_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

land.lhs.true.6:                                  ; preds = %for.cond.preheader
  %27 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %28)
  %cmp17.6 = icmp eq i32 %28, 8000
  br i1 %cmp17.6, label %land.lhs.true.6.do.body19_crit_edge, label %land.lhs.true.7

land.lhs.true.6.do.body19_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

land.lhs.true.7:                                  ; preds = %land.lhs.true.6
  %29 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %30)
  %cmp17.7 = icmp eq i32 %30, 16000
  br i1 %cmp17.7, label %land.lhs.true.7.do.body19_crit_edge, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

land.lhs.true.7.do.body19_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %land.lhs.true.5.for.inc.7_crit_edge, %land.lhs.true.3.for.inc.7_crit_edge, %land.lhs.true.1.for.inc.7_crit_edge, %for.cond.preheader.for.inc.7_crit_edge
  %31 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sysclk, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.444)
  switch i32 %32, label %for.inc.7.for.inc99.3_crit_edge [
    i32 13000000, label %land.lhs.true39
    i32 19200000, label %land.lhs.true39.2
  ]

for.inc.7.for.inc99.3_crit_edge:                  ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc99.3

land.lhs.true39:                                  ; preds = %for.inc.7
  %34 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %35)
  %cmp42 = icmp eq i32 %35, 44100
  br i1 %cmp42, label %land.lhs.true39.do.body44_crit_edge, label %land.lhs.true39.1

land.lhs.true39.do.body44_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

do.body44:                                        ; preds = %land.lhs.true39.3.do.body44_crit_edge, %land.lhs.true39.2.do.body44_crit_edge, %land.lhs.true39.1.do.body44_crit_edge, %land.lhs.true39.do.body44_crit_edge
  %i.1480.lcssa = phi i32 [ 0, %land.lhs.true39.do.body44_crit_edge ], [ 1, %land.lhs.true39.1.do.body44_crit_edge ], [ 2, %land.lhs.true39.2.do.body44_crit_edge ], [ 3, %land.lhs.true39.3.do.body44_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_configure_bclk.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_configure_bclk, %if.then56)) #8
          to label %do.body61 [label %if.then56], !srcloc !826

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_configure_bclk.__UNIQUE_ID_ddebug296, ptr noundef %37, ptr noundef nonnull @.str.425) #8
  br label %do.body61

do.body61:                                        ; preds = %if.then56, %do.body44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98090_configure_bclk.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98090_configure_bclk, %if.then73)) #8
          to label %do.end79 [label %if.then73], !srcloc !826

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %arrayidx75 = getelementptr [4 x i64], ptr @ni_value, i32 0, i32 %i.1480.lcssa
  %40 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx75, align 8
  %arrayidx76 = getelementptr [4 x i64], ptr @mi_value, i32 0, i32 %i.1480.lcssa
  %42 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx76, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98090_configure_bclk.__UNIQUE_ID_ddebug297, ptr noundef %39, ptr noundef nonnull @.str.426, i32 noundef %i.1480.lcssa, i64 noundef %41, i64 noundef %43) #8
  br label %do.end79

do.end79:                                         ; preds = %if.then73, %do.body61
  %call80 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 28, i32 noundef 240, i32 noundef 0) #8
  %call81 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 28, i32 noundef 1, i32 noundef 1) #8
  %arrayidx82 = getelementptr [4 x i64], ptr @ni_value, i32 0, i32 %i.1480.lcssa
  %44 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx82, align 8
  %46 = trunc i64 %45 to i32
  %47 = lshr i32 %46, 8
  %conv = and i32 %47, 127
  %call84 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 29, i32 noundef %conv) #8
  %conv87 = and i32 %46, 255
  %call88 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 30, i32 noundef %conv87) #8
  %arrayidx89 = getelementptr [4 x i64], ptr @mi_value, i32 0, i32 %i.1480.lcssa
  %48 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx89, align 8
  %50 = trunc i64 %49 to i32
  %51 = lshr i32 %50, 8
  %conv92 = and i32 %51, 127
  %call93 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 31, i32 noundef %conv92) #8
  %conv96 = and i32 %50, 255
  %call97 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 32, i32 noundef %conv96) #8
  br label %cleanup

land.lhs.true39.1:                                ; preds = %land.lhs.true39
  %52 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %53)
  %cmp42.1 = icmp eq i32 %53, 48000
  br i1 %cmp42.1, label %land.lhs.true39.1.do.body44_crit_edge, label %land.lhs.true39.1.for.inc99.3_crit_edge

land.lhs.true39.1.for.inc99.3_crit_edge:          ; preds = %land.lhs.true39.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc99.3

land.lhs.true39.1.do.body44_crit_edge:            ; preds = %land.lhs.true39.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

land.lhs.true39.2:                                ; preds = %for.inc.7
  %54 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %55)
  %cmp42.2 = icmp eq i32 %55, 44100
  br i1 %cmp42.2, label %land.lhs.true39.2.do.body44_crit_edge, label %land.lhs.true39.3

land.lhs.true39.2.do.body44_crit_edge:            ; preds = %land.lhs.true39.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

land.lhs.true39.3:                                ; preds = %land.lhs.true39.2
  %56 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %57)
  %cmp42.3 = icmp eq i32 %57, 48000
  br i1 %cmp42.3, label %land.lhs.true39.3.do.body44_crit_edge, label %land.lhs.true39.3.for.inc99.3_crit_edge

land.lhs.true39.3.for.inc99.3_crit_edge:          ; preds = %land.lhs.true39.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc99.3

land.lhs.true39.3.do.body44_crit_edge:            ; preds = %land.lhs.true39.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

for.inc99.3:                                      ; preds = %land.lhs.true39.3.for.inc99.3_crit_edge, %land.lhs.true39.1.for.inc99.3_crit_edge, %for.inc.7.for.inc99.3_crit_edge
  %call102 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 28, i32 noundef 240, i32 noundef 0) #8
  %call103 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 28, i32 noundef 1, i32 noundef 0) #8
  %58 = ptrtoint ptr %lrclk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lrclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %59)
  %cmp105 = icmp ult i32 %59, 50000
  %mul = select i1 %cmp105, i64 6291456, i64 3145728
  %conv108 = zext i32 %59 to i64
  %mul109 = mul nuw nsw i64 %mul, %conv108
  %60 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul109)
  %cmp291 = icmp ult i64 %mul109, 4294967296
  br i1 %cmp291, label %if.then299, label %if.else305, !prof !830

if.then299:                                       ; preds = %for.inc99.3
  call void @__sanitizer_cov_trace_pc() #10
  %conv300 = trunc i64 %mul109 to i32
  %div303 = udiv i32 %conv300, %61
  %conv304 = zext i32 %div303 to i64
  br label %if.end309

if.else305:                                       ; preds = %for.inc99.3
  call void @__sanitizer_cov_trace_pc() #10
  %62 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %61, i64 %mul109) #12, !srcloc !831
  %asmresult1.i = extractvalue { i64, i64 } %62, 1
  br label %if.end309

if.end309:                                        ; preds = %if.else305, %if.then299
  %ni.0 = phi i64 [ %conv304, %if.then299 ], [ %asmresult1.i, %if.else305 ]
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.428) #11
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.431, i64 noundef %ni.0) #11
  %67 = trunc i64 %ni.0 to i32
  %68 = lshr i32 %67, 8
  %conv321 = and i32 %68, 127
  %call322 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 29, i32 noundef %conv321) #8
  %conv324 = and i32 %67, 255
  %call325 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 30, i32 noundef %conv324) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end309, %do.end79, %do.end28, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !827
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @regcache_mark_dirty(ptr noundef %4) #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 0, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %component.i = getelementptr inbounds %struct.max98090_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %component.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.71, i32 noundef %call.i) #11
  br label %max98090_reset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 20) #8
  br label %max98090_reset.exit

max98090_reset.exit:                              ; preds = %if.end.i, %do.end.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call3 = call i32 @regmap_read(ptr noundef %12, i32 noundef 1, ptr noundef nonnull %status) #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call5 = call i32 @regcache_sync(ptr noundef %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98090_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %component.i = getelementptr inbounds %struct.max98090_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.71, i32 noundef %call.i) #11
  br label %max98090_reset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 20) #8
  br label %max98090_reset.exit

max98090_reset.exit:                              ; preds = %if.end.i, %do.end.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @regcache_sync(ptr noundef %11) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 524)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 524)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24, !25, !26, !28, !29, !30, !31, !32, !34, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !85, !87, !88, !89, !90, !91, !92, !93, !95, !97, !98, !99, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !519, !521, !523, !525, !527, !529, !531, !533, !535, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !741, !742, !743, !745, !747, !749, !751, !752, !753, !754, !756, !757, !758, !759, !761, !762, !763, !765, !766, !767, !769, !770, !771, !772, !774, !775, !776, !778, !779, !781, !782, !784, !785, !787, !788, !789, !791, !792, !793, !795, !797, !799, !801, !803, !805, !807, !809, !811, !813, !815}
!llvm.module.flags = !{!817, !818, !819, !820, !821, !822, !823, !824}
!llvm.ident = !{!825}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/max98090.c", i32 2315, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @max98090_mic_detect.__UNIQUE_ID_ddebug309, !1, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!6 = !{ptr @__ksymtab_max98090_mic_detect, !7, !"__ksymtab_max98090_mic_detect", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/max98090.c", i32 2338, i32 1}
!8 = !{ptr @__initcall__kmod_snd_soc_max98090__312_2699_max98090_i2c_driver_init6, !9, !"__initcall__kmod_snd_soc_max98090__312_2699_max98090_i2c_driver_init6", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/max98090.c", i32 2699, i32 1}
!10 = !{ptr @__exitcall_max98090_i2c_driver_exit, !9, !"__exitcall_max98090_i2c_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description313, !12, !"__UNIQUE_ID_description313", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/max98090.c", i32 2701, i32 1}
!13 = !{ptr @__UNIQUE_ID_author314, !14, !"__UNIQUE_ID_author314", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/max98090.c", i32 2702, i32 1}
!15 = !{ptr @__UNIQUE_ID_file315, !16, !"__UNIQUE_ID_file315", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/max98090.c", i32 2703, i32 1}
!17 = !{ptr @__UNIQUE_ID_license316, !16, !"__UNIQUE_ID_license316", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/max98090.c", i32 2688, i32 11}
!20 = !{ptr @max98090_i2c_driver, !21, !"max98090_i2c_driver", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/max98090.c", i32 2686, i32 26}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/max98090.c", i32 2540, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @max98090_i2c_probe.__UNIQUE_ID_ddebug311, !23, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/max98090.c", i32 2551, i32 4}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @max98090_i2c_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @max98090_i2c_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/max98090.c", i32 2563, i32 47}
!34 = !{ptr @max98090_i2c_probe._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/max98090.c", i32 2568, i32 21}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/max98090.c", i32 2571, i32 3}
!39 = !{ptr @max98090_i2c_probe._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @max98090_i2c_probe._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/max98090.c", i32 2577, i32 3}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/max98090.c", i32 2579, i32 3}
!45 = !{ptr @max98090_i2c_probe._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @max98090_i2c_probe._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @max98090_regmap, !48, !"max98090_regmap", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/max98090.c", i32 2520, i32 35}
!49 = !{ptr @max98090_reg, !50, !"max98090_reg", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/max98090.c", i32 27, i32 33}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/max98090.c", i32 2239, i32 2}
!53 = !{ptr @max98090_interrupt.__UNIQUE_ID_ddebug303, !52, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/max98090.c", i32 2244, i32 3}
!56 = !{ptr @max98090_interrupt._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @max98090_interrupt._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/max98090.c", i32 2253, i32 3}
!60 = !{ptr @max98090_interrupt._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @max98090_interrupt._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/max98090.c", i32 2259, i32 2}
!64 = !{ptr @max98090_interrupt.__UNIQUE_ID_ddebug304, !63, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/max98090.c", i32 2268, i32 3}
!67 = !{ptr @max98090_interrupt._entry.25, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @max98090_interrupt._entry_ptr.27, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/max98090.c", i32 2271, i32 3}
!71 = !{ptr @max98090_interrupt.__UNIQUE_ID_ddebug305, !70, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/max98090.c", i32 2274, i32 3}
!74 = !{ptr @max98090_interrupt.__UNIQUE_ID_ddebug306, !73, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/max98090.c", i32 2279, i32 3}
!77 = !{ptr @max98090_interrupt.__UNIQUE_ID_ddebug307, !76, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/max98090.c", i32 2289, i32 3}
!80 = !{ptr @max98090_interrupt.__UNIQUE_ID_ddebug308, !79, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/max98090.c", i32 2292, i32 3}
!83 = !{ptr @max98090_interrupt._entry.32, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @max98090_interrupt._entry_ptr.34, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/max98090.c", i32 2116, i32 2}
!87 = !{ptr @max98090_pll_work._rs, !86, !"_rs", i1 false, i1 false}
!88 = !{ptr @__func__.max98090_pll_work, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @max98090_pll_work._entry, !86, !"_entry", i1 false, i1 false}
!92 = !{ptr @max98090_pll_work._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @soc_component_dev_max98090, !94, !"soc_component_dev_max98090", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/max98090.c", i32 2509, i32 46}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/max98090.c", i32 2384, i32 2}
!97 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @max98090_probe.__UNIQUE_ID_ddebug310, !96, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/max98090.c", i32 2386, i32 48}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/max98090.c", i32 2411, i32 3}
!103 = !{ptr @max98090_probe._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @max98090_probe._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/max98090.c", i32 2418, i32 3}
!107 = !{ptr @max98090_probe._entry.42, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @max98090_probe._entry_ptr.44, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/max98090.c", i32 2421, i32 3}
!111 = !{ptr @max98090_probe._entry.45, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @max98090_probe._entry_ptr.47, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/max98090.c", i32 2424, i32 3}
!115 = !{ptr @max98090_probe._entry.48, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @max98090_probe._entry_ptr.50, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/max98090.c", i32 2428, i32 3}
!119 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @max98090_probe._entry.51, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @max98090_probe._entry_ptr.54, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @max98090_probe.__key, !123, !"__key", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/max98090.c", i32 2434, i32 2}
!124 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @max98090_probe.__key.56, !123, !"__key", i1 false, i1 false}
!126 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @max98090_probe.__key.58, !128, !"__key", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/max98090.c", i32 2435, i32 2}
!129 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @max98090_probe.__key.60, !128, !"__key", i1 false, i1 false}
!131 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @max98090_probe.__key.62, !133, !"__key", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/max98090.c", i32 2437, i32 2}
!134 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/max98090.c", i32 2466, i32 49}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/max98090.c", i32 2469, i32 3}
!139 = !{ptr @max98090_probe._entry.65, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @max98090_probe._entry_ptr.67, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/max98090.c", i32 2471, i32 3}
!143 = !{ptr @max98090_probe._entry.68, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @max98090_probe._entry_ptr.70, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/max98090.c", i32 284, i32 3}
!147 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @max98090_reset._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @max98090_reset._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/max98090.c", i32 2172, i32 4}
!152 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @max98090_jack_work.__UNIQUE_ID_ddebug298, !151, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/max98090.c", i32 2184, i32 5}
!156 = !{ptr @max98090_jack_work.__UNIQUE_ID_ddebug299, !155, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/max98090.c", i32 2201, i32 4}
!159 = !{ptr @max98090_jack_work.__UNIQUE_ID_ddebug300, !158, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/max98090.c", i32 2210, i32 4}
!162 = !{ptr @max98090_jack_work.__UNIQUE_ID_ddebug301, !161, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/max98090.c", i32 2219, i32 4}
!165 = !{ptr @max98090_jack_work.__UNIQUE_ID_ddebug302, !164, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/max98090.c", i32 509, i32 2}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/max98090.c", i32 511, i32 2}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/max98090.c", i32 514, i32 2}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/max98090.c", i32 519, i32 2}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/max98090.c", i32 524, i32 2}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/max98090.c", i32 528, i32 2}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/max98090.c", i32 532, i32 2}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/max98090.c", i32 536, i32 2}
!182 = !{ptr @.str.93, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/max98090.c", i32 540, i32 2}
!184 = !{ptr @.str.95, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/max98090.c", i32 544, i32 2}
!186 = !{ptr @.str.97, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/max98090.c", i32 548, i32 2}
!188 = !{ptr @.str.99, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/max98090.c", i32 550, i32 2}
!190 = !{ptr @.str.101, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/max98090.c", i32 553, i32 2}
!192 = !{ptr @.str.103, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/max98090.c", i32 556, i32 2}
!194 = !{ptr @.str.105, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/max98090.c", i32 560, i32 2}
!196 = !{ptr @.str.107, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/max98090.c", i32 563, i32 2}
!198 = !{ptr @.str.109, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/max98090.c", i32 567, i32 2}
!200 = !{ptr @.str.110, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/max98090.c", i32 568, i32 2}
!202 = !{ptr @.str.112, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/max98090.c", i32 570, i32 2}
!204 = !{ptr @.str.113, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/max98090.c", i32 572, i32 2}
!206 = !{ptr @.str.115, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/max98090.c", i32 574, i32 2}
!208 = !{ptr @.str.117, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/max98090.c", i32 576, i32 2}
!210 = !{ptr @.str.119, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/max98090.c", i32 578, i32 2}
!212 = !{ptr @.str.121, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/max98090.c", i32 580, i32 2}
!214 = !{ptr @.str.122, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/max98090.c", i32 581, i32 2}
!216 = !{ptr @.str.124, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/max98090.c", i32 583, i32 2}
!218 = !{ptr @.str.126, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/max98090.c", i32 585, i32 2}
!220 = !{ptr @.str.128, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/max98090.c", i32 587, i32 2}
!222 = !{ptr @.str.130, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/max98090.c", i32 591, i32 2}
!224 = !{ptr @.str.132, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/max98090.c", i32 594, i32 2}
!226 = !{ptr @.str.134, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/max98090.c", i32 597, i32 2}
!228 = !{ptr @.str.136, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/max98090.c", i32 598, i32 2}
!230 = !{ptr @.str.138, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/max98090.c", i32 600, i32 2}
!232 = !{ptr @.str.140, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/max98090.c", i32 602, i32 2}
!234 = !{ptr @.str.142, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/max98090.c", i32 604, i32 2}
!236 = !{ptr @.str.144, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/max98090.c", i32 607, i32 2}
!238 = !{ptr @.str.146, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/max98090.c", i32 611, i32 2}
!240 = !{ptr @.str.148, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/max98090.c", i32 613, i32 2}
!242 = !{ptr @.str.149, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/max98090.c", i32 614, i32 2}
!244 = !{ptr @.str.150, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/max98090.c", i32 615, i32 2}
!246 = !{ptr @.str.152, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/max98090.c", i32 618, i32 2}
!248 = !{ptr @.str.153, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/max98090.c", i32 619, i32 2}
!250 = !{ptr @.str.154, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/max98090.c", i32 620, i32 2}
!252 = !{ptr @.str.156, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/max98090.c", i32 623, i32 2}
!254 = !{ptr @.str.158, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/max98090.c", i32 627, i32 2}
!256 = !{ptr @.str.159, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/max98090.c", i32 629, i32 2}
!258 = !{ptr @.str.160, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/max98090.c", i32 631, i32 2}
!260 = !{ptr @.str.162, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/max98090.c", i32 634, i32 2}
!262 = !{ptr @.str.164, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/max98090.c", i32 638, i32 2}
!264 = !{ptr @.str.166, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/max98090.c", i32 641, i32 2}
!266 = !{ptr @.str.168, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/max98090.c", i32 645, i32 2}
!268 = !{ptr @.str.170, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/max98090.c", i32 648, i32 2}
!270 = !{ptr @.str.172, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/max98090.c", i32 652, i32 2}
!272 = !{ptr @.str.174, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/max98090.c", i32 656, i32 2}
!274 = !{ptr @.str.176, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/max98090.c", i32 661, i32 2}
!276 = !{ptr @.str.178, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/max98090.c", i32 665, i32 2}
!278 = !{ptr @.str.180, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/max98090.c", i32 667, i32 2}
!280 = !{ptr @.str.182, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/max98090.c", i32 670, i32 2}
!282 = !{ptr @.str.184, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/max98090.c", i32 672, i32 2}
!284 = !{ptr @.str.186, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/max98090.c", i32 675, i32 2}
!286 = !{ptr @.str.188, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/max98090.c", i32 677, i32 2}
!288 = !{ptr @.str.190, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/max98090.c", i32 680, i32 2}
!290 = !{ptr @.str.192, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/max98090.c", i32 682, i32 2}
!292 = !{ptr @.str.194, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/max98090.c", i32 684, i32 2}
!294 = !{ptr @.str.196, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/max98090.c", i32 687, i32 2}
!296 = !{ptr @.str.198, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/max98090.c", i32 688, i32 2}
!298 = !{ptr @max98090_snd_controls, !299, !"max98090_snd_controls", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/max98090.c", i32 508, i32 38}
!300 = !{ptr @max98090_vcmbandgap_enum, !301, !"max98090_vcmbandgap_enum", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/max98090.c", i32 438, i32 8}
!302 = !{ptr @.str.200, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/max98090.c", i32 436, i32 4}
!304 = !{ptr @.str.201, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/max98090.c", i32 436, i32 17}
!306 = !{ptr @max98090_pwr_perf_text, !307, !"max98090_pwr_perf_text", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/max98090.c", i32 435, i32 20}
!308 = !{ptr @max98090_micboost_tlv, !309, !"max98090_micboost_tlv", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/max98090.c", i32 293, i32 14}
!310 = !{ptr @max98090_mic_tlv, !311, !"max98090_mic_tlv", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/max98090.c", i32 298, i32 14}
!312 = !{ptr @max98090_line_single_ended_tlv, !313, !"max98090_line_single_ended_tlv", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/max98090.c", i32 300, i32 14}
!314 = !{ptr @max98090_line_tlv, !315, !"max98090_line_tlv", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/max98090.c", i32 303, i32 14}
!316 = !{ptr @max98090_avg_tlv, !317, !"max98090_avg_tlv", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/max98090.c", i32 308, i32 14}
!318 = !{ptr @max98090_av_tlv, !319, !"max98090_av_tlv", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/max98090.c", i32 309, i32 14}
!320 = !{ptr @max98090_osr128_enum, !321, !"max98090_osr128_enum", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/max98090.c", i32 445, i32 8}
!322 = !{ptr @.str.202, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/max98090.c", i32 443, i32 47}
!324 = !{ptr @.str.203, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/max98090.c", i32 443, i32 56}
!326 = !{ptr @max98090_osr128_text, !327, !"max98090_osr128_text", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/max98090.c", i32 443, i32 20}
!328 = !{ptr @max98090_adchp_enum, !329, !"max98090_adchp_enum", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/max98090.c", i32 503, i32 8}
!330 = !{ptr @max98090_mode_enum, !331, !"max98090_mode_enum", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/max98090.c", i32 452, i32 8}
!332 = !{ptr @.str.204, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/max98090.c", i32 450, i32 45}
!334 = !{ptr @.str.205, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/max98090.c", i32 450, i32 54}
!336 = !{ptr @max98090_mode_text, !337, !"max98090_mode_text", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/max98090.c", i32 450, i32 20}
!338 = !{ptr @max98090_dv_tlv, !339, !"max98090_dv_tlv", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/max98090.c", i32 312, i32 14}
!340 = !{ptr @max98090_sdg_tlv, !341, !"max98090_sdg_tlv", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/max98090.c", i32 317, i32 14}
!342 = !{ptr @max98090_dvg_tlv, !343, !"max98090_dvg_tlv", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/max98090.c", i32 311, i32 14}
!344 = !{ptr @max98090_drcatk_enum, !345, !"max98090_drcatk_enum", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/max98090.c", i32 465, i32 8}
!346 = !{ptr @.str.206, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/max98090.c", i32 463, i32 4}
!348 = !{ptr @.str.207, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/max98090.c", i32 463, i32 13}
!350 = !{ptr @.str.208, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/max98090.c", i32 463, i32 20}
!352 = !{ptr @.str.209, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/max98090.c", i32 463, i32 27}
!354 = !{ptr @.str.210, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/max98090.c", i32 463, i32 35}
!356 = !{ptr @.str.211, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/max98090.c", i32 463, i32 43}
!358 = !{ptr @.str.212, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/max98090.c", i32 463, i32 51}
!360 = !{ptr @.str.213, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/max98090.c", i32 463, i32 60}
!362 = !{ptr @max98090_drcatk_text, !363, !"max98090_drcatk_text", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/max98090.c", i32 462, i32 20}
!364 = !{ptr @max98090_drcrls_enum, !365, !"max98090_drcrls_enum", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/max98090.c", i32 473, i32 8}
!366 = !{ptr @.str.214, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/max98090.c", i32 471, i32 4}
!368 = !{ptr @.str.215, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/max98090.c", i32 471, i32 10}
!370 = !{ptr @.str.216, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/max98090.c", i32 471, i32 16}
!372 = !{ptr @.str.217, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/max98090.c", i32 471, i32 22}
!374 = !{ptr @.str.218, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/max98090.c", i32 471, i32 28}
!376 = !{ptr @.str.219, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/max98090.c", i32 471, i32 36}
!378 = !{ptr @.str.220, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/max98090.c", i32 471, i32 45}
!380 = !{ptr @.str.221, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/max98090.c", i32 471, i32 55}
!382 = !{ptr @max98090_drcrls_text, !383, !"max98090_drcrls_text", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/max98090.c", i32 470, i32 20}
!384 = !{ptr @max98090_alcmakeup_tlv, !385, !"max98090_alcmakeup_tlv", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/max98090.c", i32 314, i32 14}
!386 = !{ptr @max98090_alccmp_enum, !387, !"max98090_alccmp_enum", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/max98090.c", i32 481, i32 8}
!388 = !{ptr @.str.222, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/max98090.c", i32 479, i32 4}
!390 = !{ptr @.str.223, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/max98090.c", i32 479, i32 11}
!392 = !{ptr @.str.224, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/max98090.c", i32 479, i32 20}
!394 = !{ptr @.str.225, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/max98090.c", i32 479, i32 27}
!396 = !{ptr @.str.226, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/max98090.c", i32 479, i32 34}
!398 = !{ptr @max98090_alccmp_text, !399, !"max98090_alccmp_text", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/max98090.c", i32 478, i32 20}
!400 = !{ptr @max98090_drcexp_enum, !401, !"max98090_drcexp_enum", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/max98090.c", i32 488, i32 8}
!402 = !{ptr @.str.227, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/max98090.c", i32 486, i32 54}
!404 = !{ptr @.str.228, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/max98090.c", i32 486, i32 61}
!406 = !{ptr @max98090_drcexp_text, !407, !"max98090_drcexp_text", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/max98090.c", i32 486, i32 20}
!408 = !{ptr @max98090_alccomp_tlv, !409, !"max98090_alccomp_tlv", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/max98090.c", i32 315, i32 14}
!410 = !{ptr @max98090_drcexp_tlv, !411, !"max98090_drcexp_tlv", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/max98090.c", i32 316, i32 14}
!412 = !{ptr @max98090_dac_perfmode_enum, !413, !"max98090_dac_perfmode_enum", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/max98090.c", i32 493, i32 8}
!414 = !{ptr @max98090_perf_pwr_text, !415, !"max98090_perf_pwr_text", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/max98090.c", i32 433, i32 20}
!416 = !{ptr @max98090_dachp_enum, !417, !"max98090_dachp_enum", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/max98090.c", i32 498, i32 8}
!418 = !{ptr @max98090_mixout_tlv, !419, !"max98090_mixout_tlv", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/max98090.c", i32 319, i32 14}
!420 = !{ptr @max98090_hp_tlv, !421, !"max98090_hp_tlv", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/max98090.c", i32 324, i32 14}
!422 = !{ptr @max98090_spk_tlv, !423, !"max98090_spk_tlv", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/max98090.c", i32 332, i32 14}
!424 = !{ptr @max98090_rcv_lout_tlv, !425, !"max98090_rcv_lout_tlv", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/max98090.c", i32 340, i32 14}
!426 = !{ptr @.str.229, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/max98090.c", i32 694, i32 2}
!428 = !{ptr @.str.231, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/max98090.c", i32 698, i32 2}
!430 = !{ptr @.str.232, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/max98090.c", i32 699, i32 2}
!432 = !{ptr @.str.234, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/max98090.c", i32 703, i32 2}
!434 = !{ptr @.str.236, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/max98090.c", i32 706, i32 2}
!436 = !{ptr @.str.238, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/max98090.c", i32 710, i32 2}
!438 = !{ptr @.str.240, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/max98090.c", i32 713, i32 2}
!440 = !{ptr @.str.242, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/max98090.c", i32 717, i32 2}
!442 = !{ptr @.str.244, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/max98090.c", i32 719, i32 2}
!444 = !{ptr @.str.246, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/max98090.c", i32 722, i32 2}
!446 = !{ptr @max98091_snd_controls, !447, !"max98091_snd_controls", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/max98090.c", i32 692, i32 38}
!448 = !{ptr @max98090_filter_dmic34mode_enum, !449, !"max98090_filter_dmic34mode_enum", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/max98090.c", i32 457, i32 8}
!450 = !{ptr @.str.248, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/max98090.c", i32 1060, i32 2}
!452 = !{ptr @.str.249, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/max98090.c", i32 1061, i32 2}
!454 = !{ptr @.str.250, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/max98090.c", i32 1062, i32 2}
!456 = !{ptr @.str.251, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/max98090.c", i32 1063, i32 2}
!458 = !{ptr @.str.252, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/soc/codecs/max98090.c", i32 1064, i32 2}
!460 = !{ptr @.str.253, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/max98090.c", i32 1065, i32 2}
!462 = !{ptr @.str.254, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/soc/codecs/max98090.c", i32 1066, i32 2}
!464 = !{ptr @.str.255, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/soc/codecs/max98090.c", i32 1067, i32 2}
!466 = !{ptr @.str.256, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/codecs/max98090.c", i32 1068, i32 2}
!468 = !{ptr @.str.257, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../sound/soc/codecs/max98090.c", i32 1069, i32 2}
!470 = !{ptr @.str.258, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/soc/codecs/max98090.c", i32 1070, i32 2}
!472 = !{ptr @.str.259, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/soc/codecs/max98090.c", i32 1071, i32 2}
!474 = !{ptr @.str.260, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../sound/soc/codecs/max98090.c", i32 1072, i32 2}
!476 = !{ptr @.str.261, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/max98090.c", i32 1074, i32 2}
!478 = !{ptr @.str.262, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/soc/codecs/max98090.c", i32 1076, i32 2}
!480 = !{ptr @.str.263, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/soc/codecs/max98090.c", i32 1078, i32 2}
!482 = !{ptr @.str.264, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/max98090.c", i32 1080, i32 2}
!484 = !{ptr @.str.265, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../sound/soc/codecs/max98090.c", i32 1082, i32 2}
!486 = !{ptr @.str.266, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/max98090.c", i32 1085, i32 2}
!488 = !{ptr @.str.267, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../sound/soc/codecs/max98090.c", i32 1088, i32 2}
!490 = !{ptr @.str.268, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/soc/codecs/max98090.c", i32 1095, i32 2}
!492 = !{ptr @.str.269, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../sound/soc/codecs/max98090.c", i32 1098, i32 2}
!494 = !{ptr @.str.270, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/max98090.c", i32 1101, i32 2}
!496 = !{ptr @.str.271, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../sound/soc/codecs/max98090.c", i32 1103, i32 2}
!498 = !{ptr @.str.272, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../sound/soc/codecs/max98090.c", i32 1107, i32 2}
!500 = !{ptr @.str.273, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/max98090.c", i32 1111, i32 2}
!502 = !{ptr @.str.274, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../sound/soc/codecs/max98090.c", i32 1115, i32 2}
!504 = !{ptr @.str.275, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../sound/soc/codecs/max98090.c", i32 1119, i32 2}
!506 = !{ptr @.str.276, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/soc/codecs/max98090.c", i32 1121, i32 2}
!508 = !{ptr @.str.277, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../sound/soc/codecs/max98090.c", i32 1124, i32 2}
!510 = !{ptr @.str.278, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../sound/soc/codecs/max98090.c", i32 1128, i32 2}
!512 = !{ptr @.str.279, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/soc/codecs/max98090.c", i32 1132, i32 2}
!514 = !{ptr @.str.280, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../sound/soc/codecs/max98090.c", i32 1135, i32 2}
!516 = !{ptr @.str.281, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../sound/soc/codecs/max98090.c", i32 1139, i32 2}
!518 = !{ptr @.str.282, !517, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @.str.283, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/max98090.c", i32 1141, i32 2}
!521 = !{ptr @.str.284, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../sound/soc/codecs/max98090.c", i32 1144, i32 2}
!523 = !{ptr @.str.285, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/max98090.c", i32 1147, i32 2}
!525 = !{ptr @.str.286, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../sound/soc/codecs/max98090.c", i32 1150, i32 2}
!527 = !{ptr @.str.287, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../sound/soc/codecs/max98090.c", i32 1153, i32 2}
!529 = !{ptr @.str.288, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../sound/soc/codecs/max98090.c", i32 1156, i32 2}
!531 = !{ptr @.str.289, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../sound/soc/codecs/max98090.c", i32 1159, i32 2}
!533 = !{ptr @.str.290, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../sound/soc/codecs/max98090.c", i32 1162, i32 2}
!535 = !{ptr @.str.291, !534, !"<string literal>", i1 false, i1 false}
!536 = !{ptr @.str.292, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/max98090.c", i32 1163, i32 2}
!538 = !{ptr @.str.293, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/max98090.c", i32 1165, i32 2}
!540 = !{ptr @.str.294, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/max98090.c", i32 1167, i32 2}
!542 = !{ptr @.str.295, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../sound/soc/codecs/max98090.c", i32 1170, i32 2}
!544 = !{ptr @.str.296, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../sound/soc/codecs/max98090.c", i32 1174, i32 2}
!546 = !{ptr @.str.297, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../sound/soc/codecs/max98090.c", i32 1178, i32 2}
!548 = !{ptr @.str.298, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../sound/soc/codecs/max98090.c", i32 1182, i32 2}
!550 = !{ptr @.str.299, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../sound/soc/codecs/max98090.c", i32 1186, i32 2}
!552 = !{ptr @.str.300, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../sound/soc/codecs/max98090.c", i32 1190, i32 2}
!554 = !{ptr @.str.301, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../sound/soc/codecs/max98090.c", i32 1194, i32 2}
!556 = !{ptr @.str.302, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../sound/soc/codecs/max98090.c", i32 1197, i32 2}
!558 = !{ptr @.str.303, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../sound/soc/codecs/max98090.c", i32 1200, i32 2}
!560 = !{ptr @.str.304, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../sound/soc/codecs/max98090.c", i32 1203, i32 2}
!562 = !{ptr @.str.305, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../sound/soc/codecs/max98090.c", i32 1205, i32 2}
!564 = !{ptr @.str.306, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../sound/soc/codecs/max98090.c", i32 1208, i32 2}
!566 = !{ptr @.str.307, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../sound/soc/codecs/max98090.c", i32 1210, i32 2}
!568 = !{ptr @.str.308, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../sound/soc/codecs/max98090.c", i32 1213, i32 2}
!570 = !{ptr @.str.309, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../sound/soc/codecs/max98090.c", i32 1215, i32 2}
!572 = !{ptr @.str.310, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../sound/soc/codecs/max98090.c", i32 1218, i32 2}
!574 = !{ptr @.str.311, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../sound/soc/codecs/max98090.c", i32 1219, i32 2}
!576 = !{ptr @.str.312, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../sound/soc/codecs/max98090.c", i32 1220, i32 2}
!578 = !{ptr @.str.313, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../sound/soc/codecs/max98090.c", i32 1221, i32 2}
!580 = !{ptr @.str.314, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../sound/soc/codecs/max98090.c", i32 1222, i32 2}
!582 = !{ptr @.str.315, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../sound/soc/codecs/max98090.c", i32 1223, i32 2}
!584 = !{ptr @max98090_dapm_widgets, !585, !"max98090_dapm_widgets", i1 false, i1 false}
!585 = !{!"../sound/soc/codecs/max98090.c", i32 1059, i32 41}
!586 = !{ptr @max98090_mic1_mux, !587, !"max98090_mic1_mux", i1 false, i1 false}
!587 = !{!"../sound/soc/codecs/max98090.c", i32 794, i32 38}
!588 = !{ptr @mic1_mux_enum, !589, !"mic1_mux_enum", i1 false, i1 false}
!589 = !{!"../sound/soc/codecs/max98090.c", i32 789, i32 8}
!590 = !{ptr @mic1_mux_text, !591, !"mic1_mux_text", i1 false, i1 false}
!591 = !{!"../sound/soc/codecs/max98090.c", i32 787, i32 20}
!592 = !{ptr @max98090_mic2_mux, !593, !"max98090_mic2_mux", i1 false, i1 false}
!593 = !{!"../sound/soc/codecs/max98090.c", i32 804, i32 38}
!594 = !{ptr @mic2_mux_enum, !595, !"mic2_mux_enum", i1 false, i1 false}
!595 = !{!"../sound/soc/codecs/max98090.c", i32 799, i32 8}
!596 = !{ptr @mic2_mux_text, !597, !"mic2_mux_text", i1 false, i1 false}
!597 = !{!"../sound/soc/codecs/max98090.c", i32 797, i32 20}
!598 = !{ptr @max98090_dmic_mux, !599, !"max98090_dmic_mux", i1 false, i1 false}
!599 = !{!"../sound/soc/codecs/max98090.c", i32 811, i32 38}
!600 = !{ptr @dmic_mux_enum, !601, !"dmic_mux_enum", i1 false, i1 false}
!601 = !{!"../sound/soc/codecs/max98090.c", i32 809, i32 8}
!602 = !{ptr @.str.317, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../sound/soc/codecs/max98090.c", i32 807, i32 40}
!604 = !{ptr @.str.318, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../sound/soc/codecs/max98090.c", i32 807, i32 47}
!606 = !{ptr @dmic_mux_text, !607, !"dmic_mux_text", i1 false, i1 false}
!607 = !{!"../sound/soc/codecs/max98090.c", i32 807, i32 20}
!608 = !{ptr @.str.319, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../sound/soc/codecs/max98090.c", i32 816, i32 2}
!610 = !{ptr @.str.321, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../sound/soc/codecs/max98090.c", i32 818, i32 2}
!612 = !{ptr @.str.323, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../sound/soc/codecs/max98090.c", i32 820, i32 2}
!614 = !{ptr @.str.325, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../sound/soc/codecs/max98090.c", i32 822, i32 2}
!616 = !{ptr @max98090_linea_mixer_controls, !617, !"max98090_linea_mixer_controls", i1 false, i1 false}
!617 = !{!"../sound/soc/codecs/max98090.c", i32 815, i32 38}
!618 = !{ptr @.str.327, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../sound/soc/codecs/max98090.c", i32 828, i32 2}
!620 = !{ptr @.str.329, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../sound/soc/codecs/max98090.c", i32 830, i32 2}
!622 = !{ptr @.str.331, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../sound/soc/codecs/max98090.c", i32 832, i32 2}
!624 = !{ptr @.str.333, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../sound/soc/codecs/max98090.c", i32 834, i32 2}
!626 = !{ptr @max98090_lineb_mixer_controls, !627, !"max98090_lineb_mixer_controls", i1 false, i1 false}
!627 = !{!"../sound/soc/codecs/max98090.c", i32 827, i32 38}
!628 = !{ptr @.str.335, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../sound/soc/codecs/max98090.c", i32 840, i32 2}
!630 = !{ptr @.str.339, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../sound/soc/codecs/max98090.c", i32 846, i32 2}
!632 = !{ptr @.str.341, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../sound/soc/codecs/max98090.c", i32 848, i32 2}
!634 = !{ptr @.str.343, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../sound/soc/codecs/max98090.c", i32 850, i32 2}
!636 = !{ptr @.str.345, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../sound/soc/codecs/max98090.c", i32 852, i32 2}
!638 = !{ptr @max98090_left_adc_mixer_controls, !639, !"max98090_left_adc_mixer_controls", i1 false, i1 false}
!639 = !{!"../sound/soc/codecs/max98090.c", i32 839, i32 38}
!640 = !{ptr @max98090_right_adc_mixer_controls, !641, !"max98090_right_adc_mixer_controls", i1 false, i1 false}
!641 = !{!"../sound/soc/codecs/max98090.c", i32 857, i32 38}
!642 = !{ptr @max98090_lbenl_mux, !643, !"max98090_lbenl_mux", i1 false, i1 false}
!643 = !{!"../sound/soc/codecs/max98090.c", i32 904, i32 38}
!644 = !{ptr @lbenl_mux_enum, !645, !"lbenl_mux_enum", i1 false, i1 false}
!645 = !{!"../sound/soc/codecs/max98090.c", i32 894, i32 8}
!646 = !{ptr @.str.354, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../sound/soc/codecs/max98090.c", i32 892, i32 40}
!648 = !{ptr @.str.355, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../sound/soc/codecs/max98090.c", i32 892, i32 50}
!650 = !{ptr @lben_mux_text, !651, !"lben_mux_text", i1 false, i1 false}
!651 = !{!"../sound/soc/codecs/max98090.c", i32 892, i32 20}
!652 = !{ptr @max98090_lbenr_mux, !653, !"max98090_lbenr_mux", i1 false, i1 false}
!653 = !{!"../sound/soc/codecs/max98090.c", i32 907, i32 38}
!654 = !{ptr @lbenr_mux_enum, !655, !"lbenr_mux_enum", i1 false, i1 false}
!655 = !{!"../sound/soc/codecs/max98090.c", i32 899, i32 8}
!656 = !{ptr @max98090_ltenl_mux, !657, !"max98090_ltenl_mux", i1 false, i1 false}
!657 = !{!"../sound/soc/codecs/max98090.c", i32 886, i32 38}
!658 = !{ptr @ltenl_mux_enum, !659, !"ltenl_mux_enum", i1 false, i1 false}
!659 = !{!"../sound/soc/codecs/max98090.c", i32 876, i32 8}
!660 = !{ptr @.str.356, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../sound/soc/codecs/max98090.c", i32 874, i32 50}
!662 = !{ptr @lten_mux_text, !663, !"lten_mux_text", i1 false, i1 false}
!663 = !{!"../sound/soc/codecs/max98090.c", i32 874, i32 20}
!664 = !{ptr @max98090_ltenr_mux, !665, !"max98090_ltenr_mux", i1 false, i1 false}
!665 = !{!"../sound/soc/codecs/max98090.c", i32 889, i32 38}
!666 = !{ptr @ltenr_mux_enum, !667, !"ltenr_mux_enum", i1 false, i1 false}
!667 = !{!"../sound/soc/codecs/max98090.c", i32 881, i32 8}
!668 = !{ptr @max98090_stenl_mux, !669, !"max98090_stenl_mux", i1 false, i1 false}
!669 = !{!"../sound/soc/codecs/max98090.c", i32 924, i32 38}
!670 = !{ptr @stenl_mux_enum, !671, !"stenl_mux_enum", i1 false, i1 false}
!671 = !{!"../sound/soc/codecs/max98090.c", i32 914, i32 8}
!672 = !{ptr @.str.357, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../sound/soc/codecs/max98090.c", i32 910, i32 51}
!674 = !{ptr @stenl_mux_text, !675, !"stenl_mux_text", i1 false, i1 false}
!675 = !{!"../sound/soc/codecs/max98090.c", i32 910, i32 20}
!676 = !{ptr @max98090_stenr_mux, !677, !"max98090_stenr_mux", i1 false, i1 false}
!677 = !{!"../sound/soc/codecs/max98090.c", i32 927, i32 38}
!678 = !{ptr @stenr_mux_enum, !679, !"stenr_mux_enum", i1 false, i1 false}
!679 = !{!"../sound/soc/codecs/max98090.c", i32 919, i32 8}
!680 = !{ptr @.str.358, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../sound/soc/codecs/max98090.c", i32 912, i32 51}
!682 = !{ptr @stenr_mux_text, !683, !"stenr_mux_text", i1 false, i1 false}
!683 = !{!"../sound/soc/codecs/max98090.c", i32 912, i32 20}
!684 = !{ptr @.str.359, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../sound/soc/codecs/max98090.c", i32 966, i32 2}
!686 = !{ptr @.str.361, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../sound/soc/codecs/max98090.c", i32 968, i32 2}
!688 = !{ptr @max98090_left_hp_mixer_controls, !689, !"max98090_left_hp_mixer_controls", i1 false, i1 false}
!689 = !{!"../sound/soc/codecs/max98090.c", i32 965, i32 38}
!690 = !{ptr @max98090_right_hp_mixer_controls, !691, !"max98090_right_hp_mixer_controls", i1 false, i1 false}
!691 = !{!"../sound/soc/codecs/max98090.c", i32 981, i32 38}
!692 = !{ptr @max98090_left_speaker_mixer_controls, !693, !"max98090_left_speaker_mixer_controls", i1 false, i1 false}
!693 = !{!"../sound/soc/codecs/max98090.c", i32 932, i32 19}
!694 = !{ptr @max98090_right_speaker_mixer_controls, !695, !"max98090_right_speaker_mixer_controls", i1 false, i1 false}
!695 = !{!"../sound/soc/codecs/max98090.c", i32 949, i32 19}
!696 = !{ptr @max98090_left_rcv_mixer_controls, !697, !"max98090_left_rcv_mixer_controls", i1 false, i1 false}
!697 = !{!"../sound/soc/codecs/max98090.c", i32 997, i32 38}
!698 = !{ptr @max98090_right_rcv_mixer_controls, !699, !"max98090_right_rcv_mixer_controls", i1 false, i1 false}
!699 = !{!"../sound/soc/codecs/max98090.c", i32 1013, i32 38}
!700 = !{ptr @max98090_linmod_mux, !701, !"max98090_linmod_mux", i1 false, i1 false}
!701 = !{!"../sound/soc/codecs/max98090.c", i32 1035, i32 38}
!702 = !{ptr @linmod_mux_enum, !703, !"linmod_mux_enum", i1 false, i1 false}
!703 = !{!"../sound/soc/codecs/max98090.c", i32 1030, i32 8}
!704 = !{ptr @.str.397, !705, !"<string literal>", i1 false, i1 false}
!705 = !{!"../sound/soc/codecs/max98090.c", i32 1028, i32 42}
!706 = !{ptr @.str.398, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../sound/soc/codecs/max98090.c", i32 1028, i32 55}
!708 = !{ptr @linmod_mux_text, !709, !"linmod_mux_text", i1 false, i1 false}
!709 = !{!"../sound/soc/codecs/max98090.c", i32 1028, i32 20}
!710 = !{ptr @max98090_mixhplsel_mux, !711, !"max98090_mixhplsel_mux", i1 false, i1 false}
!711 = !{!"../sound/soc/codecs/max98090.c", i32 1048, i32 38}
!712 = !{ptr @mixhplsel_mux_enum, !713, !"mixhplsel_mux_enum", i1 false, i1 false}
!713 = !{!"../sound/soc/codecs/max98090.c", i32 1043, i32 8}
!714 = !{ptr @.str.399, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../sound/soc/codecs/max98090.c", i32 1038, i32 44}
!716 = !{ptr @.str.400, !717, !"<string literal>", i1 false, i1 false}
!717 = !{!"../sound/soc/codecs/max98090.c", i32 1038, i32 56}
!718 = !{ptr @mixhpsel_mux_text, !719, !"mixhpsel_mux_text", i1 false, i1 false}
!719 = !{!"../sound/soc/codecs/max98090.c", i32 1038, i32 20}
!720 = !{ptr @max98090_mixhprsel_mux, !721, !"max98090_mixhprsel_mux", i1 false, i1 false}
!721 = !{!"../sound/soc/codecs/max98090.c", i32 1056, i32 38}
!722 = !{ptr @mixhprsel_mux_enum, !723, !"mixhprsel_mux_enum", i1 false, i1 false}
!723 = !{!"../sound/soc/codecs/max98090.c", i32 1051, i32 8}
!724 = !{ptr @max98090_dapm_routes, !725, !"max98090_dapm_routes", i1 false, i1 false}
!725 = !{!"../sound/soc/codecs/max98090.c", i32 1236, i32 40}
!726 = !{ptr @.str.401, !727, !"<string literal>", i1 false, i1 false}
!727 = !{!"../sound/soc/codecs/max98090.c", i32 1227, i32 2}
!728 = !{ptr @.str.402, !729, !"<string literal>", i1 false, i1 false}
!729 = !{!"../sound/soc/codecs/max98090.c", i32 1228, i32 2}
!730 = !{ptr @.str.403, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../sound/soc/codecs/max98090.c", i32 1230, i32 2}
!732 = !{ptr @.str.404, !733, !"<string literal>", i1 false, i1 false}
!733 = !{!"../sound/soc/codecs/max98090.c", i32 1232, i32 2}
!734 = !{ptr @max98091_dapm_widgets, !735, !"max98091_dapm_widgets", i1 false, i1 false}
!735 = !{!"../sound/soc/codecs/max98090.c", i32 1226, i32 41}
!736 = !{ptr @max98091_dapm_routes, !737, !"max98091_dapm_routes", i1 false, i1 false}
!737 = !{!"../sound/soc/codecs/max98090.c", i32 1418, i32 40}
!738 = !{ptr @.str.406, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../sound/soc/codecs/max98090.c", i32 1743, i32 5}
!740 = !{ptr @.str.407, !739, !"<string literal>", i1 false, i1 false}
!741 = !{ptr @max98090_set_bias_level._entry, !739, !"_entry", i1 false, i1 false}
!742 = !{ptr @max98090_set_bias_level._entry_ptr, !739, !"_entry_ptr", i1 false, i1 false}
!743 = !{ptr @.str.408, !744, !"<string literal>", i1 false, i1 false}
!744 = !{!"../sound/soc/codecs/max98090.c", i32 2356, i32 10}
!745 = !{ptr @max98090_dai, !746, !"max98090_dai", i1 false, i1 false}
!746 = !{!"../sound/soc/codecs/max98090.c", i32 2354, i32 34}
!747 = !{ptr @max98090_dai_ops, !748, !"max98090_dai_ops", i1 false, i1 false}
!748 = !{!"../sound/soc/codecs/max98090.c", i32 2343, i32 37}
!749 = !{ptr @.str.409, !750, !"<string literal>", i1 false, i1 false}
!750 = !{!"../sound/soc/codecs/max98090.c", i32 2011, i32 3}
!751 = !{ptr @.str.410, !750, !"<string literal>", i1 false, i1 false}
!752 = !{ptr @max98090_dai_set_sysclk._entry, !750, !"_entry", i1 false, i1 false}
!753 = !{ptr @max98090_dai_set_sysclk._entry_ptr, !750, !"_entry_ptr", i1 false, i1 false}
!754 = !{ptr @.str.411, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../sound/soc/codecs/max98090.c", i32 1618, i32 4}
!756 = !{ptr @.str.412, !755, !"<string literal>", i1 false, i1 false}
!757 = !{ptr @max98090_dai_set_fmt._entry, !755, !"_entry", i1 false, i1 false}
!758 = !{ptr @max98090_dai_set_fmt._entry_ptr, !755, !"_entry_ptr", i1 false, i1 false}
!759 = !{ptr @.str.414, !760, !"<string literal>", i1 false, i1 false}
!760 = !{!"../sound/soc/codecs/max98090.c", i32 1636, i32 4}
!761 = !{ptr @max98090_dai_set_fmt._entry.413, !760, !"_entry", i1 false, i1 false}
!762 = !{ptr @max98090_dai_set_fmt._entry_ptr.415, !760, !"_entry_ptr", i1 false, i1 false}
!763 = !{ptr @.str.417, !764, !"<string literal>", i1 false, i1 false}
!764 = !{!"../sound/soc/codecs/max98090.c", i32 1653, i32 4}
!765 = !{ptr @max98090_dai_set_fmt._entry.416, !764, !"_entry", i1 false, i1 false}
!766 = !{ptr @max98090_dai_set_fmt._entry_ptr.418, !764, !"_entry_ptr", i1 false, i1 false}
!767 = !{ptr @.str.419, !768, !"<string literal>", i1 false, i1 false}
!768 = !{!"../sound/soc/codecs/max98090.c", i32 1489, i32 3}
!769 = !{ptr @.str.420, !768, !"<string literal>", i1 false, i1 false}
!770 = !{ptr @max98090_configure_bclk._entry, !768, !"_entry", i1 false, i1 false}
!771 = !{ptr @max98090_configure_bclk._entry_ptr, !768, !"_entry_ptr", i1 false, i1 false}
!772 = !{ptr @.str.422, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../sound/soc/codecs/max98090.c", i32 1494, i32 3}
!774 = !{ptr @max98090_configure_bclk._entry.421, !773, !"_entry", i1 false, i1 false}
!775 = !{ptr @max98090_configure_bclk._entry_ptr.423, !773, !"_entry_ptr", i1 false, i1 false}
!776 = !{ptr @.str.424, !777, !"<string literal>", i1 false, i1 false}
!777 = !{!"../sound/soc/codecs/max98090.c", i32 1508, i32 4}
!778 = !{ptr @max98090_configure_bclk.__UNIQUE_ID_ddebug295, !777, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!779 = !{ptr @.str.425, !780, !"<string literal>", i1 false, i1 false}
!780 = !{!"../sound/soc/codecs/max98090.c", i32 1525, i32 4}
!781 = !{ptr @max98090_configure_bclk.__UNIQUE_ID_ddebug296, !780, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!782 = !{ptr @.str.426, !783, !"<string literal>", i1 false, i1 false}
!783 = !{!"../sound/soc/codecs/max98090.c", i32 1527, i32 4}
!784 = !{ptr @max98090_configure_bclk.__UNIQUE_ID_ddebug297, !783, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!785 = !{ptr @.str.428, !786, !"<string literal>", i1 false, i1 false}
!786 = !{!"../sound/soc/codecs/max98090.c", i32 1565, i32 2}
!787 = !{ptr @max98090_configure_bclk._entry.427, !786, !"_entry", i1 false, i1 false}
!788 = !{ptr @max98090_configure_bclk._entry_ptr.429, !786, !"_entry_ptr", i1 false, i1 false}
!789 = !{ptr @.str.431, !790, !"<string literal>", i1 false, i1 false}
!790 = !{!"../sound/soc/codecs/max98090.c", i32 1566, i32 2}
!791 = !{ptr @max98090_configure_bclk._entry.430, !790, !"_entry", i1 false, i1 false}
!792 = !{ptr @max98090_configure_bclk._entry_ptr.432, !790, !"_entry_ptr", i1 false, i1 false}
!793 = distinct !{null, !794, !"pclk_rates", i1 false, i1 false}
!794 = !{!"../sound/soc/codecs/max98090.c", i32 1456, i32 18}
!795 = distinct !{null, !796, !"lrclk_rates", i1 false, i1 false}
!796 = !{!"../sound/soc/codecs/max98090.c", i32 1461, i32 18}
!797 = distinct !{null, !798, !"user_pclk_rates", i1 false, i1 false}
!798 = !{!"../sound/soc/codecs/max98090.c", i32 1466, i32 18}
!799 = distinct !{null, !800, !"user_lrclk_rates", i1 false, i1 false}
!800 = !{!"../sound/soc/codecs/max98090.c", i32 1470, i32 18}
!801 = !{ptr @ni_value, !802, !"ni_value", i1 false, i1 false}
!802 = !{!"../sound/soc/codecs/max98090.c", i32 1474, i32 33}
!803 = !{ptr @mi_value, !804, !"mi_value", i1 false, i1 false}
!804 = !{!"../sound/soc/codecs/max98090.c", i32 1478, i32 33}
!805 = distinct !{null, !806, !"dmic_divisors", i1 false, i1 false}
!806 = !{!"../sound/soc/codecs/max98090.c", i32 1760, i32 18}
!807 = distinct !{null, !808, !"comp_lrclk_rates", i1 false, i1 false}
!808 = !{!"../sound/soc/codecs/max98090.c", i32 1762, i32 18}
!809 = !{ptr @dmic_table, !810, !"dmic_table", i1 false, i1 false}
!810 = !{!"../sound/soc/codecs/max98090.c", i32 1774, i32 32}
!811 = !{ptr @max98090_of_match, !812, !"max98090_of_match", i1 false, i1 false}
!812 = !{!"../sound/soc/codecs/max98090.c", i32 2670, i32 34}
!813 = !{ptr @max98090_pm, !814, !"max98090_pm", i1 false, i1 false}
!814 = !{!"../sound/soc/codecs/max98090.c", i32 2656, i32 32}
!815 = !{ptr @max98090_i2c_id, !816, !"max98090_i2c_id", i1 false, i1 false}
!816 = !{!"../sound/soc/codecs/max98090.c", i32 2662, i32 35}
!817 = !{i32 1, !"wchar_size", i32 2}
!818 = !{i32 1, !"min_enum_size", i32 4}
!819 = !{i32 8, !"branch-target-enforcement", i32 0}
!820 = !{i32 8, !"sign-return-address", i32 0}
!821 = !{i32 8, !"sign-return-address-all", i32 0}
!822 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!823 = !{i32 7, !"uwtable", i32 1}
!824 = !{i32 7, !"frame-pointer", i32 2}
!825 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!826 = !{i64 2148841316, i64 2148841321, i64 2148841334, i64 2148841378, i64 2148841412, i64 2148841433}
!827 = !{!"auto-init"}
!828 = !{i8 0, i8 2}
!829 = !{i32 0, i32 33}
!830 = !{!"branch_weights", i32 2000, i32 1}
!831 = !{i64 2148066989, i64 2148067269, i64 2148067603, i64 2148067937}
