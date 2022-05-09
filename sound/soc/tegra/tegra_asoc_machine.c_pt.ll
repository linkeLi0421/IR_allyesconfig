; ModuleID = '/llk/IR_all_yes/sound/soc/tegra/tegra_asoc_machine.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra_asoc_machine.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tegra_asoc_machine_init\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_asoc_machine_init\09\09\09\09"
module asm "\09.long\09__crc_tegra_asoc_machine_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_asoc_machine_init:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_asoc_machine_init\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_asoc_machine_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tegra_asoc_machine_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_asoc_machine_probe\09\09\09\09"
module asm "\09.long\09__crc_tegra_asoc_machine_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_asoc_machine_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_asoc_machine_probe\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_asoc_machine_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_jack_gpio = type { i32, i32, ptr, ptr, i32, i32, i32, i8, ptr, %struct.delayed_work, %struct.notifier_block, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_asoc_data = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.tegra_machine = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Headphones Jack\00", [16 x i8] zeroinitializer }, align 32
@tegra_machine_hp_jack = internal global { %struct.snd_soc_jack, [36 x i8] } zeroinitializer, align 32
@tegra_machine_hp_jack_pins = internal global { [2 x %struct.snd_soc_jack_pin], [56 x i8] } { [2 x %struct.snd_soc_jack_pin] [%struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.78, i32 1, i8 0 }, %struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.79, i32 1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Headphones Jack creation failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_asoc_machine_init\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sound/soc/tegra/tegra_asoc_machine.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_init._entry_ptr = internal global ptr @tegra_asoc_machine_init._entry, section ".printk_index", align 4
@tegra_machine_hp_jack_gpio = internal global { %struct.snd_soc_jack_gpio, [32 x i8] } { %struct.snd_soc_jack_gpio { i32 0, i32 0, ptr null, ptr @.str.80, i32 1, i32 0, i32 150, i8 0, ptr null, %struct.delayed_work zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HP GPIOs not added: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_init._entry_ptr.8 = internal global ptr @tegra_asoc_machine_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset Jack\00", [19 x i8] zeroinitializer }, align 32
@tegra_machine_headset_jack = internal global { %struct.snd_soc_jack, [36 x i8] } zeroinitializer, align 32
@tegra_machine_headset_jack_pins = internal global { [2 x %struct.snd_soc_jack_pin], [56 x i8] } { [2 x %struct.snd_soc_jack_pin] [%struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.81, i32 2, i8 0 }, %struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.82, i32 1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 163, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Headset Jack creation failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_init._entry_ptr.12 = internal global ptr @tegra_asoc_machine_init._entry.10, section ".printk_index", align 4
@tegra_machine_headset_jack_gpio = internal global { %struct.snd_soc_jack_gpio, [32 x i8] } { %struct.snd_soc_jack_gpio { i32 0, i32 0, ptr null, ptr @.str.83, i32 3, i32 0, i32 150, i8 0, ptr null, %struct.delayed_work zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Headset GPIOs not added: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_init._entry_ptr.15 = internal global ptr @tegra_asoc_machine_init._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Jack\00", [23 x i8] zeroinitializer }, align 32
@tegra_machine_mic_jack = internal global { %struct.snd_soc_jack, [36 x i8] } zeroinitializer, align 32
@tegra_machine_mic_jack_pins = internal global { [2 x %struct.snd_soc_jack_pin], [56 x i8] } { [2 x %struct.snd_soc_jack_pin] [%struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.16, i32 2, i8 0 }, %struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.81, i32 2, i8 0 }], [56 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Mic Jack creation failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_init._entry_ptr.19 = internal global ptr @tegra_asoc_machine_init._entry.17, section ".printk_index", align 4
@tegra_machine_mic_jack_gpio = internal global { %struct.snd_soc_jack_gpio, [32 x i8] } { %struct.snd_soc_jack_gpio { i32 0, i32 0, ptr null, ptr @.str.84, i32 2, i32 0, i32 150, i8 0, ptr null, %struct.delayed_work zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mic GPIOs not added: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_init._entry_ptr.22 = internal global ptr @tegra_asoc_machine_init._entry.20, section ".printk_index", align 4
@__kstrtab_tegra_asoc_machine_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_asoc_machine_init = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_asoc_machine_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_asoc_machine_init to i32), ptr @__kstrtab_tegra_asoc_machine_init, ptr @__kstrtabns_tegra_asoc_machine_init }, section "___ksymtab_gpl+tegra_asoc_machine_init", align 4
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,hp-mute\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvidia,hp-det\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,mic-det\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,spkr-en\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia,int-mic-en\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia,ext-mic-en\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvidia,model\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,audio-routing\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,ac97-controller\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidia,audio-codec\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvidia,i2s-controller\00", [42 x i8] zeroinitializer }, align 32
@tegra_machine_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.16 to i32) }], [96 x i8] zeroinitializer }, align 32
@tegra_machine_snd_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @tegra_machine_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tegra\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_a\00", [26 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 485, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't retrieve clk pll_a\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_asoc_machine_probe\00", [39 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry_ptr = internal global ptr @tegra_asoc_machine_probe._entry, section ".printk_index", align 4
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_a_out0\00", [21 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.3, i32 491, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't retrieve clk pll_a_out0\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry_ptr.41 = internal global ptr @tegra_asoc_machine_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't retrieve clk cdev1\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry_ptr.45 = internal global ptr @tegra_asoc_machine_probe._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"assigned-clock-parents\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,tegra20\00", [17 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.37, ptr @.str.3, i32 509, ptr @.str.50, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Configuring clocks for a legacy device-tree\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry_ptr.51 = internal global ptr @tegra_asoc_machine_probe._entry.48, section ".printk_index", align 4
@tegra_asoc_machine_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.37, ptr @.str.3, i32 510, ptr @.str.50, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Please update DT to use assigned-clock-parents\0A\00", [48 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry_ptr.54 = internal global ptr @tegra_asoc_machine_probe._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"extern1\00", [24 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.37, ptr @.str.3, i32 514, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't retrieve clk extern1\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry_ptr.58 = internal global ptr @tegra_asoc_machine_probe._entry.56, section ".printk_index", align 4
@tegra_asoc_machine_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.37, ptr @.str.3, i32 520, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Set parent failed for clk extern1\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry_ptr.61 = internal global ptr @tegra_asoc_machine_probe._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pmc_clk_out_1\00", [18 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.37, ptr @.str.3, i32 526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't retrieve pmc_clk_out_1\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry_ptr.65 = internal global ptr @tegra_asoc_machine_probe._entry.63, section ".printk_index", align 4
@tegra_asoc_machine_probe._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.37, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Set parent failed for pmc_clk_out_1\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry_ptr.68 = internal global ptr @tegra_asoc_machine_probe._entry.66, section ".printk_index", align 4
@tegra_asoc_machine_probe._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.37, ptr @.str.3, i32 546, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't set pll_a rate: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry_ptr.71 = internal global ptr @tegra_asoc_machine_probe._entry.69, section ".printk_index", align 4
@tegra_asoc_machine_probe._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.37, ptr @.str.3, i32 552, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't set pll_a_out0 rate: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry_ptr.74 = internal global ptr @tegra_asoc_machine_probe._entry.72, section ".printk_index", align 4
@tegra_asoc_machine_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.37, ptr @.str.3, i32 567, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't enable cdev1: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_asoc_machine_probe._entry_ptr.77 = internal global ptr @tegra_asoc_machine_probe._entry.75, section ".printk_index", align 4
@__kstrtab_tegra_asoc_machine_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_asoc_machine_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_asoc_machine_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_asoc_machine_probe to i32), ptr @__kstrtab_tegra_asoc_machine_probe, ptr @__kstrtabns_tegra_asoc_machine_probe }, section "___ksymtab_gpl+tegra_asoc_machine_probe", align 4
@__initcall__kmod_snd_soc_tegra_machine__238_889_tegra_asoc_machine_driver_init6 = internal global ptr @tegra_asoc_machine_driver_init, section ".initcall6.init", align 4
@tegra_asoc_machine_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_asoc_machine_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.119, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_machine_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_asoc_machine_driver_exit = internal global ptr @tegra_asoc_machine_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [64 x i8] c"snd_soc_tegra_machine.author=Anatol Pomozov <anatol@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [62 x i8] c"snd_soc_tegra_machine.author=Andrey Danin <danindrey@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [64 x i8] c"snd_soc_tegra_machine.author=Dmitry Osipenko <digetx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [59 x i8] c"snd_soc_tegra_machine.author=Ion Agorria <ion@agorria.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [60 x i8] c"snd_soc_tegra_machine.author=Leon Romanovsky <leon@leon.nu>\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [58 x i8] c"snd_soc_tegra_machine.author=Lucas Stach <dev@lynxeye.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [61 x i8] c"snd_soc_tegra_machine.author=Marc Dietrich <marvin24@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [67 x i8] c"snd_soc_tegra_machine.author=Marcel Ziswiler <marcel@ziswiler.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [65 x i8] c"snd_soc_tegra_machine.author=Mike Rapoport <mike@compulab.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [65 x i8] c"snd_soc_tegra_machine.author=Stephen Warren <swarren@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [67 x i8] c"snd_soc_tegra_machine.author=Svyatoslav Ryhel <clamor95@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [60 x i8] c"snd_soc_tegra_machine.description=Tegra machine ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [65 x i8] c"snd_soc_tegra_machine.file=sound/soc/tegra/snd-soc-tegra-machine\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [34 x i8] c"snd_soc_tegra_machine.license=GPL\00", section ".modinfo", align 1
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Headphone\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Headphones\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Headphones detection\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headset Mic\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headset Stereophone\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Headset detection\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mic detection\00", [18 x i8] zeroinitializer }, align 32
@tegra_machine_parse_phandle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 341, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Property '%s' missing or invalid\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_machine_parse_phandle\00", [36 x i8] zeroinitializer }, align 32
@tegra_machine_parse_phandle._entry_ptr = internal global ptr @tegra_machine_parse_phandle._entry, section ".printk_index", align 4
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Speakers Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Speakers\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Int Spk Switch\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Int Spk\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Int Mic Switch\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Int Mic\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Headset Mic Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Internal Mic 1 Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Internal Mic 1\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Internal Mic 2 Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Internal Mic 2\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Headphones Switch\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mic Jack Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Jack\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Digital Mic\00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Line In Jack\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Line In\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LineIn\00", [25 x i8] zeroinitializer }, align 32
@tegra_machine_dapm_widgets = internal constant { [16 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [704 x i8] } { [16 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @tegra_machine_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @tegra_machine_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @tegra_machine_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @tegra_machine_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @tegra_machine_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.16, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @tegra_machine_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [704 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,tegra30\00", [17 x i8] zeroinitializer }, align 32
@tegra_machine_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 280, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid sound rate: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_machine_hw_params\00", [40 x i8] zeroinitializer }, align 32
@tegra_machine_hw_params._entry_ptr = internal global ptr @tegra_machine_hw_params._entry, section ".printk_index", align 4
@tegra_machine_hw_params._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.109, ptr @.str.3, i32 293, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tegra_machine_hw_params._entry_ptr.111 = internal global ptr @tegra_machine_hw_params._entry.110, section ".printk_index", align 4
@tegra_machine_hw_params._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.109, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tegra_machine_hw_params._entry_ptr.113 = internal global ptr @tegra_machine_hw_params._entry.112, section ".printk_index", align 4
@tegra_machine_hw_params._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.109, ptr @.str.3, i32 307, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tegra_machine_hw_params._entry_ptr.115 = internal global ptr @tegra_machine_hw_params._entry.114, section ".printk_index", align 4
@tegra_machine_hw_params._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.109, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"codec_dai clock not set: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_machine_hw_params._entry_ptr.118 = internal global ptr @tegra_machine_hw_params._entry.116, section ".printk_index", align 4
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-audio\00", [20 x i8] zeroinitializer }, align 32
@tegra_machine_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-trimslice\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_trimslice_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-max98090\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_max98090_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-sgtl5000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_sgtl5000_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-wm9712\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_wm9712_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-wm8753\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_wm8753_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-rt5677\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_rt5677_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-rt5640\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_rt5640_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-alc5632\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_rt5632_data }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@tegra_trimslice_data = internal constant { %struct.tegra_asoc_data, [36 x i8] } { %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_128, ptr null, ptr null, ptr @snd_soc_tegra_trimslice, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@tegra_max98090_data = internal constant { %struct.tegra_asoc_data, [36 x i8] } { %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_12mhz, ptr null, ptr @.str.79, ptr @snd_soc_tegra_max98090, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0 }, [36 x i8] zeroinitializer }, align 32
@tegra_sgtl5000_data = internal constant { %struct.tegra_asoc_data, [36 x i8] } { %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_12mhz, ptr null, ptr null, ptr @snd_soc_tegra_sgtl5000, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@tegra_wm9712_data = internal constant { %struct.tegra_asoc_data, [36 x i8] } { %struct.tegra_asoc_data { ptr null, ptr @.str.140, ptr null, ptr @snd_soc_tegra_wm9712, i32 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1 }, [36 x i8] zeroinitializer }, align 32
@tegra_wm8753_data = internal constant { %struct.tegra_asoc_data, [36 x i8] } { %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_12mhz, ptr null, ptr null, ptr @snd_soc_tegra_wm8753, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@tegra_rt5677_data = internal constant { %struct.tegra_asoc_data, [36 x i8] } { %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_256, ptr null, ptr null, ptr @snd_soc_tegra_rt5677, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0 }, [36 x i8] zeroinitializer }, align 32
@tegra_rt5640_data = internal constant { %struct.tegra_asoc_data, [36 x i8] } { %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_256, ptr null, ptr null, ptr @snd_soc_tegra_rt5640, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 0, i8 1, i8 0 }, [36 x i8] zeroinitializer }, align 32
@tegra_rt5632_data = internal constant { %struct.tegra_asoc_data, [36 x i8] } { %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_512, ptr null, ptr null, ptr @snd_soc_tegra_rt5632, i32 0, i8 0, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@snd_soc_tegra_trimslice = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.120, ptr null, ptr null, ptr @.str.121, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_tlv320aic23_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr @trimslice_dapm_widgets, i32 2, ptr @trimslice_audio_map, i32 4, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 32, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra-trimslice\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"codec:tlv320aic23\00", [46 x i8] zeroinitializer }, align 32
@trimslice_audio_map = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TLV320AIC23\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIC23\00", [26 x i8] zeroinitializer }, align 32
@tlv320aic23_hifi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tlv320aic23_hifi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.125 }], [20 x i8] zeroinitializer }, align 32
@tlv320aic23_hifi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tegra_tlv320aic23_dai = internal global { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, [44 x i8] } { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.122, ptr @.str.123, ptr @tlv320aic23_hifi_cpus, i32 1, ptr @tlv320aic23_hifi_codecs, i32 1, ptr @tlv320aic23_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tlv320aic23-hifi\00", [47 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Line Out\00", [23 x i8] zeroinitializer }, align 32
@trimslice_dapm_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LOUT\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ROUT\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LLINEIN\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RLINEIN\00", [24 x i8] zeroinitializer }, align 32
@snd_soc_tegra_max98090 = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.132, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_max98090_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 32, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec:max98090\00", [17 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max98090\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max98090 PCM\00", [19 x i8] zeroinitializer }, align 32
@max98090_hifi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@max98090_hifi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.136 }], [20 x i8] zeroinitializer }, align 32
@max98090_hifi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tegra_max98090_dai = internal global { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, [44 x i8] } { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.133, ptr @.str.134, ptr @max98090_hifi_cpus, i32 1, ptr @max98090_hifi_codecs, i32 1, ptr @max98090_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @tegra_asoc_machine_init, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@snd_soc_tegra_sgtl5000 = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.137, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_sgtl5000_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 32, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"codec:sgtl5000\00", [17 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sgtl5000\00", [23 x i8] zeroinitializer }, align 32
@sgtl5000_hifi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@sgtl5000_hifi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.138 }], [20 x i8] zeroinitializer }, align 32
@sgtl5000_hifi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tegra_sgtl5000_dai = internal global { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, [44 x i8] } { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.138, ptr @.str.136, ptr @sgtl5000_hifi_cpus, i32 1, ptr @sgtl5000_hifi_codecs, i32 1, ptr @sgtl5000_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm9712-codec\00", [19 x i8] zeroinitializer }, align 32
@snd_soc_tegra_wm9712 = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.141, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_wm9712_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 32, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"codec:wm9712\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AC97 HiFi\00", [22 x i8] zeroinitializer }, align 32
@wm9712_hifi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@wm9712_hifi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.140, ptr null, ptr @.str.144 }], [20 x i8] zeroinitializer }, align 32
@wm9712_hifi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tegra_wm9712_dai = internal global { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, [44 x i8] } { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.142, ptr @.str.142, ptr @wm9712_hifi_cpus, i32 1, ptr @wm9712_hifi_codecs, i32 1, ptr @wm9712_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @tegra_wm9712_init, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm9712-hifi\00", [20 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@snd_soc_tegra_wm8753 = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.146, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_wm8753_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 32, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"codec:wm8753\00", [19 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM8753\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WM8753 PCM\00", [21 x i8] zeroinitializer }, align 32
@wm8753_hifi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@wm8753_hifi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.150 }], [20 x i8] zeroinitializer }, align 32
@wm8753_hifi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tegra_wm8753_dai = internal global { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, [44 x i8] } { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.147, ptr @.str.148, ptr @wm8753_hifi_cpus, i32 1, ptr @wm8753_hifi_codecs, i32 1, ptr @wm8753_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8753-hifi\00", [20 x i8] zeroinitializer }, align 32
@snd_soc_tegra_rt5677 = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.151, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_rt5677_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 32, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"codec:rt5677\00", [19 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RT5677\00", [25 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RT5677 PCM\00", [21 x i8] zeroinitializer }, align 32
@rt5677_aif1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@rt5677_aif1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.155 }], [20 x i8] zeroinitializer }, align 32
@rt5677_aif1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tegra_rt5677_dai = internal global { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, [44 x i8] } { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.152, ptr @.str.153, ptr @rt5677_aif1_cpus, i32 1, ptr @rt5677_aif1_codecs, i32 1, ptr @rt5677_aif1_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @tegra_rt5677_init, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5677-aif1\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS1\00", [23 x i8] zeroinitializer }, align 32
@snd_soc_tegra_rt5640 = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.157, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_rt5640_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 32, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"codec:rt5640\00", [19 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RT5640\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RT5640 PCM\00", [21 x i8] zeroinitializer }, align 32
@rt5640_aif1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@rt5640_aif1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.161 }], [20 x i8] zeroinitializer }, align 32
@rt5640_aif1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tegra_rt5640_dai = internal global { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, [44 x i8] } { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.158, ptr @.str.159, ptr @rt5640_aif1_cpus, i32 1, ptr @rt5640_aif1_codecs, i32 1, ptr @rt5640_aif1_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @tegra_asoc_machine_init, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5640-aif1\00", [20 x i8] zeroinitializer }, align 32
@snd_soc_tegra_rt5632 = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.162, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_rt5632_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 32, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"codec:rt5632\00", [19 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ALC5632\00", [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ALC5632 PCM\00", [20 x i8] zeroinitializer }, align 32
@rt5632_hifi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@rt5632_hifi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.166 }], [20 x i8] zeroinitializer }, align 32
@rt5632_hifi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tegra_rt5632_dai = internal global { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, [44 x i8] } { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.163, ptr @.str.164, ptr @rt5632_hifi_cpus, i32 1, ptr @rt5632_hifi_codecs, i32 1, ptr @rt5632_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @tegra_rt5677_init, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"alc5632-hifi\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.167 = internal global [13 x i64] [i64 11, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000]
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 134, i32 16 }
@___asan_gen_.171 = private unnamed_addr constant [22 x i8] c"tegra_machine_hp_jack\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 25, i32 28 }
@___asan_gen_.174 = private unnamed_addr constant [27 x i8] c"tegra_machine_hp_jack_pins\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 27, i32 32 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 142, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant [27 x i8] c"tegra_machine_hp_jack_gpio\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 32, i32 33 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 152, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 156, i32 37 }
@___asan_gen_.207 = private unnamed_addr constant [27 x i8] c"tegra_machine_headset_jack\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 40, i32 28 }
@___asan_gen_.210 = private unnamed_addr constant [32 x i8] c"tegra_machine_headset_jack_pins\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 42, i32 32 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 162, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant [32 x i8] c"tegra_machine_headset_jack_gpio\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 47, i32 33 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 172, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 176, i32 42 }
@___asan_gen_.231 = private unnamed_addr constant [23 x i8] c"tegra_machine_mic_jack\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 55, i32 28 }
@___asan_gen_.234 = private unnamed_addr constant [28 x i8] c"tegra_machine_mic_jack_pins\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 57, i32 32 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 182, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant [28 x i8] c"tegra_machine_mic_jack_gpio\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 62, i32 33 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 191, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 400, i32 39 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 405, i32 39 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 410, i32 39 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 415, i32 39 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 420, i32 39 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 425, i32 39 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 430, i32 41 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 435, i32 46 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 445, i32 46 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 452, i32 47 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 456, i32 45 }
@___asan_gen_.285 = private unnamed_addr constant [23 x i8] c"tegra_machine_controls\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 112, i32 38 }
@___asan_gen_.288 = private unnamed_addr constant [22 x i8] c"tegra_machine_snd_ops\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 324, i32 33 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 481, i32 23 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 483, i32 41 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 485, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 489, i32 46 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 491, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 495, i32 41 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 497, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 505, i32 38 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 506, i32 32 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 509, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 510, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 512, i32 35 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 514, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 520, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 524, i32 33 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 526, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 532, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 546, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 552, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 567, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [26 x i8] c"tegra_asoc_machine_driver\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 881, i32 31 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 28, i32 11 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 29, i32 11 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 33, i32 10 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 43, i32 11 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 44, i32 11 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 48, i32 10 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 63, i32 10 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 341, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 113, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 114, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 115, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 116, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 117, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 118, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 119, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 120, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 94, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 105, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 106, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 107, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 108, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 109, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant [27 x i8] c"tegra_machine_dapm_widgets\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 93, i32 41 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 261, i32 37 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 280, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 293, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 299, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 307, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 317, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 883, i32 11 }
@___asan_gen_.516 = private unnamed_addr constant [23 x i8] c"tegra_machine_of_match\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 868, i32 34 }
@___asan_gen_.519 = private unnamed_addr constant [21 x i8] c"tegra_trimslice_data\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 748, i32 37 }
@___asan_gen_.522 = private unnamed_addr constant [20 x i8] c"tegra_max98090_data\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 666, i32 37 }
@___asan_gen_.525 = private unnamed_addr constant [20 x i8] c"tegra_sgtl5000_data\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 700, i32 37 }
@___asan_gen_.528 = private unnamed_addr constant [18 x i8] c"tegra_wm9712_data\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 635, i32 37 }
@___asan_gen_.531 = private unnamed_addr constant [18 x i8] c"tegra_wm8753_data\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 602, i32 37 }
@___asan_gen_.534 = private unnamed_addr constant [18 x i8] c"tegra_rt5677_data\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 792, i32 37 }
@___asan_gen_.537 = private unnamed_addr constant [18 x i8] c"tegra_rt5640_data\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 826, i32 37 }
@___asan_gen_.540 = private unnamed_addr constant [18 x i8] c"tegra_rt5632_data\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 859, i32 37 }
@___asan_gen_.543 = private unnamed_addr constant [24 x i8] c"snd_soc_tegra_trimslice\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 736, i32 28 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 737, i32 10 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 738, i32 16 }
@___asan_gen_.552 = private unnamed_addr constant [20 x i8] c"trimslice_audio_map\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 714, i32 40 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 728, i32 10 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 729, i32 17 }
@___asan_gen_.561 = private unnamed_addr constant [22 x i8] c"tlv320aic23_hifi_cpus\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [24 x i8] c"tlv320aic23_hifi_codecs\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [27 x i8] c"tlv320aic23_hifi_platforms\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [22 x i8] c"tegra_tlv320aic23_dai\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 727, i32 32 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 722, i32 1 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 710, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant [23 x i8] c"trimslice_dapm_widgets\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 709, i32 41 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 715, i32 21 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 716, i32 21 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 718, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 719, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant [23 x i8] c"snd_soc_tegra_max98090\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 659, i32 28 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 660, i32 16 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 650, i32 10 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 651, i32 17 }
@___asan_gen_.606 = private unnamed_addr constant [19 x i8] c"max98090_hifi_cpus\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [21 x i8] c"max98090_hifi_codecs\00", align 1
@___asan_gen_.612 = private unnamed_addr constant [24 x i8] c"max98090_hifi_platforms\00", align 1
@___asan_gen_.615 = private unnamed_addr constant [19 x i8] c"tegra_max98090_dai\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 649, i32 32 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 644, i32 1 }
@___asan_gen_.621 = private unnamed_addr constant [23 x i8] c"snd_soc_tegra_sgtl5000\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 693, i32 28 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 694, i32 16 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 685, i32 10 }
@___asan_gen_.630 = private unnamed_addr constant [19 x i8] c"sgtl5000_hifi_cpus\00", align 1
@___asan_gen_.633 = private unnamed_addr constant [21 x i8] c"sgtl5000_hifi_codecs\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [24 x i8] c"sgtl5000_hifi_platforms\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 679, i32 1 }
@___asan_gen_.639 = private unnamed_addr constant [19 x i8] c"tegra_sgtl5000_dai\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 684, i32 32 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 638, i32 20 }
@___asan_gen_.645 = private unnamed_addr constant [21 x i8] c"snd_soc_tegra_wm9712\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 628, i32 28 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 629, i32 16 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 622, i32 10 }
@___asan_gen_.654 = private unnamed_addr constant [17 x i8] c"wm9712_hifi_cpus\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [19 x i8] c"wm9712_hifi_codecs\00", align 1
@___asan_gen_.660 = private unnamed_addr constant [22 x i8] c"wm9712_hifi_platforms\00", align 1
@___asan_gen_.663 = private unnamed_addr constant [17 x i8] c"tegra_wm9712_dai\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 621, i32 32 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 616, i32 1 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 613, i32 57 }
@___asan_gen_.672 = private unnamed_addr constant [21 x i8] c"snd_soc_tegra_wm8753\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 595, i32 28 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 596, i32 16 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 587, i32 10 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 588, i32 17 }
@___asan_gen_.684 = private unnamed_addr constant [17 x i8] c"wm8753_hifi_cpus\00", align 1
@___asan_gen_.687 = private unnamed_addr constant [19 x i8] c"wm8753_hifi_codecs\00", align 1
@___asan_gen_.690 = private unnamed_addr constant [22 x i8] c"wm8753_hifi_platforms\00", align 1
@___asan_gen_.693 = private unnamed_addr constant [17 x i8] c"tegra_wm8753_dai\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 586, i32 32 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 581, i32 1 }
@___asan_gen_.699 = private unnamed_addr constant [21 x i8] c"snd_soc_tegra_rt5677\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 785, i32 28 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 786, i32 16 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 776, i32 10 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 777, i32 17 }
@___asan_gen_.711 = private unnamed_addr constant [17 x i8] c"rt5677_aif1_cpus\00", align 1
@___asan_gen_.714 = private unnamed_addr constant [19 x i8] c"rt5677_aif1_codecs\00", align 1
@___asan_gen_.717 = private unnamed_addr constant [22 x i8] c"rt5677_aif1_platforms\00", align 1
@___asan_gen_.720 = private unnamed_addr constant [17 x i8] c"tegra_rt5677_dai\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 775, i32 32 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 770, i32 1 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 765, i32 45 }
@___asan_gen_.729 = private unnamed_addr constant [21 x i8] c"snd_soc_tegra_rt5640\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 819, i32 28 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 820, i32 16 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 810, i32 10 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 811, i32 17 }
@___asan_gen_.741 = private unnamed_addr constant [17 x i8] c"rt5640_aif1_cpus\00", align 1
@___asan_gen_.744 = private unnamed_addr constant [19 x i8] c"rt5640_aif1_codecs\00", align 1
@___asan_gen_.747 = private unnamed_addr constant [22 x i8] c"rt5640_aif1_platforms\00", align 1
@___asan_gen_.750 = private unnamed_addr constant [17 x i8] c"tegra_rt5640_dai\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 809, i32 32 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 804, i32 1 }
@___asan_gen_.756 = private unnamed_addr constant [21 x i8] c"snd_soc_tegra_rt5632\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 852, i32 28 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 853, i32 16 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 843, i32 10 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 844, i32 17 }
@___asan_gen_.768 = private unnamed_addr constant [17 x i8] c"rt5632_hifi_cpus\00", align 1
@___asan_gen_.771 = private unnamed_addr constant [19 x i8] c"rt5632_hifi_codecs\00", align 1
@___asan_gen_.774 = private unnamed_addr constant [22 x i8] c"rt5632_hifi_platforms\00", align 1
@___asan_gen_.777 = private unnamed_addr constant [17 x i8] c"tegra_rt5632_dai\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 842, i32 32 }
@___asan_gen_.780 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.781 = private constant [40 x i8] c"../sound/soc/tegra/tegra_asoc_machine.c\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.781, i32 837, i32 1 }
@llvm.compiler.used = appending global [248 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_tegra_asoc_machine_driver_exit, ptr @__initcall__kmod_snd_soc_tegra_machine__238_889_tegra_asoc_machine_driver_init6, ptr @__ksymtab_tegra_asoc_machine_init, ptr @__ksymtab_tegra_asoc_machine_probe, ptr @tegra_asoc_machine_driver_exit, ptr @tegra_asoc_machine_init._entry, ptr @tegra_asoc_machine_init._entry.10, ptr @tegra_asoc_machine_init._entry.13, ptr @tegra_asoc_machine_init._entry.17, ptr @tegra_asoc_machine_init._entry.20, ptr @tegra_asoc_machine_init._entry.6, ptr @tegra_asoc_machine_init._entry_ptr, ptr @tegra_asoc_machine_init._entry_ptr.12, ptr @tegra_asoc_machine_init._entry_ptr.15, ptr @tegra_asoc_machine_init._entry_ptr.19, ptr @tegra_asoc_machine_init._entry_ptr.22, ptr @tegra_asoc_machine_init._entry_ptr.8, ptr @tegra_asoc_machine_probe._entry, ptr @tegra_asoc_machine_probe._entry.39, ptr @tegra_asoc_machine_probe._entry.43, ptr @tegra_asoc_machine_probe._entry.48, ptr @tegra_asoc_machine_probe._entry.52, ptr @tegra_asoc_machine_probe._entry.56, ptr @tegra_asoc_machine_probe._entry.59, ptr @tegra_asoc_machine_probe._entry.63, ptr @tegra_asoc_machine_probe._entry.66, ptr @tegra_asoc_machine_probe._entry.69, ptr @tegra_asoc_machine_probe._entry.72, ptr @tegra_asoc_machine_probe._entry.75, ptr @tegra_asoc_machine_probe._entry_ptr, ptr @tegra_asoc_machine_probe._entry_ptr.41, ptr @tegra_asoc_machine_probe._entry_ptr.45, ptr @tegra_asoc_machine_probe._entry_ptr.51, ptr @tegra_asoc_machine_probe._entry_ptr.54, ptr @tegra_asoc_machine_probe._entry_ptr.58, ptr @tegra_asoc_machine_probe._entry_ptr.61, ptr @tegra_asoc_machine_probe._entry_ptr.65, ptr @tegra_asoc_machine_probe._entry_ptr.68, ptr @tegra_asoc_machine_probe._entry_ptr.71, ptr @tegra_asoc_machine_probe._entry_ptr.74, ptr @tegra_asoc_machine_probe._entry_ptr.77, ptr @tegra_machine_hw_params._entry, ptr @tegra_machine_hw_params._entry.110, ptr @tegra_machine_hw_params._entry.112, ptr @tegra_machine_hw_params._entry.114, ptr @tegra_machine_hw_params._entry.116, ptr @tegra_machine_hw_params._entry_ptr, ptr @tegra_machine_hw_params._entry_ptr.111, ptr @tegra_machine_hw_params._entry_ptr.113, ptr @tegra_machine_hw_params._entry_ptr.115, ptr @tegra_machine_hw_params._entry_ptr.118, ptr @tegra_machine_parse_phandle._entry, ptr @tegra_machine_parse_phandle._entry_ptr, ptr @.str, ptr @tegra_machine_hp_jack, ptr @tegra_machine_hp_jack_pins, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tegra_machine_hp_jack_gpio, ptr @.str.7, ptr @.str.9, ptr @tegra_machine_headset_jack, ptr @tegra_machine_headset_jack_pins, ptr @.str.11, ptr @tegra_machine_headset_jack_gpio, ptr @.str.14, ptr @.str.16, ptr @tegra_machine_mic_jack, ptr @tegra_machine_mic_jack_pins, ptr @.str.18, ptr @tegra_machine_mic_jack_gpio, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @tegra_machine_controls, ptr @tegra_machine_snd_ops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @tegra_asoc_machine_driver, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @tegra_machine_dapm_widgets, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.117, ptr @.str.119, ptr @tegra_machine_of_match, ptr @tegra_trimslice_data, ptr @tegra_max98090_data, ptr @tegra_sgtl5000_data, ptr @tegra_wm9712_data, ptr @tegra_wm8753_data, ptr @tegra_rt5677_data, ptr @tegra_rt5640_data, ptr @tegra_rt5632_data, ptr @snd_soc_tegra_trimslice, ptr @.str.120, ptr @.str.121, ptr @trimslice_audio_map, ptr @.str.122, ptr @.str.123, ptr @tlv320aic23_hifi_cpus, ptr @tlv320aic23_hifi_codecs, ptr @tlv320aic23_hifi_platforms, ptr @tegra_tlv320aic23_dai, ptr @.str.125, ptr @.str.126, ptr @trimslice_dapm_widgets, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @snd_soc_tegra_max98090, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @max98090_hifi_cpus, ptr @max98090_hifi_codecs, ptr @max98090_hifi_platforms, ptr @tegra_max98090_dai, ptr @.str.136, ptr @snd_soc_tegra_sgtl5000, ptr @.str.137, ptr @.str.138, ptr @sgtl5000_hifi_cpus, ptr @sgtl5000_hifi_codecs, ptr @sgtl5000_hifi_platforms, ptr @tegra_sgtl5000_dai, ptr @.str.140, ptr @snd_soc_tegra_wm9712, ptr @.str.141, ptr @.str.142, ptr @wm9712_hifi_cpus, ptr @wm9712_hifi_codecs, ptr @wm9712_hifi_platforms, ptr @tegra_wm9712_dai, ptr @.str.144, ptr @.str.145, ptr @snd_soc_tegra_wm8753, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @wm8753_hifi_cpus, ptr @wm8753_hifi_codecs, ptr @wm8753_hifi_platforms, ptr @tegra_wm8753_dai, ptr @.str.150, ptr @snd_soc_tegra_rt5677, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @rt5677_aif1_cpus, ptr @rt5677_aif1_codecs, ptr @rt5677_aif1_platforms, ptr @tegra_rt5677_dai, ptr @.str.155, ptr @.str.156, ptr @snd_soc_tegra_rt5640, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @rt5640_aif1_cpus, ptr @rt5640_aif1_codecs, ptr @rt5640_aif1_platforms, ptr @tegra_rt5640_dai, ptr @.str.161, ptr @snd_soc_tegra_rt5632, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @rt5632_hifi_cpus, ptr @rt5632_hifi_codecs, ptr @rt5632_hifi_platforms, ptr @tegra_rt5632_dai, ptr @.str.166], section "llvm.metadata"
@0 = internal global [205 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_hp_jack to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_hp_jack_pins to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_hp_jack_gpio to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_headset_jack to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_headset_jack_pins to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_headset_jack_gpio to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_mic_jack to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_mic_jack_pins to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_mic_jack_gpio to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_snd_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_probe._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_probe._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_probe._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_probe._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_asoc_machine_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_parse_phandle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_dapm_widgets to i32), i32 2880, i32 3584, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_hw_params._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_hw_params._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_hw_params._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_hw_params._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_machine_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_trimslice_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_max98090_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sgtl5000_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_wm9712_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_wm8753_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_rt5677_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_rt5640_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_rt5632_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_tegra_trimslice to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trimslice_audio_map to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic23_hifi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic23_hifi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic23_hifi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tlv320aic23_dai to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trimslice_dapm_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_tegra_max98090 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_hifi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_hifi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98090_hifi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_max98090_dai to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_tegra_sgtl5000 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_hifi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_hifi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_hifi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sgtl5000_dai to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_tegra_wm9712 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9712_hifi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9712_hifi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9712_hifi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_wm9712_dai to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_tegra_wm8753 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8753_hifi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8753_hifi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8753_hifi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_wm8753_dai to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_tegra_rt5677 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_aif1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_aif1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5677_aif1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_rt5677_dai to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_tegra_rt5640 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5640_aif1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5640_aif1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5640_aif1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_rt5640_dai to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_tegra_rt5632 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5632_hifi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5632_hifi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5632_hifi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_rt5632_dai to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_asoc_machine_init(ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %gpiod_hp_det = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %gpiod_hp_det to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpiod_hp_det, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end45_crit_edge, label %land.lhs.true

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

land.lhs.true:                                    ; preds = %entry
  %asoc = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asoc, align 4
  %add_hp_jack = getelementptr inbounds %struct.tegra_asoc_data, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %add_hp_jack to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add_hp_jack, align 2, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end21_crit_edge, label %if.then

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %land.lhs.true
  %hp_jack_name = getelementptr inbounds %struct.tegra_asoc_data, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %hp_jack_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hp_jack_name, align 4
  %tobool4.not = icmp eq ptr %11, null
  %.str. = select i1 %tobool4.not, ptr @.str, ptr %11
  %call8 = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull %.str., i32 noundef 1, ptr noundef nonnull @tegra_machine_hp_jack, ptr noundef nonnull @tegra_machine_hp_jack_pins, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1, i32 noundef %call8) #11
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %14 = ptrtoint ptr %gpiod_hp_det to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpiod_hp_det, align 4
  store ptr %15, ptr getelementptr inbounds (%struct.snd_soc_jack_gpio, ptr @tegra_machine_hp_jack_gpio, i32 0, i32 11), align 4
  %call13 = tail call i32 @snd_soc_jack_add_gpios(ptr noundef nonnull @tegra_machine_hp_jack, i32 noundef 1, ptr noundef nonnull @tegra_machine_hp_jack_gpio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.if.end21_crit_edge, label %do.end18

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.7, i32 noundef %call13) #11
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %if.end11.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge
  %18 = ptrtoint ptr %gpiod_hp_det to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %gpiod_hp_det, align 4
  %tobool23.not = icmp eq ptr %.pr, null
  br i1 %tobool23.not, label %if.end21.if.end45_crit_edge, label %land.lhs.true24

if.end21.if.end45_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

land.lhs.true24:                                  ; preds = %if.end21
  %19 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asoc, align 4
  %add_headset_jack = getelementptr inbounds %struct.tegra_asoc_data, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %add_headset_jack to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add_headset_jack, align 4, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool26.not = icmp eq i8 %22, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end45_crit_edge, label %if.then27

land.lhs.true24.if.end45_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then27:                                        ; preds = %land.lhs.true24
  %call28 = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef 3, ptr noundef nonnull @tegra_machine_headset_jack, ptr noundef nonnull @tegra_machine_headset_jack_pins, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef %call28) #11
  br label %cleanup

if.end35:                                         ; preds = %if.then27
  %25 = ptrtoint ptr %gpiod_hp_det to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpiod_hp_det, align 4
  store ptr %26, ptr getelementptr inbounds (%struct.snd_soc_jack_gpio, ptr @tegra_machine_headset_jack_gpio, i32 0, i32 11), align 4
  %call37 = tail call i32 @snd_soc_jack_add_gpios(ptr noundef nonnull @tegra_machine_headset_jack, i32 noundef 1, ptr noundef nonnull @tegra_machine_headset_jack_gpio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end35.if.end45_crit_edge, label %do.end42

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.14, i32 noundef %call37) #11
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %if.end35.if.end45_crit_edge, %land.lhs.true24.if.end45_crit_edge, %if.end21.if.end45_crit_edge, %entry.if.end45_crit_edge
  %gpiod_mic_det = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %gpiod_mic_det to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpiod_mic_det, align 4
  %tobool46.not = icmp eq ptr %30, null
  br i1 %tobool46.not, label %if.end45.cleanup_crit_edge, label %land.lhs.true47

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true47:                                  ; preds = %if.end45
  %asoc48 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 5
  %31 = ptrtoint ptr %asoc48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %asoc48, align 4
  %add_mic_jack = getelementptr inbounds %struct.tegra_asoc_data, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %add_mic_jack to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add_mic_jack, align 1, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool49.not = icmp eq i8 %34, 0
  br i1 %tobool49.not, label %land.lhs.true47.cleanup_crit_edge, label %if.then50

land.lhs.true47.cleanup_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %land.lhs.true47
  %35 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card1, align 4
  %call52 = tail call i32 @snd_soc_card_jack_new(ptr noundef %36, ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef nonnull @tegra_machine_mic_jack, ptr noundef nonnull @tegra_machine_mic_jack_pins, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.18, i32 noundef %call52) #11
  br label %cleanup

if.end59:                                         ; preds = %if.then50
  %39 = ptrtoint ptr %gpiod_mic_det to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gpiod_mic_det, align 4
  store ptr %40, ptr getelementptr inbounds (%struct.snd_soc_jack_gpio, ptr @tegra_machine_mic_jack_gpio, i32 0, i32 11), align 4
  %call61 = tail call i32 @snd_soc_jack_add_gpios(ptr noundef nonnull @tegra_machine_mic_jack, i32 noundef 1, ptr noundef nonnull @tegra_machine_mic_jack_gpio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end59.cleanup_crit_edge, label %do.end66

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.21, i32 noundef %call61) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %if.end59.cleanup_crit_edge, %do.end57, %land.lhs.true47.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %do.end33, %do.end
  %retval.0 = phi i32 [ %call8, %do.end ], [ %call28, %do.end33 ], [ %call52, %do.end57 ], [ 0, %if.end59.cleanup_crit_edge ], [ 0, %do.end66 ], [ 0, %land.lhs.true47.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_jack_add_gpios(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_asoc_machine_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup201_crit_edge, label %if.end

entry.cleanup201_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup201

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %card3 = getelementptr inbounds %struct.tegra_asoc_data, ptr %call2, i32 0, i32 3
  %0 = ptrtoint ptr %card3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card3, align 4
  %dev4 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev4, align 4
  %asoc5 = getelementptr inbounds %struct.tegra_machine, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %asoc5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %asoc5, align 4
  %mic_jack = getelementptr inbounds %struct.tegra_machine, ptr %call.i, i32 0, i32 13
  %4 = ptrtoint ptr %mic_jack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tegra_machine_mic_jack, ptr %mic_jack, align 4
  %hp_jack_gpio = getelementptr inbounds %struct.tegra_machine, ptr %call.i, i32 0, i32 14
  %5 = ptrtoint ptr %hp_jack_gpio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tegra_machine_hp_jack_gpio, ptr %hp_jack_gpio, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %6 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %drvdata.i, align 4
  %call6 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef 7) #8
  %gpiod_hp_mute = getelementptr inbounds %struct.tegra_machine, ptr %call.i, i32 0, i32 11
  %7 = ptrtoint ptr %gpiod_hp_mute to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %gpiod_hp_mute, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call6 to i32
  br label %cleanup201

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef 1) #8
  %gpiod_hp_det = getelementptr inbounds %struct.tegra_machine, ptr %call.i, i32 0, i32 12
  %9 = ptrtoint ptr %gpiod_hp_det to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %gpiod_hp_det, align 4
  %cmp.i344 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i344, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call11 to i32
  br label %cleanup201

if.end15:                                         ; preds = %if.end10
  %call16 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef 1) #8
  %gpiod_mic_det = getelementptr inbounds %struct.tegra_machine, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %gpiod_mic_det to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call16, ptr %gpiod_mic_det, align 4
  %cmp.i345 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i345, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call16 to i32
  br label %cleanup201

if.end20:                                         ; preds = %if.end15
  %call21 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef 3) #8
  %gpiod_spkr_en = getelementptr inbounds %struct.tegra_machine, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %gpiod_spkr_en to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call21, ptr %gpiod_spkr_en, align 4
  %cmp.i346 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i346, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call21 to i32
  br label %cleanup201

if.end25:                                         ; preds = %if.end20
  %call26 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef 3) #8
  %gpiod_int_mic_en = getelementptr inbounds %struct.tegra_machine, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %gpiod_int_mic_en to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call26, ptr %gpiod_int_mic_en, align 4
  %cmp.i347 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i347, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call26 to i32
  br label %cleanup201

if.end30:                                         ; preds = %if.end25
  %call31 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef 3) #8
  %gpiod_ext_mic_en = getelementptr inbounds %struct.tegra_machine, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %gpiod_ext_mic_en to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call31, ptr %gpiod_ext_mic_en, align 4
  %cmp.i348 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i348, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call31 to i32
  br label %cleanup201

if.end35:                                         ; preds = %if.end30
  %call36 = tail call i32 @snd_soc_of_parse_card_name(ptr noundef %1, ptr noundef nonnull @.str.29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup201_crit_edge

if.end35.cleanup201_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup201

if.end39:                                         ; preds = %if.end35
  %dapm_routes = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 37
  %19 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dapm_routes, align 4
  %tobool40.not = icmp eq ptr %20, null
  br i1 %tobool40.not, label %if.then41, label %if.end39.if.end46_crit_edge

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then41:                                        ; preds = %if.end39
  %call42 = tail call i32 @snd_soc_of_parse_audio_routing(ptr noundef %1, ptr noundef nonnull @.str.30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then41.if.end46_crit_edge, label %if.then41.cleanup201_crit_edge

if.then41.cleanup201_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup201

if.then41.if.end46_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.end46:                                         ; preds = %if.then41.if.end46_crit_edge, %if.end39.if.end46_crit_edge
  %set_ac97 = getelementptr inbounds %struct.tegra_asoc_data, ptr %call2, i32 0, i32 12
  %21 = ptrtoint ptr %set_ac97 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %set_ac97, align 1, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool47.not = icmp eq i8 %22, 0
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end46
  %codec_dev_name = getelementptr inbounds %struct.tegra_asoc_data, ptr %call2, i32 0, i32 1
  %23 = ptrtoint ptr %codec_dev_name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %codec_dev_name, align 4
  %call49 = tail call fastcc i32 @tegra_machine_register_codec(ptr noundef %dev1, ptr noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.then48.cleanup201_crit_edge

if.then48.cleanup201_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup201

if.end52:                                         ; preds = %if.then48
  %call53 = tail call fastcc ptr @tegra_machine_parse_phandle(ptr noundef %dev1, ptr noundef nonnull @.str.31)
  %cmp.i349 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i349, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call53 to i32
  br label %cleanup201

if.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 24
  %26 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dai_link, align 4
  %cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %27, i32 0, i32 2
  br label %if.end78

if.else:                                          ; preds = %if.end46
  %call60 = tail call fastcc ptr @tegra_machine_parse_phandle(ptr noundef %dev1, ptr noundef nonnull @.str.32)
  %cmp.i350 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i350, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call60 to i32
  br label %cleanup201

if.end64:                                         ; preds = %if.else
  %call65 = tail call fastcc ptr @tegra_machine_parse_phandle(ptr noundef %dev1, ptr noundef nonnull @.str.33)
  %cmp.i351 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i351, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call65 to i32
  br label %cleanup201

if.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %dai_link70 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 24
  %30 = ptrtoint ptr %dai_link70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dai_link70, align 4
  %cpus71 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %cpus71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cpus71, align 4
  %of_node72 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %of_node72 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call65, ptr %of_node72, align 4
  %35 = load ptr, ptr %dai_link70, align 4
  %codecs = getelementptr inbounds %struct.snd_soc_dai_link, ptr %35, i32 0, i32 4
  br label %if.end78

if.end78:                                         ; preds = %if.end69, %if.end57
  %codecs.sink = phi ptr [ %codecs, %if.end69 ], [ %cpus, %if.end57 ]
  %call60.sink = phi ptr [ %call60, %if.end69 ], [ %call53, %if.end57 ]
  %dai_link70.sink = phi ptr [ %dai_link70, %if.end69 ], [ %dai_link, %if.end57 ]
  %call65.sink = phi ptr [ %call65, %if.end69 ], [ %call53, %if.end57 ]
  %36 = ptrtoint ptr %codecs.sink to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %codecs.sink, align 4
  %of_node74 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %of_node74 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call60.sink, ptr %of_node74, align 4
  %39 = ptrtoint ptr %dai_link70.sink to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dai_link70.sink, align 4
  %platforms76 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %platforms76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %platforms76, align 4
  %of_node77 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %of_node77 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call65.sink, ptr %of_node77, align 4
  %add_common_controls = getelementptr inbounds %struct.tegra_asoc_data, ptr %call2, i32 0, i32 7
  %44 = ptrtoint ptr %add_common_controls to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add_common_controls, align 2, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool79.not = icmp eq i8 %45, 0
  br i1 %tobool79.not, label %if.end78.if.end81_crit_edge, label %if.then80

if.end78.if.end81_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %controls = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 33
  %46 = ptrtoint ptr %controls to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @tegra_machine_controls, ptr %controls, align 4
  %num_controls = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 34
  %47 = ptrtoint ptr %num_controls to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 8, ptr %num_controls, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end78.if.end81_crit_edge
  %add_common_dapm_widgets = getelementptr inbounds %struct.tegra_asoc_data, ptr %call2, i32 0, i32 6
  %48 = ptrtoint ptr %add_common_dapm_widgets to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add_common_dapm_widgets, align 1, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool82.not = icmp eq i8 %49, 0
  br i1 %tobool82.not, label %if.end81.if.end84_crit_edge, label %if.then83

if.end81.if.end84_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %dapm_widgets = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 35
  %50 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @tegra_machine_dapm_widgets, ptr %dapm_widgets, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 36
  %51 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 16, ptr %num_dapm_widgets, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end81.if.end84_crit_edge
  %add_common_snd_ops = getelementptr inbounds %struct.tegra_asoc_data, ptr %call2, i32 0, i32 8
  %52 = ptrtoint ptr %add_common_snd_ops to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add_common_snd_ops, align 1, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool85.not = icmp eq i8 %53, 0
  br i1 %tobool85.not, label %if.end84.if.end88_crit_edge, label %if.then86

if.end84.if.end88_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %dai_link87 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 24
  %54 = ptrtoint ptr %dai_link87 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dai_link87, align 4
  %ops = getelementptr inbounds %struct.snd_soc_dai_link, ptr %55, i32 0, i32 16
  %56 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @tegra_machine_snd_ops, ptr %ops, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end84.if.end88_crit_edge
  %owner = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 7
  %57 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %owner, align 4
  %tobool89.not = icmp eq ptr %58, null
  br i1 %tobool89.not, label %if.then90, label %if.end88.if.end92_crit_edge

if.end88.if.end92_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %owner, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end88.if.end92_crit_edge
  %driver_name = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %driver_name to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_name, align 4
  %tobool93.not = icmp eq ptr %61, null
  br i1 %tobool93.not, label %if.then94, label %if.end92.if.end96_crit_edge

if.end92.if.end96_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.34, ptr %driver_name, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end92.if.end96_crit_edge
  %call97 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.35) #8
  %clk_pll_a = getelementptr inbounds %struct.tegra_machine, ptr %call.i, i32 0, i32 1
  %63 = ptrtoint ptr %clk_pll_a to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call97, ptr %clk_pll_a, align 4
  %cmp.i352 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i352, label %do.end, label %if.end103

do.end:                                           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #11
  %64 = ptrtoint ptr %clk_pll_a to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk_pll_a, align 4
  %66 = ptrtoint ptr %65 to i32
  br label %cleanup201

if.end103:                                        ; preds = %if.end96
  %call104 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.38) #8
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call104, ptr %call.i, align 4
  %cmp.i353 = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i353, label %do.end110, label %if.end113

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40) #11
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  %70 = ptrtoint ptr %69 to i32
  br label %cleanup201

if.end113:                                        ; preds = %if.end103
  %call114 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.42) #8
  %clk_cdev1 = getelementptr inbounds %struct.tegra_machine, ptr %call.i, i32 0, i32 2
  %71 = ptrtoint ptr %clk_cdev1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call114, ptr %clk_cdev1, align 4
  %cmp.i354 = icmp ugt ptr %call114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i354, label %do.end120, label %if.end123

do.end120:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.44) #11
  %72 = ptrtoint ptr %clk_cdev1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk_cdev1, align 4
  %74 = ptrtoint ptr %73 to i32
  br label %cleanup201

if.end123:                                        ; preds = %if.end113
  %of_node124 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %75 = ptrtoint ptr %of_node124 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %of_node124, align 8
  %call125 = tail call ptr @of_find_property(ptr noundef %76, ptr noundef nonnull @.str.46, ptr noundef null) #8
  %tobool126.not = icmp eq ptr %call125, null
  br i1 %tobool126.not, label %land.lhs.true, label %if.end123.if.end168_crit_edge

if.end123.if.end168_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168

land.lhs.true:                                    ; preds = %if.end123
  %call127 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then129, label %land.lhs.true.if.end168_crit_edge

land.lhs.true.if.end168_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168

if.then129:                                       ; preds = %land.lhs.true
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.49) #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.53) #11
  %call136 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.55) #8
  %cmp.i355 = icmp ugt ptr %call136, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i355, label %do.end141, label %if.end143

do.end141:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.57) #11
  %77 = ptrtoint ptr %call136 to i32
  br label %cleanup201

if.end143:                                        ; preds = %if.then129
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  %call145 = tail call i32 @clk_set_parent(ptr noundef %call136, ptr noundef %79) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp = icmp slt i32 %call145, 0
  br i1 %cmp, label %do.end149, label %if.end150

do.end149:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60) #11
  br label %cleanup201

if.end150:                                        ; preds = %if.end143
  %call151 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.62) #8
  %cmp.i356 = icmp ugt ptr %call151, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i356, label %do.end156, label %if.end158

do.end156:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.64) #11
  %80 = ptrtoint ptr %call151 to i32
  br label %cleanup201

if.end158:                                        ; preds = %if.end150
  %call159 = tail call i32 @clk_set_parent(ptr noundef %call151, ptr noundef %call136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %do.end164, label %cleanup

do.end164:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.67) #11
  br label %cleanup201

cleanup:                                          ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %clk_cdev1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call151, ptr %clk_cdev1, align 4
  br label %if.end168

if.end168:                                        ; preds = %cleanup, %land.lhs.true.if.end168_crit_edge, %if.end123.if.end168_crit_edge
  %82 = ptrtoint ptr %set_ac97 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %set_ac97, align 1, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool170.not = icmp eq i8 %83, 0
  br i1 %tobool170.not, label %if.end168.if.end188_crit_edge, label %if.then171

if.end168.if.end188_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.then171:                                       ; preds = %if.end168
  %84 = ptrtoint ptr %clk_pll_a to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %clk_pll_a, align 4
  %call173 = tail call i32 @clk_set_rate(ptr noundef %85, i32 noundef 73728000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end179, label %do.end178

do.end178:                                        ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.70, i32 noundef %call173) #11
  br label %cleanup201

if.end179:                                        ; preds = %if.then171
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  %call181 = tail call i32 @clk_set_rate(ptr noundef %87, i32 noundef 24576000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end187, label %do.end186

do.end186:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.73, i32 noundef %call181) #11
  br label %cleanup201

if.end187:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  %set_baseclock = getelementptr inbounds %struct.tegra_machine, ptr %call.i, i32 0, i32 3
  %88 = ptrtoint ptr %set_baseclock to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 73728000, ptr %set_baseclock, align 4
  %set_mclk = getelementptr inbounds %struct.tegra_machine, ptr %call.i, i32 0, i32 4
  %89 = ptrtoint ptr %set_mclk to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 24576000, ptr %set_mclk, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %if.end168.if.end188_crit_edge
  %90 = ptrtoint ptr %clk_cdev1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clk_cdev1, align 4
  %call190 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %91)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end196, label %do.end195

do.end195:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.76, i32 noundef %call190) #11
  br label %cleanup201

if.end196:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  %call197 = tail call i32 @devm_snd_soc_register_card(ptr noundef %dev1, ptr noundef %1) #8
  br label %cleanup201

cleanup201:                                       ; preds = %if.end196, %do.end195, %do.end186, %do.end178, %do.end164, %do.end156, %do.end149, %do.end141, %do.end120, %do.end110, %do.end, %if.then67, %if.then62, %if.then55, %if.then48.cleanup201_crit_edge, %if.then41.cleanup201_crit_edge, %if.end35.cleanup201_crit_edge, %if.then33, %if.then28, %if.then23, %if.then18, %if.then13, %if.then8, %entry.cleanup201_crit_edge
  %retval.1 = phi i32 [ %8, %if.then8 ], [ %10, %if.then13 ], [ %12, %if.then18 ], [ %14, %if.then23 ], [ %16, %if.then28 ], [ %18, %if.then33 ], [ %25, %if.then55 ], [ %66, %do.end ], [ %70, %do.end110 ], [ %74, %do.end120 ], [ %call173, %do.end178 ], [ %call181, %do.end186 ], [ %call190, %do.end195 ], [ %28, %if.then62 ], [ %29, %if.then67 ], [ -12, %entry.cleanup201_crit_edge ], [ %call36, %if.end35.cleanup201_crit_edge ], [ %call42, %if.then41.cleanup201_crit_edge ], [ %call49, %if.then48.cleanup201_crit_edge ], [ %call197, %if.end196 ], [ %call159, %do.end164 ], [ %80, %do.end156 ], [ %call145, %do.end149 ], [ %77, %do.end141 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_machine_register_codec(ptr noundef %dev, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %properties.i.i, align 8
  %8 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @tegra_machine_unregister_codec, ptr noundef %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4.cleanup_crit_edge, label %if.then.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @platform_device_unregister(ptr noundef %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end4.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tegra_machine_parse_phandle(ptr noundef %dev, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef %name, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, ptr noundef %name) #11
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call.i14 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @tegra_machine_node_release, ptr noundef nonnull %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %4) #8
  %5 = inttoptr i32 %call.i14 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %5, %if.then4 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %4, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_asoc_machine_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_asoc_machine_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_asoc_machine_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_asoc_machine_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_machine_unregister_codec(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_device_unregister(ptr noundef %pdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_machine_node_release(ptr noundef %of_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @of_node_put(ptr noundef %of_node) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_machine_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm1 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm1, align 4
  %card = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call2 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(8) @.str.90) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call4 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(9) @.str.88) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %gpiod_spkr_en = getelementptr inbounds %struct.tegra_machine, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %gpiod_spkr_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpiod_spkr_en, align 4
  %and = and i32 %event, 3
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef %and) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %call7 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(9) @.str.16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %gpiod_ext_mic_en = getelementptr inbounds %struct.tegra_machine, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %gpiod_ext_mic_en to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpiod_ext_mic_en, align 4
  %and10 = and i32 %event, 3
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef %and10) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %call13 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(8) @.str.92) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %gpiod_int_mic_en = getelementptr inbounds %struct.tegra_machine, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %gpiod_int_mic_en to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpiod_int_mic_en, align 4
  %and16 = and i32 %event, 3
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef %and16) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end11.if.end17_crit_edge
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %call19 = tail call i32 @strcmp(ptr noundef %19, ptr noundef nonnull dereferenceable(10) @.str.78) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end17.if.then25_crit_edge, label %lor.lhs.false21

if.end17.if.then25_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

lor.lhs.false21:                                  ; preds = %if.end17
  %call23 = tail call i32 @strcmp(ptr noundef %19, ptr noundef nonnull dereferenceable(15) @.str.100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %lor.lhs.false21.if.then25_crit_edge, label %lor.lhs.false21.if.end28_crit_edge

lor.lhs.false21.if.end28_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

lor.lhs.false21.if.then25_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false21.if.then25_crit_edge, %if.end17.if.then25_crit_edge
  %gpiod_hp_mute = getelementptr inbounds %struct.tegra_machine, ptr %5, i32 0, i32 11
  %20 = ptrtoint ptr %gpiod_hp_mute to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpiod_hp_mute, align 4
  %and26 = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %lnot.ext = zext i1 %tobool27.not to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %21, i32 noundef %lnot.ext) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %lor.lhs.false21.if.end28_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_machine_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 57
  %10 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drvdata.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %asoc = getelementptr inbounds %struct.tegra_machine, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asoc, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call3 = tail call i32 %17(i32 noundef %13) #8
  %18 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asoc, align 4
  %mclk_id = getelementptr inbounds %struct.tegra_asoc_data, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %mclk_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mclk_id, align 4
  %22 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end [
    i32 11025, label %entry.sw.bb_crit_edge
    i32 22050, label %entry.sw.bb_crit_edge110
    i32 44100, label %entry.sw.bb_crit_edge111
    i32 88200, label %entry.sw.bb_crit_edge112
    i32 8000, label %entry.sw.bb11_crit_edge
    i32 16000, label %entry.sw.bb11_crit_edge113
    i32 32000, label %entry.sw.bb11_crit_edge114
    i32 48000, label %entry.sw.bb11_crit_edge115
    i32 64000, label %entry.sw.bb11_crit_edge116
    i32 96000, label %entry.sw.bb11_crit_edge117
  ]

entry.sw.bb11_crit_edge117:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb11_crit_edge116:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb11_crit_edge115:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb11_crit_edge114:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb11_crit_edge113:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

entry.sw.bb_crit_edge112:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge111:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge110:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge110, %entry.sw.bb_crit_edge111, %entry.sw.bb_crit_edge112
  %call5 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.else, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.107) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %. = select i1 %tobool7.not, i32 282240000, i32 564480000
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge113, %entry.sw.bb11_crit_edge114, %entry.sw.bb11_crit_edge115, %entry.sw.bb11_crit_edge116, %entry.sw.bb11_crit_edge117
  %call12 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else15, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else15:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.107) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  %.106 = select i1 %tobool17.not, i32 368640000, i32 552960000
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 5
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.108, i32 noundef %13) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.else15, %sw.bb11.sw.epilog_crit_edge, %if.else, %sw.bb.sw.epilog_crit_edge
  %new_baseclock.0 = phi i32 [ 56448000, %sw.bb.sw.epilog_crit_edge ], [ %., %if.else ], [ 73728000, %sw.bb11.sw.epilog_crit_edge ], [ %.106, %if.else15 ]
  %set_baseclock = getelementptr inbounds %struct.tegra_machine, ptr %11, i32 0, i32 3
  %25 = ptrtoint ptr %set_baseclock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %set_baseclock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_baseclock.0, i32 %26)
  %cmp.not = icmp eq i32 %new_baseclock.0, %26
  br i1 %cmp.not, label %lor.lhs.false, label %sw.epilog.if.then23_crit_edge

sw.epilog.if.then23_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

lor.lhs.false:                                    ; preds = %sw.epilog
  %set_mclk = getelementptr inbounds %struct.tegra_machine, ptr %11, i32 0, i32 4
  %27 = ptrtoint ptr %set_mclk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %set_mclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %28)
  %cmp22.not = icmp eq i32 %call3, %28
  br i1 %cmp22.not, label %lor.lhs.false.if.end53_crit_edge, label %lor.lhs.false.if.then23_crit_edge

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

lor.lhs.false.if.end53_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %sw.epilog.if.then23_crit_edge
  %29 = ptrtoint ptr %set_baseclock to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %set_baseclock, align 4
  %set_mclk25 = getelementptr inbounds %struct.tegra_machine, ptr %11, i32 0, i32 4
  %30 = ptrtoint ptr %set_mclk25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %set_mclk25, align 4
  %clk_cdev1 = getelementptr inbounds %struct.tegra_machine, ptr %11, i32 0, i32 2
  %31 = ptrtoint ptr %clk_cdev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_cdev1, align 4
  tail call void @clk_disable(ptr noundef %32) #8
  tail call void @clk_unprepare(ptr noundef %32) #8
  %clk_pll_a = getelementptr inbounds %struct.tegra_machine, ptr %11, i32 0, i32 1
  %33 = ptrtoint ptr %clk_pll_a to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk_pll_a, align 4
  %call26 = tail call i32 @clk_set_rate(ptr noundef %34, i32 noundef %new_baseclock.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 5
  %35 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.70, i32 noundef %call26) #11
  br label %cleanup

if.end33:                                         ; preds = %if.then23
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %11, align 4
  %call34 = tail call i32 @clk_set_rate(ptr noundef %38, i32 noundef %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %dev40 = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 5
  %39 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.73, i32 noundef %call34) #11
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %41 = ptrtoint ptr %clk_cdev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk_cdev1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end41.do.end48_crit_edge

if.end41.do.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

if.end.i:                                         ; preds = %if.end41
  %call1.i = tail call i32 @clk_enable(ptr noundef %42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end50, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %42) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then3.i, %if.end41.do.end48_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end41.do.end48_crit_edge ]
  %dev49 = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 5
  %43 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.76, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

if.end50:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %set_baseclock to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %new_baseclock.0, ptr %set_baseclock, align 4
  %46 = ptrtoint ptr %set_mclk25 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call3, ptr %set_mclk25, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %lor.lhs.false.if.end53_crit_edge
  %call54 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef %21, i32 noundef %call3, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.end59, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %dev60 = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 5
  %47 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.117, i32 noundef %call54) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.end53.cleanup_crit_edge, %do.end48, %do.end39, %do.end31, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call26, %do.end31 ], [ %call34, %do.end39 ], [ %retval.0.i.ph, %do.end48 ], [ %call54, %do.end59 ], [ 0, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_machine_mclk_rate_128(i32 noundef %srate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %srate, 7
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_machine_mclk_rate_12mhz(i32 noundef %srate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %srate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %srate, label %sw.default [
    i32 8000, label %entry.sw.epilog_crit_edge
    i32 16000, label %entry.sw.epilog_crit_edge2
    i32 24000, label %entry.sw.epilog_crit_edge3
    i32 32000, label %entry.sw.epilog_crit_edge4
    i32 48000, label %entry.sw.epilog_crit_edge5
    i32 64000, label %entry.sw.epilog_crit_edge6
    i32 96000, label %entry.sw.epilog_crit_edge7
    i32 11025, label %entry.sw.bb1_crit_edge
    i32 22050, label %entry.sw.bb1_crit_edge8
    i32 44100, label %entry.sw.bb1_crit_edge9
    i32 88200, label %entry.sw.bb1_crit_edge10
  ]

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge2:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge8, %entry.sw.bb1_crit_edge9, %entry.sw.bb1_crit_edge10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge2, %entry.sw.epilog_crit_edge3, %entry.sw.epilog_crit_edge4, %entry.sw.epilog_crit_edge5, %entry.sw.epilog_crit_edge6, %entry.sw.epilog_crit_edge7
  %mclk.0 = phi i32 [ 12000000, %sw.default ], [ 11289600, %sw.bb1 ], [ 12288000, %entry.sw.epilog_crit_edge ], [ 12288000, %entry.sw.epilog_crit_edge2 ], [ 12288000, %entry.sw.epilog_crit_edge3 ], [ 12288000, %entry.sw.epilog_crit_edge4 ], [ 12288000, %entry.sw.epilog_crit_edge5 ], [ 12288000, %entry.sw.epilog_crit_edge6 ], [ 12288000, %entry.sw.epilog_crit_edge7 ]
  ret i32 %mclk.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_wm9712_init(ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dapm = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 50
  %call = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm, ptr noundef nonnull @.str.145) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_machine_mclk_rate_256(i32 noundef %srate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %srate, 8
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_rt5677_init(ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %call = tail call i32 @tegra_asoc_machine_init(ptr noundef %rtd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dapm = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 50
  %call2 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm, ptr noundef nonnull @.str.156) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_machine_mclk_rate_512(i32 noundef %srate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %srate, 9
  ret i32 %mul
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 205)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 205)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !71, !72, !73, !75, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !100, !101, !102, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !191, !192, !193, !195, !196, !198, !199, !201, !202, !204, !206, !207, !209, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !237, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !275, !276, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !306, !307, !308, !310, !312, !314, !316, !318, !320, !321, !322, !324, !326, !328, !330, !332, !334, !336, !337, !338, !339, !341, !343, !345, !347, !349, !351, !353, !355, !356, !357, !358, !360, !362, !364, !366, !368, !370, !372, !373, !374, !375, !377, !379, !381, !383, !385, !387, !389, !391, !392, !393, !394, !396, !398, !400, !402, !404, !406, !408, !409, !410}
!llvm.module.flags = !{!411, !412, !413, !414, !415, !416, !417, !418}
!llvm.ident = !{!419}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 134, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 142, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tegra_asoc_machine_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @tegra_asoc_machine_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 152, i32 4}
!12 = !{ptr @tegra_asoc_machine_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @tegra_asoc_machine_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 156, i32 37}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 162, i32 4}
!18 = !{ptr @tegra_asoc_machine_init._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @tegra_asoc_machine_init._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 172, i32 4}
!22 = !{ptr @tegra_asoc_machine_init._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_asoc_machine_init._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 176, i32 42}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 182, i32 4}
!28 = !{ptr @tegra_asoc_machine_init._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tegra_asoc_machine_init._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 191, i32 4}
!32 = !{ptr @tegra_asoc_machine_init._entry.20, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tegra_asoc_machine_init._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_tegra_asoc_machine_init, !35, !"__ksymtab_tegra_asoc_machine_init", i1 false, i1 false}
!35 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 196, i32 1}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 400, i32 39}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 405, i32 39}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 410, i32 39}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 415, i32 39}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 420, i32 39}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 425, i32 39}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 430, i32 41}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 435, i32 46}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 445, i32 46}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 452, i32 47}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 456, i32 45}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 481, i32 23}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 483, i32 41}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 485, i32 3}
!64 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @tegra_asoc_machine_probe._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @tegra_asoc_machine_probe._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 489, i32 46}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 491, i32 3}
!71 = !{ptr @tegra_asoc_machine_probe._entry.39, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @tegra_asoc_machine_probe._entry_ptr.41, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 495, i32 41}
!75 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 497, i32 3}
!77 = !{ptr @tegra_asoc_machine_probe._entry.43, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tegra_asoc_machine_probe._entry_ptr.45, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 505, i32 38}
!81 = !{ptr @.str.47, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 506, i32 32}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 509, i32 3}
!85 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @tegra_asoc_machine_probe._entry.48, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @tegra_asoc_machine_probe._entry_ptr.51, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.53, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 510, i32 3}
!90 = !{ptr @tegra_asoc_machine_probe._entry.52, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @tegra_asoc_machine_probe._entry_ptr.54, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.55, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 512, i32 35}
!94 = !{ptr @.str.57, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 514, i32 4}
!96 = !{ptr @tegra_asoc_machine_probe._entry.56, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @tegra_asoc_machine_probe._entry_ptr.58, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.60, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 520, i32 4}
!100 = !{ptr @tegra_asoc_machine_probe._entry.59, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @tegra_asoc_machine_probe._entry_ptr.61, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.62, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 524, i32 33}
!104 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 526, i32 4}
!106 = !{ptr @tegra_asoc_machine_probe._entry.63, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @tegra_asoc_machine_probe._entry_ptr.65, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.67, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 532, i32 4}
!110 = !{ptr @tegra_asoc_machine_probe._entry.66, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @tegra_asoc_machine_probe._entry_ptr.68, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.70, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 546, i32 4}
!114 = !{ptr @tegra_asoc_machine_probe._entry.69, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @tegra_asoc_machine_probe._entry_ptr.71, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.73, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 552, i32 4}
!118 = !{ptr @tegra_asoc_machine_probe._entry.72, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @tegra_asoc_machine_probe._entry_ptr.74, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.76, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 567, i32 3}
!122 = !{ptr @tegra_asoc_machine_probe._entry.75, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @tegra_asoc_machine_probe._entry_ptr.77, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @__ksymtab_tegra_asoc_machine_probe, !125, !"__ksymtab_tegra_asoc_machine_probe", i1 false, i1 false}
!125 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 577, i32 1}
!126 = !{ptr @__initcall__kmod_snd_soc_tegra_machine__238_889_tegra_asoc_machine_driver_init6, !127, !"__initcall__kmod_snd_soc_tegra_machine__238_889_tegra_asoc_machine_driver_init6", i1 false, i1 false}
!127 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 889, i32 1}
!128 = !{ptr @__exitcall_tegra_asoc_machine_driver_exit, !127, !"__exitcall_tegra_asoc_machine_driver_exit", i1 false, i1 false}
!129 = !{ptr @__UNIQUE_ID_author239, !130, !"__UNIQUE_ID_author239", i1 false, i1 false}
!130 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 891, i32 1}
!131 = !{ptr @__UNIQUE_ID_author240, !132, !"__UNIQUE_ID_author240", i1 false, i1 false}
!132 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 892, i32 1}
!133 = !{ptr @__UNIQUE_ID_author241, !134, !"__UNIQUE_ID_author241", i1 false, i1 false}
!134 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 893, i32 1}
!135 = !{ptr @__UNIQUE_ID_author242, !136, !"__UNIQUE_ID_author242", i1 false, i1 false}
!136 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 894, i32 1}
!137 = !{ptr @__UNIQUE_ID_author243, !138, !"__UNIQUE_ID_author243", i1 false, i1 false}
!138 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 895, i32 1}
!139 = !{ptr @__UNIQUE_ID_author244, !140, !"__UNIQUE_ID_author244", i1 false, i1 false}
!140 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 896, i32 1}
!141 = !{ptr @__UNIQUE_ID_author245, !142, !"__UNIQUE_ID_author245", i1 false, i1 false}
!142 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 897, i32 1}
!143 = !{ptr @__UNIQUE_ID_author246, !144, !"__UNIQUE_ID_author246", i1 false, i1 false}
!144 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 898, i32 1}
!145 = !{ptr @__UNIQUE_ID_author247, !146, !"__UNIQUE_ID_author247", i1 false, i1 false}
!146 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 899, i32 1}
!147 = !{ptr @__UNIQUE_ID_author248, !148, !"__UNIQUE_ID_author248", i1 false, i1 false}
!148 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 900, i32 1}
!149 = !{ptr @__UNIQUE_ID_author249, !150, !"__UNIQUE_ID_author249", i1 false, i1 false}
!150 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 901, i32 1}
!151 = !{ptr @__UNIQUE_ID_description250, !152, !"__UNIQUE_ID_description250", i1 false, i1 false}
!152 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 902, i32 1}
!153 = !{ptr @__UNIQUE_ID_file251, !154, !"__UNIQUE_ID_file251", i1 false, i1 false}
!154 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 903, i32 1}
!155 = !{ptr @__UNIQUE_ID_license252, !154, !"__UNIQUE_ID_license252", i1 false, i1 false}
!156 = !{ptr @tegra_machine_hp_jack, !157, !"tegra_machine_hp_jack", i1 false, i1 false}
!157 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 25, i32 28}
!158 = !{ptr @tegra_machine_headset_jack, !159, !"tegra_machine_headset_jack", i1 false, i1 false}
!159 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 40, i32 28}
!160 = !{ptr @tegra_machine_mic_jack, !161, !"tegra_machine_mic_jack", i1 false, i1 false}
!161 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 55, i32 28}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 28, i32 11}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 29, i32 11}
!166 = !{ptr @tegra_machine_hp_jack_pins, !167, !"tegra_machine_hp_jack_pins", i1 false, i1 false}
!167 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 27, i32 32}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 33, i32 10}
!170 = !{ptr @tegra_machine_hp_jack_gpio, !171, !"tegra_machine_hp_jack_gpio", i1 false, i1 false}
!171 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 32, i32 33}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 43, i32 11}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 44, i32 11}
!176 = !{ptr @tegra_machine_headset_jack_pins, !177, !"tegra_machine_headset_jack_pins", i1 false, i1 false}
!177 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 42, i32 32}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 48, i32 10}
!180 = !{ptr @tegra_machine_headset_jack_gpio, !181, !"tegra_machine_headset_jack_gpio", i1 false, i1 false}
!181 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 47, i32 33}
!182 = !{ptr @tegra_machine_mic_jack_pins, !183, !"tegra_machine_mic_jack_pins", i1 false, i1 false}
!183 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 57, i32 32}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 63, i32 10}
!186 = !{ptr @tegra_machine_mic_jack_gpio, !187, !"tegra_machine_mic_jack_gpio", i1 false, i1 false}
!187 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 62, i32 33}
!188 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 341, i32 3}
!190 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @tegra_machine_parse_phandle._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @tegra_machine_parse_phandle._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 113, i32 2}
!195 = !{ptr @.str.88, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 114, i32 2}
!198 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.91, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 115, i32 2}
!201 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 116, i32 2}
!204 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 117, i32 2}
!206 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 118, i32 2}
!209 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 119, i32 2}
!212 = !{ptr @.str.99, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 120, i32 2}
!214 = !{ptr @tegra_machine_controls, !215, !"tegra_machine_controls", i1 false, i1 false}
!215 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 112, i32 38}
!216 = !{ptr @.str.100, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 94, i32 2}
!218 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 105, i32 2}
!220 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 106, i32 2}
!222 = !{ptr @.str.103, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 107, i32 2}
!224 = !{ptr @.str.104, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 108, i32 2}
!226 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 109, i32 2}
!228 = !{ptr @tegra_machine_dapm_widgets, !229, !"tegra_machine_dapm_widgets", i1 false, i1 false}
!229 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 93, i32 41}
!230 = !{ptr @tegra_machine_snd_ops, !231, !"tegra_machine_snd_ops", i1 false, i1 false}
!231 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 324, i32 33}
!232 = !{ptr @.str.107, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 261, i32 37}
!234 = !{ptr @.str.108, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 280, i32 3}
!236 = !{ptr @.str.109, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @tegra_machine_hw_params._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @tegra_machine_hw_params._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @tegra_machine_hw_params._entry.110, !240, !"_entry", i1 false, i1 false}
!240 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 293, i32 4}
!241 = !{ptr @tegra_machine_hw_params._entry_ptr.111, !240, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @tegra_machine_hw_params._entry.112, !243, !"_entry", i1 false, i1 false}
!243 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 299, i32 4}
!244 = !{ptr @tegra_machine_hw_params._entry_ptr.113, !243, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @tegra_machine_hw_params._entry.114, !246, !"_entry", i1 false, i1 false}
!246 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 307, i32 4}
!247 = !{ptr @tegra_machine_hw_params._entry_ptr.115, !246, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.117, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 317, i32 3}
!250 = !{ptr @tegra_machine_hw_params._entry.116, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @tegra_machine_hw_params._entry_ptr.118, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.119, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 883, i32 11}
!254 = !{ptr @tegra_asoc_machine_driver, !255, !"tegra_asoc_machine_driver", i1 false, i1 false}
!255 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 881, i32 31}
!256 = !{ptr @tegra_machine_of_match, !257, !"tegra_machine_of_match", i1 false, i1 false}
!257 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 868, i32 34}
!258 = !{ptr @tegra_trimslice_data, !259, !"tegra_trimslice_data", i1 false, i1 false}
!259 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 748, i32 37}
!260 = !{ptr @.str.120, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 737, i32 10}
!262 = !{ptr @.str.121, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 738, i32 16}
!264 = !{ptr @snd_soc_tegra_trimslice, !265, !"snd_soc_tegra_trimslice", i1 false, i1 false}
!265 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 736, i32 28}
!266 = !{ptr @.str.122, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 728, i32 10}
!268 = !{ptr @.str.123, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 729, i32 17}
!270 = !{ptr @tegra_tlv320aic23_dai, !271, !"tegra_tlv320aic23_dai", i1 false, i1 false}
!271 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 727, i32 32}
!272 = !{ptr @tlv320aic23_hifi_cpus, !273, !"tlv320aic23_hifi_cpus", i1 false, i1 false}
!273 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 722, i32 1}
!274 = !{ptr @.str.125, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @tlv320aic23_hifi_codecs, !273, !"tlv320aic23_hifi_codecs", i1 false, i1 false}
!276 = !{ptr @tlv320aic23_hifi_platforms, !273, !"tlv320aic23_hifi_platforms", i1 false, i1 false}
!277 = !{ptr @.str.126, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 710, i32 2}
!279 = !{ptr @trimslice_dapm_widgets, !280, !"trimslice_dapm_widgets", i1 false, i1 false}
!280 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 709, i32 41}
!281 = !{ptr @.str.128, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 715, i32 21}
!283 = !{ptr @.str.129, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 716, i32 21}
!285 = !{ptr @.str.130, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 718, i32 3}
!287 = !{ptr @.str.131, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 719, i32 3}
!289 = !{ptr @trimslice_audio_map, !290, !"trimslice_audio_map", i1 false, i1 false}
!290 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 714, i32 40}
!291 = !{ptr @tegra_max98090_data, !292, !"tegra_max98090_data", i1 false, i1 false}
!292 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 666, i32 37}
!293 = !{ptr @.str.132, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 660, i32 16}
!295 = !{ptr @snd_soc_tegra_max98090, !296, !"snd_soc_tegra_max98090", i1 false, i1 false}
!296 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 659, i32 28}
!297 = !{ptr @.str.133, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 650, i32 10}
!299 = !{ptr @.str.134, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 651, i32 17}
!301 = !{ptr @tegra_max98090_dai, !302, !"tegra_max98090_dai", i1 false, i1 false}
!302 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 649, i32 32}
!303 = !{ptr @max98090_hifi_cpus, !304, !"max98090_hifi_cpus", i1 false, i1 false}
!304 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 644, i32 1}
!305 = !{ptr @.str.136, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @max98090_hifi_codecs, !304, !"max98090_hifi_codecs", i1 false, i1 false}
!307 = !{ptr @max98090_hifi_platforms, !304, !"max98090_hifi_platforms", i1 false, i1 false}
!308 = !{ptr @tegra_sgtl5000_data, !309, !"tegra_sgtl5000_data", i1 false, i1 false}
!309 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 700, i32 37}
!310 = !{ptr @.str.137, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 694, i32 16}
!312 = !{ptr @snd_soc_tegra_sgtl5000, !313, !"snd_soc_tegra_sgtl5000", i1 false, i1 false}
!313 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 693, i32 28}
!314 = !{ptr @.str.138, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 685, i32 10}
!316 = !{ptr @tegra_sgtl5000_dai, !317, !"tegra_sgtl5000_dai", i1 false, i1 false}
!317 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 684, i32 32}
!318 = !{ptr @sgtl5000_hifi_cpus, !319, !"sgtl5000_hifi_cpus", i1 false, i1 false}
!319 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 679, i32 1}
!320 = !{ptr @sgtl5000_hifi_codecs, !319, !"sgtl5000_hifi_codecs", i1 false, i1 false}
!321 = !{ptr @sgtl5000_hifi_platforms, !319, !"sgtl5000_hifi_platforms", i1 false, i1 false}
!322 = !{ptr @.str.140, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 638, i32 20}
!324 = !{ptr @tegra_wm9712_data, !325, !"tegra_wm9712_data", i1 false, i1 false}
!325 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 635, i32 37}
!326 = !{ptr @.str.141, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 629, i32 16}
!328 = !{ptr @snd_soc_tegra_wm9712, !329, !"snd_soc_tegra_wm9712", i1 false, i1 false}
!329 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 628, i32 28}
!330 = !{ptr @.str.142, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 622, i32 10}
!332 = !{ptr @tegra_wm9712_dai, !333, !"tegra_wm9712_dai", i1 false, i1 false}
!333 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 621, i32 32}
!334 = !{ptr @wm9712_hifi_cpus, !335, !"wm9712_hifi_cpus", i1 false, i1 false}
!335 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 616, i32 1}
!336 = !{ptr @.str.144, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @wm9712_hifi_codecs, !335, !"wm9712_hifi_codecs", i1 false, i1 false}
!338 = !{ptr @wm9712_hifi_platforms, !335, !"wm9712_hifi_platforms", i1 false, i1 false}
!339 = !{ptr @.str.145, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 613, i32 57}
!341 = !{ptr @tegra_wm8753_data, !342, !"tegra_wm8753_data", i1 false, i1 false}
!342 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 602, i32 37}
!343 = !{ptr @.str.146, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 596, i32 16}
!345 = !{ptr @snd_soc_tegra_wm8753, !346, !"snd_soc_tegra_wm8753", i1 false, i1 false}
!346 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 595, i32 28}
!347 = !{ptr @.str.147, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 587, i32 10}
!349 = !{ptr @.str.148, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 588, i32 17}
!351 = !{ptr @tegra_wm8753_dai, !352, !"tegra_wm8753_dai", i1 false, i1 false}
!352 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 586, i32 32}
!353 = !{ptr @wm8753_hifi_cpus, !354, !"wm8753_hifi_cpus", i1 false, i1 false}
!354 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 581, i32 1}
!355 = !{ptr @.str.150, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @wm8753_hifi_codecs, !354, !"wm8753_hifi_codecs", i1 false, i1 false}
!357 = !{ptr @wm8753_hifi_platforms, !354, !"wm8753_hifi_platforms", i1 false, i1 false}
!358 = !{ptr @tegra_rt5677_data, !359, !"tegra_rt5677_data", i1 false, i1 false}
!359 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 792, i32 37}
!360 = !{ptr @.str.151, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 786, i32 16}
!362 = !{ptr @snd_soc_tegra_rt5677, !363, !"snd_soc_tegra_rt5677", i1 false, i1 false}
!363 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 785, i32 28}
!364 = !{ptr @.str.152, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 776, i32 10}
!366 = !{ptr @.str.153, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 777, i32 17}
!368 = !{ptr @tegra_rt5677_dai, !369, !"tegra_rt5677_dai", i1 false, i1 false}
!369 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 775, i32 32}
!370 = !{ptr @rt5677_aif1_cpus, !371, !"rt5677_aif1_cpus", i1 false, i1 false}
!371 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 770, i32 1}
!372 = !{ptr @.str.155, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @rt5677_aif1_codecs, !371, !"rt5677_aif1_codecs", i1 false, i1 false}
!374 = !{ptr @rt5677_aif1_platforms, !371, !"rt5677_aif1_platforms", i1 false, i1 false}
!375 = !{ptr @.str.156, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 765, i32 45}
!377 = !{ptr @tegra_rt5640_data, !378, !"tegra_rt5640_data", i1 false, i1 false}
!378 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 826, i32 37}
!379 = !{ptr @.str.157, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 820, i32 16}
!381 = !{ptr @snd_soc_tegra_rt5640, !382, !"snd_soc_tegra_rt5640", i1 false, i1 false}
!382 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 819, i32 28}
!383 = !{ptr @.str.158, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 810, i32 10}
!385 = !{ptr @.str.159, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 811, i32 17}
!387 = !{ptr @tegra_rt5640_dai, !388, !"tegra_rt5640_dai", i1 false, i1 false}
!388 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 809, i32 32}
!389 = !{ptr @rt5640_aif1_cpus, !390, !"rt5640_aif1_cpus", i1 false, i1 false}
!390 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 804, i32 1}
!391 = !{ptr @.str.161, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @rt5640_aif1_codecs, !390, !"rt5640_aif1_codecs", i1 false, i1 false}
!393 = !{ptr @rt5640_aif1_platforms, !390, !"rt5640_aif1_platforms", i1 false, i1 false}
!394 = !{ptr @tegra_rt5632_data, !395, !"tegra_rt5632_data", i1 false, i1 false}
!395 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 859, i32 37}
!396 = !{ptr @.str.162, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 853, i32 16}
!398 = !{ptr @snd_soc_tegra_rt5632, !399, !"snd_soc_tegra_rt5632", i1 false, i1 false}
!399 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 852, i32 28}
!400 = !{ptr @.str.163, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 843, i32 10}
!402 = !{ptr @.str.164, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 844, i32 17}
!404 = !{ptr @tegra_rt5632_dai, !405, !"tegra_rt5632_dai", i1 false, i1 false}
!405 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 842, i32 32}
!406 = !{ptr @rt5632_hifi_cpus, !407, !"rt5632_hifi_cpus", i1 false, i1 false}
!407 = !{!"../sound/soc/tegra/tegra_asoc_machine.c", i32 837, i32 1}
!408 = !{ptr @.str.166, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @rt5632_hifi_codecs, !407, !"rt5632_hifi_codecs", i1 false, i1 false}
!410 = !{ptr @rt5632_hifi_platforms, !407, !"rt5632_hifi_platforms", i1 false, i1 false}
!411 = !{i32 1, !"wchar_size", i32 2}
!412 = !{i32 1, !"min_enum_size", i32 4}
!413 = !{i32 8, !"branch-target-enforcement", i32 0}
!414 = !{i32 8, !"sign-return-address", i32 0}
!415 = !{i32 8, !"sign-return-address-all", i32 0}
!416 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!417 = !{i32 7, !"uwtable", i32 1}
!418 = !{i32 7, !"frame-pointer", i32 2}
!419 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!420 = !{i8 0, i8 2}
