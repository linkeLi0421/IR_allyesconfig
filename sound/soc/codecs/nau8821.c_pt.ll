; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/nau8821.c_pt.bc'
source_filename = "../sound/soc/codecs/nau8821.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nau8821_enable_jack_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_nau8821_enable_jack_detect\09\09\09\09"
module asm "\09.long\09__crc_nau8821_enable_jack_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nau8821_enable_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22nau8821_enable_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_nau8821_enable_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_bytes_ext = type { i32, %struct.snd_soc_dobj, ptr, ptr }
%struct.nau8821_dmic_speed = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nau8821_fll_attr = type { i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.nau8821_osr_attr = type { i32, i32 }
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
%struct.nau8821 = type { ptr, ptr, ptr, ptr, %struct.work_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32 }
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

@nau8821_enable_jack_detect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&nau8821->jdet_work)\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nau8821\00", [24 x i8] zeroinitializer }, align 32
@nau8821_enable_jack_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1462, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot request irq %d (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nau8821_enable_jack_detect\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/nau8821.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nau8821_enable_jack_detect._entry_ptr = internal global ptr @nau8821_enable_jack_detect._entry, section ".printk_index", align 4
@__kstrtab_nau8821_enable_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_nau8821_enable_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_nau8821_enable_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nau8821_enable_jack_detect to i32), ptr @__kstrtab_nau8821_enable_jack_detect, ptr @__kstrtabns_nau8821_enable_jack_detect }, section "___ksymtab_gpl+nau8821_enable_jack_detect", align 4
@__initcall__kmod_snd_soc_nau8821__309_1709_nau8821_driver_init6 = internal global ptr @nau8821_driver_init, section ".initcall6.init", align 4
@nau8821_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @nau8821_i2c_probe, ptr @nau8821_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nau8821_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @nau8821_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_nau8821_driver_exit = internal global ptr @nau8821_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description310 = internal constant [48 x i8] c"snd_soc_nau8821.description=ASoC nau8821 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [53 x i8] c"snd_soc_nau8821.author=John Hsu <kchsu0@nuvoton.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author312 = internal constant [52 x i8] c"snd_soc_nau8821.author=Seven Lee <wtli@nuvoton.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [54 x i8] c"snd_soc_nau8821.file=sound/soc/codecs/snd-soc-nau8821\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [28 x i8] c"snd_soc_nau8821.license=GPL\00", section ".modinfo", align 1
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@nau8821_jdet_work.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.4, ptr @.str.10, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_nau8821\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nau8821_jdet_work\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Headset connected\0A\00", [45 x i8] zeroinitializer }, align 32
@nau8821_jdet_work.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.4, ptr @.str.11, i8 0, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Headphone connected\0A\00", [43 x i8] zeroinitializer }, align 32
@nau8821_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 988, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read irq status\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nau8821_interrupt\00", [46 x i8] zeroinitializer }, align 32
@nau8821_interrupt._entry_ptr = internal global ptr @nau8821_interrupt._entry, section ".printk_index", align 4
@nau8821_interrupt.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 0, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IRQ %d\0A\00", [24 x i8] zeroinitializer }, align 32
@nau8821_interrupt._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.4, i32 1021, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Inserted IRQ fired but not connected\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nau8821_interrupt._entry_ptr.18 = internal global ptr @nau8821_interrupt._entry.15, section ".printk_index", align 4
@nau8821_configure_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 1299, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nau8821_configure_sysclk\00", [39 x i8] zeroinitializer }, align 32
@nau8821_configure_sysclk._entry_ptr = internal global ptr @nau8821_configure_sysclk._entry, section ".printk_index", align 4
@nau8821_configure_sysclk.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 1, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nau8821_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,nau8821\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nau8821_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"nau8821\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nau8821_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nau8821_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr @nau8821_writeable_reg, ptr @nau8821_readable_reg, ptr @nau8821_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 130, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nau8821_reg_defaults, i32 77, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nau8821:1643:(&nau8821_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@nau8821_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1654, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read device id (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nau8821_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@nau8821_i2c_probe._entry_ptr = internal global ptr @nau8821_i2c_probe._entry, section ".printk_index", align 4
@nau8821_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @nau8821_controls, i32 10, ptr @nau8821_dapm_widgets, i32 37, ptr @nau8821_dapm_routes, i32 39, ptr @nau8821_component_probe, ptr null, ptr @nau8821_suspend, ptr @nau8821_resume, ptr null, ptr null, ptr null, ptr null, ptr @nau8821_set_sysclk, ptr @nau8821_set_fll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nau8821_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@nau8821_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.112, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @nau8821_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.75, i64 73014445060, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.77, i64 73014445060, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nuvoton,jkdet-enable\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nuvoton,jkdet-pull-enable\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nuvoton,jkdet-pull-up\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nuvoton,jkdet-polarity\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nuvoton,micbias-voltage\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nuvoton,vref-impedance\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nuvoton,jack-insert-debounce\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nuvoton,jack-eject-debounce\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nuvoton,dmic-clk-threshold\00", [37 x i8] zeroinitializer }, align 32
@nau8821_reg_defaults = internal constant { [77 x %struct.reg_default], [152 x i8] } { [77 x %struct.reg_default] [%struct.reg_default { i32 1, i32 255 }, %struct.reg_default { i32 3, i32 80 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 188 }, %struct.reg_default { i32 6, i32 8 }, %struct.reg_default { i32 7, i32 16 }, %struct.reg_default { i32 8, i32 16384 }, %struct.reg_default { i32 9, i32 26880 }, %struct.reg_default { i32 10, i32 49 }, %struct.reg_default { i32 11, i32 9961 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 18, i32 65535 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 10 }, %struct.reg_default { i32 29, i32 32784 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 2 }, %struct.reg_default { i32 44, i32 130 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 52, i32 53199 }, %struct.reg_default { i32 53, i32 53199 }, %struct.reg_default { i32 54, i32 5254 }, %struct.reg_default { i32 55, i32 3858 }, %struct.reg_default { i32 56, i32 9727 }, %struct.reg_default { i32 57, i32 13399 }, %struct.reg_default { i32 58, i32 5254 }, %struct.reg_default { i32 59, i32 3858 }, %struct.reg_default { i32 60, i32 9721 }, %struct.reg_default { i32 61, i32 13399 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 71, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 73, i32 0 }, %struct.reg_default { i32 74, i32 0 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 83, i32 43736 }, %struct.reg_default { i32 84, i32 2 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 113, i32 17 }, %struct.reg_default { i32 114, i32 32 }, %struct.reg_default { i32 115, i32 8 }, %struct.reg_default { i32 116, i32 6 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 126, i32 0 }, %struct.reg_default { i32 127, i32 0 }, %struct.reg_default { i32 128, i32 0 }], [152 x i8] zeroinitializer }, align 32
@nau8821_print_device_properties.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 1, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nau8821_print_device_properties\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jkdet-enable:         %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8821_print_device_properties.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.34, ptr @.str.4, ptr @.str.36, i8 1, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jkdet-pull-enable:    %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8821_print_device_properties.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.34, ptr @.str.4, ptr @.str.37, i8 1, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jkdet-pull-up:        %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8821_print_device_properties.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.34, ptr @.str.4, ptr @.str.38, i8 1, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jkdet-polarity:       %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8821_print_device_properties.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.34, ptr @.str.4, ptr @.str.39, i8 1, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"micbias-voltage:      %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8821_print_device_properties.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.34, ptr @.str.4, ptr @.str.40, i8 1, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vref-impedance:       %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8821_print_device_properties.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.34, ptr @.str.4, ptr @.str.41, i8 1, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jack-insert-debounce: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8821_print_device_properties.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.34, ptr @.str.4, ptr @.str.42, i8 1, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jack-eject-debounce:  %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8821_print_device_properties.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.34, ptr @.str.4, ptr @.str.43, i8 1, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dmic-clk-threshold:       %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nau8821_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @sidetone_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @hp_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @playback_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @fepga_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @crosstalk_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @nau8821_adc_decimation_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @nau8821_dac_oversampl_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info_ext, ptr @nau8821_biq_coeff_get, ptr @nau8821_biq_coeff_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }], [96 x i8] zeroinitializer }, align 32
@nau8821_dapm_routes = internal constant { [39 x %struct.snd_soc_dapm_route], [500 x i8] } { [39 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.107, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr null, ptr @.str.7, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.7, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }], [500 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Volume\00", [21 x i8] zeroinitializer }, align 32
@adc_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 8, i32 -6600, i32 2400], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 53, i32 53, i32 0, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Headphone Bypass Volume\00", [40 x i8] zeroinitializer }, align 32
@sidetone_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 8, i32 -4200, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 48, i32 48, i32 12, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@hp_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -900, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 50, i32 50, i32 4, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@playback_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6600, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 207, i32 207, i32 52, i32 52, i32 0, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Frontend PGA Volume\00", [44 x i8] zeroinitializer }, align 32
@fepga_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -100, i32 3600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 37, i32 37, i32 126, i32 126, i32 8, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Headphone Crosstalk Volume\00", [37 x i8] zeroinitializer }, align 32
@crosstalk_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 8, i32 -7000, i32 2400], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 47, i32 47, i32 0, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC Decimation Rate\00", [44 x i8] zeroinitializer }, align 32
@nau8821_adc_decimation_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 43, i8 0, i8 0, i32 4, i32 3, ptr @nau8821_adc_decimation, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Oversampling Rate\00", [42 x i8] zeroinitializer }, align 32
@nau8821_dac_oversampl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 44, i8 0, i8 0, i32 5, i32 7, ptr @nau8821_dac_oversampl, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BIQ Coefficients\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_bytes_ext, [48 x i8] } { %struct.soc_bytes_ext { i32 20, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Phase Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 13, i32 13, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@nau8821_adc_decimation = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"64\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"128\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"256\00", [28 x i8] zeroinitializer }, align 32
@nau8821_dac_oversampl = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.62, ptr @.str.64, ptr @.str.63, ptr @.str.65, ptr @.str.61], [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMIC Clock\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADCL Power\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADCR Power\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Frontend PGA L\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Frontend PGA R\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADCL Digital path\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADCR Digital path\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC Enable\00", [20 x i8] zeroinitializer }, align 32
@nau8821_dmic_mode_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIFTX\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIFRX\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADACL\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADACR\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADACL Clock\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADACR Clock\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DDACR\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DDACL\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP amp L\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP amp R\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge Pump\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Output Driver R Stage 1\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Output Driver L Stage 1\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Output Driver R Stage 2\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Output Driver L Stage 2\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Output Driver R Stage 3\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Output Driver L Stage 3\00", [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Output DACL\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Output DACR\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HPOL Pulldown\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HPOR Pulldown\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HP Boost Driver\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Class G\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MICL\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MICR\00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOR\00", [27 x i8] zeroinitializer }, align 32
@nau8821_dapm_widgets = internal constant { [37 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1692 x i8] } { [37 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.7, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 116, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @dmic_clock_control, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 114, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 114, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @nau8821_left_adc_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @nau8821_right_adc_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @nau8821_dmic_mode_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.74, ptr @.str.75, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 29, i8 15, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.76, ptr @.str.77, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 115, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 115, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 115, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 115, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 75, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 75, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 128, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @nau8821_pump_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 4, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 4, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 5, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 5, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 6, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 6, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 128, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 7, ptr null, i16 9, ptr @nau8821_output_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 128, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 7, ptr null, i16 9, ptr @nau8821_output_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 8, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 8, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 118, i8 9, i32 1, i32 0, i32 1, i8 0, i8 0, i32 9, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 75, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1692 x i8] zeroinitializer }, align 32
@dmic_speed_sel = internal constant { [4 x %struct.nau8821_dmic_speed], [32 x i8] } { [4 x %struct.nau8821_dmic_speed] [%struct.nau8821_dmic_speed zeroinitializer, %struct.nau8821_dmic_speed { i32 1, i32 1 }, %struct.nau8821_dmic_speed { i32 2, i32 2 }, %struct.nau8821_dmic_speed { i32 3, i32 3 }], [32 x i8] zeroinitializer }, align 32
@dmic_clock_control.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.105, ptr @.str.4, ptr @.str.106, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dmic_clock_control\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"clk_adc=%d, dmic_clk_threshold = %d, param=%d, val = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@nau8821_set_fll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.4, i32 1204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unsupported input clock %d to output clock %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nau8821_set_fll\00", [16 x i8] zeroinitializer }, align 32
@nau8821_set_fll._entry_ptr = internal global ptr @nau8821_set_fll._entry, section ".printk_index", align 4
@nau8821_set_fll.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.110, ptr @.str.4, ptr @.str.111, i8 1, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"mclk_src=%x ratio=%x fll_frac=%x fll_int=%x clk_ref_div=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fll_pre_scalar = internal constant { [4 x %struct.nau8821_fll_attr], [32 x i8] } { [4 x %struct.nau8821_fll_attr] [%struct.nau8821_fll_attr zeroinitializer, %struct.nau8821_fll_attr { i32 1, i32 1 }, %struct.nau8821_fll_attr { i32 2, i32 2 }, %struct.nau8821_fll_attr { i32 3, i32 3 }], [32 x i8] zeroinitializer }, align 32
@fll_ratio = internal constant { [7 x %struct.nau8821_fll_attr], [40 x i8] } { [7 x %struct.nau8821_fll_attr] [%struct.nau8821_fll_attr { i32 512000, i32 1 }, %struct.nau8821_fll_attr { i32 256000, i32 2 }, %struct.nau8821_fll_attr { i32 128000, i32 4 }, %struct.nau8821_fll_attr { i32 64000, i32 8 }, %struct.nau8821_fll_attr { i32 32000, i32 16 }, %struct.nau8821_fll_attr { i32 8000, i32 32 }, %struct.nau8821_fll_attr { i32 4000, i32 64 }], [40 x i8] zeroinitializer }, align 32
@mclk_src_scaling = internal constant { [13 x %struct.nau8821_fll_attr], [56 x i8] } { [13 x %struct.nau8821_fll_attr] [%struct.nau8821_fll_attr { i32 1, i32 0 }, %struct.nau8821_fll_attr { i32 2, i32 2 }, %struct.nau8821_fll_attr { i32 4, i32 3 }, %struct.nau8821_fll_attr { i32 8, i32 4 }, %struct.nau8821_fll_attr { i32 16, i32 5 }, %struct.nau8821_fll_attr { i32 32, i32 6 }, %struct.nau8821_fll_attr { i32 3, i32 7 }, %struct.nau8821_fll_attr { i32 6, i32 10 }, %struct.nau8821_fll_attr { i32 12, i32 11 }, %struct.nau8821_fll_attr { i32 24, i32 12 }, %struct.nau8821_fll_attr { i32 48, i32 13 }, %struct.nau8821_fll_attr { i32 96, i32 14 }, %struct.nau8821_fll_attr { i32 5, i32 15 }], [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nau8821-hifi\00", [19 x i8] zeroinitializer }, align 32
@nau8821_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @nau8821_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nau8821_digital_mute, ptr null, ptr null, ptr @nau8821_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@osr_dac_sel = internal constant { [5 x %struct.nau8821_osr_attr], [56 x i8] } { [5 x %struct.nau8821_osr_attr] [%struct.nau8821_osr_attr { i32 64, i32 2 }, %struct.nau8821_osr_attr { i32 256, i32 0 }, %struct.nau8821_osr_attr { i32 128, i32 1 }, %struct.nau8821_osr_attr zeroinitializer, %struct.nau8821_osr_attr { i32 32, i32 3 }], [56 x i8] zeroinitializer }, align 32
@osr_adc_sel = internal constant { [4 x %struct.nau8821_osr_attr], [32 x i8] } { [4 x %struct.nau8821_osr_attr] [%struct.nau8821_osr_attr { i32 32, i32 3 }, %struct.nau8821_osr_attr { i32 64, i32 2 }, %struct.nau8821_osr_attr { i32 128, i32 1 }, %struct.nau8821_osr_attr { i32 256, i32 0 }], [32 x i8] zeroinitializer }, align 32
@nau8821_clock_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.4, i32 658, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"exceed the maximum frequency of CLK_ADC or CLK_DAC\00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nau8821_clock_check\00", [44 x i8] zeroinitializer }, align 32
@nau8821_clock_check._entry_ptr = internal global ptr @nau8821_clock_check._entry, section ".printk_index", align 4
@switch.table.nau8821_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 8, i32 0, i32 12], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.115 = internal global [82 x i64] [i64 80, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 13, i64 15, i64 17, i64 18, i64 19, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 47, i64 48, i64 49, i64 50, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 78, i64 79, i64 81, i64 85, i64 90, i64 102, i64 104, i64 105, i64 106, i64 107, i64 113, i64 114, i64 115, i64 116, i64 118, i64 119, i64 126, i64 127, i64 128]
@__sancov_gen_cov_switch_values.116 = internal global [90 x i64] [i64 88, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 13, i64 15, i64 16, i64 17, i64 18, i64 19, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 47, i64 48, i64 49, i64 50, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 81, i64 83, i64 84, i64 85, i64 88, i64 89, i64 90, i64 102, i64 104, i64 105, i64 106, i64 107, i64 113, i64 114, i64 115, i64 116, i64 118, i64 119, i64 126, i64 127, i64 128, i64 129, i64 130]
@__sancov_gen_cov_switch_values.117 = internal global [33 x i64] [i64 31, i64 32, i64 0, i64 16, i64 17, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 77, i64 83, i64 84, i64 88, i64 89, i64 90, i64 129, i64 130]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.125 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1456, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1459, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1461, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [15 x i8] c"nau8821_driver\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1699, i32 26 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 924, i32 48 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 931, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 943, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 988, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 992, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1020, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1299, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1303, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [15 x i8] c"nau8821_of_ids\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1684, i32 34 }
@___asan_gen_.207 = private unnamed_addr constant [16 x i8] c"nau8821_i2c_ids\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1677, i32 35 }
@___asan_gen_.210 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [22 x i8] c"nau8821_regmap_config\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1037, i32 35 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1643, i32 20 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1654, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [25 x i8] c"nau8821_component_driver\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1418, i32 46 }
@___asan_gen_.231 = private unnamed_addr constant [12 x i8] c"nau8821_dai\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 823, i32 34 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1500, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1502, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1504, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1505, i32 38 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1509, i32 38 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1513, i32 38 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1517, i32 38 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1521, i32 38 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1525, i32 38 }
@___asan_gen_.261 = private unnamed_addr constant [21 x i8] c"nau8821_reg_defaults\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 119, i32 33 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1480, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1481, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1482, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1483, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1484, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1485, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1486, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1488, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1490, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"nau8821_controls\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 329, i32 38 }
@___asan_gen_.297 = private unnamed_addr constant [20 x i8] c"nau8821_dapm_routes\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 588, i32 40 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 330, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [12 x i8] c"adc_vol_tlv\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 322, i32 14 }
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 333, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"sidetone_vol_tlv\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 323, i32 14 }
@___asan_gen_.313 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 335, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [11 x i8] c"hp_vol_tlv\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 324, i32 14 }
@___asan_gen_.320 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 337, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c"playback_vol_tlv\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 325, i32 14 }
@___asan_gen_.327 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 340, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [15 x i8] c"fepga_gain_tlv\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 326, i32 14 }
@___asan_gen_.334 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 343, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [18 x i8] c"crosstalk_vol_tlv\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 327, i32 14 }
@___asan_gen_.341 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 347, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [28 x i8] c"nau8821_adc_decimation_enum\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 311, i32 30 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 348, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [27 x i8] c"nau8821_dac_oversampl_enum\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 318, i32 30 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 349, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 351, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [23 x i8] c"nau8821_adc_decimation\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 308, i32 27 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 309, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 309, i32 8 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 309, i32 14 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 309, i32 21 }
@___asan_gen_.377 = private unnamed_addr constant [22 x i8] c"nau8821_dac_oversampl\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 315, i32 27 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 316, i32 22 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 499, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 501, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 503, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 505, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 507, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 509, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 512, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 515, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [25 x i8] c"nau8821_dmic_mode_switch\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 355, i32 38 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 517, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 519, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 521, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 523, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 525, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 527, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 529, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 531, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 533, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 535, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 537, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 540, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 543, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 546, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 549, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 552, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 555, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 558, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 562, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 568, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 571, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 576, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 578, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 581, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 582, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 583, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 584, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 585, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [21 x i8] c"nau8821_dapm_widgets\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 496, i32 41 }
@___asan_gen_.503 = private unnamed_addr constant [15 x i8] c"dmic_speed_sel\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 112, i32 40 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 387, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 356, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1202, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1207, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [15 x i8] c"fll_pre_scalar\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 79, i32 38 }
@___asan_gen_.531 = private unnamed_addr constant [10 x i8] c"fll_ratio\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 69, i32 38 }
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"mclk_src_scaling\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 52, i32 38 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 824, i32 10 }
@___asan_gen_.540 = private unnamed_addr constant [16 x i8] c"nau8821_dai_ops\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 813, i32 37 }
@___asan_gen_.543 = private unnamed_addr constant [12 x i8] c"osr_dac_sel\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 92, i32 38 }
@___asan_gen_.546 = private unnamed_addr constant [12 x i8] c"osr_adc_sel\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 100, i32 38 }
@___asan_gen_.549 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.556 = private constant [30 x i8] c"../sound/soc/codecs/nau8821.c\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 657, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant [31 x i8] c"switch.table.nau8821_hw_params\00", align 1
@llvm.compiler.used = appending global [167 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_nau8821_driver_exit, ptr @__initcall__kmod_snd_soc_nau8821__309_1709_nau8821_driver_init6, ptr @__ksymtab_nau8821_enable_jack_detect, ptr @nau8821_clock_check._entry, ptr @nau8821_clock_check._entry_ptr, ptr @nau8821_configure_sysclk._entry, ptr @nau8821_configure_sysclk._entry_ptr, ptr @nau8821_driver_exit, ptr @nau8821_enable_jack_detect._entry, ptr @nau8821_enable_jack_detect._entry_ptr, ptr @nau8821_i2c_probe._entry, ptr @nau8821_i2c_probe._entry_ptr, ptr @nau8821_interrupt._entry, ptr @nau8821_interrupt._entry.15, ptr @nau8821_interrupt._entry_ptr, ptr @nau8821_interrupt._entry_ptr.18, ptr @nau8821_set_fll._entry, ptr @nau8821_set_fll._entry_ptr, ptr @nau8821_enable_jack_detect.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nau8821_driver, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @nau8821_of_ids, ptr @nau8821_i2c_ids, ptr @nau8821_i2c_probe._key, ptr @nau8821_regmap_config, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @nau8821_component_driver, ptr @nau8821_dai, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @nau8821_reg_defaults, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @nau8821_controls, ptr @nau8821_dapm_routes, ptr @.str.44, ptr @adc_vol_tlv, ptr @.compoundliteral, ptr @.str.45, ptr @sidetone_vol_tlv, ptr @.compoundliteral.46, ptr @.str.47, ptr @hp_vol_tlv, ptr @.compoundliteral.48, ptr @.str.49, ptr @playback_vol_tlv, ptr @.compoundliteral.50, ptr @.str.51, ptr @fepga_gain_tlv, ptr @.compoundliteral.52, ptr @.str.53, ptr @crosstalk_vol_tlv, ptr @.compoundliteral.54, ptr @.str.55, ptr @nau8821_adc_decimation_enum, ptr @.str.56, ptr @nau8821_dac_oversampl_enum, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @nau8821_adc_decimation, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @nau8821_dac_oversampl, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @nau8821_dmic_mode_switch, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @nau8821_dapm_widgets, ptr @dmic_speed_sel, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @fll_pre_scalar, ptr @fll_ratio, ptr @mclk_src_scaling, ptr @.str.112, ptr @nau8821_dai_ops, ptr @osr_dac_sel, ptr @osr_adc_sel, ptr @.str.113, ptr @.str.114, ptr @switch.table.nau8821_hw_params], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_enable_jack_detect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_enable_jack_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_interrupt._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_configure_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_reg_defaults to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_dapm_routes to i32), i32 2028, i32 2528, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fepga_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crosstalk_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_adc_decimation_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_dac_oversampl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_adc_decimation to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_dac_oversampl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_dmic_mode_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_dapm_widgets to i32), i32 6660, i32 8352, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_speed_sel to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_set_fll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_pre_scalar to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_ratio to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mclk_src_scaling to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osr_dac_sel to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osr_adc_sel to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8821_clock_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nau8821_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nau8821_enable_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %jack) #0 align 64 {
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
  %jack1 = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %jack1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %jack, ptr %jack1, align 4
  %jdet_work = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 4
  tail call void @__init_work(ptr noundef %jdet_work, i32 noundef 0) #8
  %5 = ptrtoint ptr %jdet_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %jdet_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @nau8821_enable_jack_detect.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry5 = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 4, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nau8821_jdet_work, ptr %func, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %irq = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call7 = tail call i32 @devm_request_threaded_irq(ptr noundef %10, i32 noundef %12, ptr noundef null, ptr noundef nonnull @nau8821_interrupt, i32 noundef 8200, ptr noundef nonnull @.str.1, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef %16, i32 noundef %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %entry.cleanup_crit_edge
  ret i32 %call7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nau8821_jdet_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  %jack_status_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %dapm1 = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %dapm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm1, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %regmap2 = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jack_status_reg) #8
  %4 = ptrtoint ptr %jack_status_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %jack_status_reg, align 4, !annotation !302
  %call3 = tail call i32 @snd_soc_component_force_enable_pin(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.7) #8
  %call4 = tail call i32 @snd_soc_dapm_sync(ptr noundef %1) #8
  tail call void @msleep(i32 noundef 20) #8
  %call5 = call i32 @regmap_read(ptr noundef %3, i32 noundef 88, ptr noundef nonnull %jack_status_reg) #8
  %5 = ptrtoint ptr %jack_status_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %jack_status_reg, align 4
  %and = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %do.body18

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_jdet_work.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_jdet_work, %if.then15)) #8
          to label %do.end [label %if.then15], !srcloc !303

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_jdet_work.__UNIQUE_ID_ddebug295, ptr noundef %8, ptr noundef nonnull @.str.10) #8
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 116, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i55 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 43, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end38

do.body18:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_jdet_work.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_jdet_work, %if.then30)) #8
          to label %do.end34 [label %if.then30], !srcloc !303

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_jdet_work.__UNIQUE_ID_ddebug296, ptr noundef %10, ptr noundef nonnull @.str.11) #8
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body18
  %call36 = call i32 @snd_soc_component_disable_pin(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.7) #8
  %call37 = call i32 @snd_soc_dapm_sync(ptr noundef %1) #8
  br label %if.end38

if.end38:                                         ; preds = %do.end34, %do.end
  %event.0 = phi i32 [ 3, %do.end ], [ 1, %do.end34 ]
  %jack = getelementptr i8, ptr %work, i32 -4
  %11 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %jack, align 4
  call void @snd_soc_jack_report(ptr noundef %12, i32 noundef %event.0, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jack_status_reg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_interrupt(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %status.i = alloca i32, align 4
  %jkdet.i = alloca i32, align 4
  %active_irq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.nau8821, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_irq) #8
  %2 = ptrtoint ptr %active_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %active_irq, align 4, !annotation !302
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %active_irq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_interrupt.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_interrupt, %if.then7)) #8
          to label %do.end11 [label %if.then7], !srcloc !303

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %active_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active_irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_interrupt.__UNIQUE_ID_ddebug297, ptr noundef %6, ptr noundef nonnull @.str.14, i32 noundef %8) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body2
  %9 = ptrtoint ptr %active_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_irq, align 4
  %and = and i32 %10, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %if.then38.critedge, label %if.else

if.else:                                          ; preds = %do.end11
  %and14 = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 1
  br i1 %cmp15, label %if.then16, label %if.else.if.then34_crit_edge

if.else.if.then34_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then16:                                        ; preds = %if.else
  %call.i64 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 113, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %status.i, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jkdet.i) #8
  %12 = ptrtoint ptr %jkdet.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %jkdet.i, align 4, !annotation !302
  %call.i65 = call i32 @regmap_read(ptr noundef %1, i32 noundef 13, ptr noundef nonnull %jkdet.i) #8
  %13 = ptrtoint ptr %jkdet.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %jkdet.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 130, ptr noundef nonnull %status.i) #8
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status.i, align 4
  %and10.i = xor i32 %16, %14
  %17 = and i32 %and10.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jkdet.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br i1 %cmp.i, label %if.then19, label %do.end28

if.then19:                                        ; preds = %if.then16
  %jdet_work = getelementptr inbounds %struct.nau8821, ptr %data, i32 0, i32 4
  %call20 = call zeroext i1 @cancel_work_sync(ptr noundef %jdet_work) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %jdet_work) #8
  %call.i66 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 18, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i67 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 15, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %19 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap1, align 4
  %dapm.i = getelementptr inbounds %struct.nau8821, ptr %data, i32 0, i32 2
  %21 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dapm.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i68 = icmp ult i32 %24, 2
  br i1 %cmp.i68, label %if.then.i, label %if.then19.nau8821_setup_inserted_irq.exit_crit_edge

if.then19.nau8821_setup_inserted_irq.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8821_setup_inserted_irq.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %call.i69 = call fastcc i32 @nau8821_configure_sysclk(ptr noundef %data, i32 noundef 2, i32 noundef 0) #8
  br label %nau8821_setup_inserted_irq.exit

nau8821_setup_inserted_irq.exit:                  ; preds = %if.then.i, %if.then19.nau8821_setup_inserted_irq.exit_crit_edge
  %call.i.i70 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 29, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i13.i = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 29, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i14.i = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 13, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i15.i = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 15, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i16.i = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 18, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.then34

do.end28:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.16) #11
  call fastcc void @nau8821_eject_jack(ptr noundef %data)
  br label %if.then34

if.then34:                                        ; preds = %do.end28, %nau8821_setup_inserted_irq.exit, %if.else.if.then34_crit_edge
  %27 = ptrtoint ptr %active_irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %active_irq, align 4
  %call36.c = call i32 @regmap_write(ptr noundef %1, i32 noundef 17, i32 noundef %28) #8
  br label %cleanup

if.then38.critedge:                               ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 113, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call fastcc void @nau8821_eject_jack(ptr noundef %data)
  %call36.c63 = call i32 @regmap_write(ptr noundef %1, i32 noundef 17, i32 noundef 12) #8
  %jack = getelementptr inbounds %struct.nau8821, ptr %data, i32 0, i32 3
  %29 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %jack, align 4
  call void @snd_soc_jack_report(ptr noundef %30, i32 noundef 0, i32 noundef 3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then38.critedge, %if.then34, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.then34 ], [ 1, %if.then38.critedge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_irq) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @nau8821_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nau8821_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @nau8821_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8821_eject_jack(ptr nocapture noundef %nau8821) unnamed_addr #0 align 64 {
entry:
  %active_irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm1 = getelementptr inbounds %struct.nau8821, ptr %nau8821, i32 0, i32 2
  %0 = ptrtoint ptr %dapm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm1, align 4
  %regmap2 = getelementptr inbounds %struct.nau8821, ptr %nau8821, i32 0, i32 1
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 116, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 13, i32 noundef 49152, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call5 = tail call i32 @snd_soc_component_disable_pin(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.7) #8
  %call6 = tail call i32 @snd_soc_dapm_sync(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_irq.i) #8
  %4 = ptrtoint ptr %active_irq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %active_irq.i, align 4, !annotation !302
  %call.i23 = call i32 @regmap_read(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %active_irq.i) #8
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
  br i1 %exitcond.not.i, label %nau8821_int_status_clear_all.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

nau8821_int_status_clear_all.exit:                ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_irq.i) #8
  %call.i24 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 18, i32 noundef 5, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i25 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 15, i32 noundef 5, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i26 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 13, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp ult i32 %8, 2
  br i1 %cmp, label %if.then, label %nau8821_int_status_clear_all.exit.if.end_crit_edge

nau8821_int_status_clear_all.exit.if.end_crit_edge: ; preds = %nau8821_int_status_clear_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %nau8821_int_status_clear_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = call fastcc i32 @nau8821_configure_sysclk(ptr noundef %nau8821, i32 noundef 0, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %nau8821_int_status_clear_all.exit.if.end_crit_edge
  %call.i27 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 43, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nau8821_configure_sysclk(ptr nocapture noundef %nau8821, i32 noundef %clk_id, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i32, align 4
  %jkdet.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.nau8821, ptr %nau8821, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %2 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_id, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb10
    i32 4, label %sw.bb12
    i32 5, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 7168, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i5.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i6.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 7168, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status.i, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jkdet.i) #8
  %4 = ptrtoint ptr %jkdet.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %jkdet.i, align 4, !annotation !302
  %call.i47 = call i32 @regmap_read(ptr noundef %1, i32 noundef 13, ptr noundef nonnull %jkdet.i) #8
  %5 = ptrtoint ptr %jkdet.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %jkdet.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 130, ptr noundef nonnull %status.i) #8
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 4
  %and10.i = xor i32 %8, %6
  %9 = and i32 %and10.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jkdet.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br i1 %cmp.i, label %if.then, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i48 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i49 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i50 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i51 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 7295, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i52 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 6, i32 noundef 64512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i54 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 6, i32 noundef 64512, i32 noundef 63488, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i55 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 6, i32 noundef 64512, i32 noundef 64512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %nau8821 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nau8821, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef %clk_id) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb12, %sw.bb10, %if.then, %sw.bb3.sw.epilog_crit_edge, %sw.bb2, %sw.bb
  %clk_id16 = getelementptr inbounds %struct.nau8821, ptr %nau8821, i32 0, i32 6
  %12 = ptrtoint ptr %clk_id16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %clk_id, ptr %clk_id16, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_configure_sysclk.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_configure_sysclk, %if.then21)) #8
          to label %cleanup [label %if.then21], !srcloc !303

if.then21:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %nau8821 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nau8821, align 4
  %15 = ptrtoint ptr %clk_id16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk_id16, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_configure_sysclk.__UNIQUE_ID_ddebug299, ptr noundef %14, ptr noundef nonnull @.str.21, i32 noundef %freq, i32 noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then21 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
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
  store i32 -1, ptr %value, align 4, !annotation !302
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.25) #8
  %jkdet_enable.i = getelementptr inbounds %struct.nau8821, ptr %call.i, i32 0, i32 9
  %frombool.i = zext i1 %call.i.i to i8
  %3 = ptrtoint ptr %jkdet_enable.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool.i, ptr %jkdet_enable.i, align 4
  %call.i1.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.26) #8
  %jkdet_pull_enable.i = getelementptr inbounds %struct.nau8821, ptr %call.i, i32 0, i32 10
  %frombool2.i = zext i1 %call.i1.i to i8
  %4 = ptrtoint ptr %jkdet_pull_enable.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool2.i, ptr %jkdet_pull_enable.i, align 1
  %call.i2.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.27) #8
  %jkdet_pull_up.i = getelementptr inbounds %struct.nau8821, ptr %call.i, i32 0, i32 11
  %frombool4.i = zext i1 %call.i2.i to i8
  %5 = ptrtoint ptr %jkdet_pull_up.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool4.i, ptr %jkdet_pull_up.i, align 2
  %jkdet_polarity.i = getelementptr inbounds %struct.nau8821, ptr %call.i, i32 0, i32 12
  %call.i3.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.28, ptr noundef %jkdet_polarity.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %jkdet_polarity.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %jkdet_polarity.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %micbias_voltage.i = getelementptr inbounds %struct.nau8821, ptr %call.i, i32 0, i32 7
  %call.i4.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.29, ptr noundef %micbias_voltage.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool8.not.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then9.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %micbias_voltage.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %micbias_voltage.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end.i.if.end11.i_crit_edge
  %vref_impedance.i = getelementptr inbounds %struct.nau8821, ptr %call.i, i32 0, i32 8
  %call.i5.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef %vref_impedance.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool13.not.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end16.i_crit_edge, label %if.then14.i

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %vref_impedance.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %vref_impedance.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end16.i_crit_edge
  %jack_insert_debounce.i = getelementptr inbounds %struct.nau8821, ptr %call.i, i32 0, i32 13
  %call.i6.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef %jack_insert_debounce.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool18.not.i = icmp eq i32 %call.i6.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end21.i_crit_edge, label %if.then19.i

if.end16.i.if.end21.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %jack_insert_debounce.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %jack_insert_debounce.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end21.i_crit_edge
  %jack_eject_debounce.i = getelementptr inbounds %struct.nau8821, ptr %call.i, i32 0, i32 14
  %call.i7.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.32, ptr noundef %jack_eject_debounce.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool23.not.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end26.i_crit_edge, label %if.then24.i

if.end21.i.if.end26.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %jack_eject_debounce.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %jack_eject_debounce.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end26.i_crit_edge
  %dmic_clk_threshold.i = getelementptr inbounds %struct.nau8821, ptr %call.i, i32 0, i32 16
  %call.i8.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.33, ptr noundef %dmic_clk_threshold.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool28.not.i = icmp eq i32 %call.i8.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end7_crit_edge, label %if.then29.i

if.end26.i.if.end7_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dmic_clk_threshold.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3072000, ptr %dmic_clk_threshold.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then29.i, %if.end26.i.if.end7_crit_edge, %entry.if.end7_crit_edge
  %nau8821.0 = phi ptr [ %1, %entry.if.end7_crit_edge ], [ %call.i, %if.end26.i.if.end7_crit_edge ], [ %call.i, %if.then29.i ]
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %nau8821.0, ptr %driver_data.i.i, align 4
  %call8 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @nau8821_regmap_config, ptr noundef nonnull @nau8821_i2c_probe._key, ptr noundef nonnull @.str.22) #8
  %regmap = getelementptr inbounds %struct.nau8821, ptr %nau8821.0, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %nau8821.0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev1, ptr %nau8821.0, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %irq16 = getelementptr inbounds %struct.nau8821, ptr %nau8821.0, i32 0, i32 5
  %18 = ptrtoint ptr %irq16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %irq16, align 4
  tail call fastcc void @nau8821_print_device_properties(ptr noundef nonnull %nau8821.0)
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i58 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 0, i32 noundef 65535) #8
  %call1.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 0, i32 noundef 65535) #8
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_read(ptr noundef %22, i32 noundef 88, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %do.end

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call19) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i.i59 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 102, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i26.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 118, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %vref_impedance.i60 = getelementptr inbounds %struct.nau8821, ptr %nau8821.0, i32 0, i32 8
  %25 = ptrtoint ptr %vref_impedance.i60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vref_impedance.i60, align 4
  %shl.i = shl i32 %26, 4
  %or.i = or i32 %shl.i, 768
  %call.i27.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 102, i32 noundef 816, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i28.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 30, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i29.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 118, i32 noundef 9024, i32 noundef 9024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i30.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 75, i32 noundef 16128, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i31.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 106, i32 noundef 4099, i32 noundef 4099, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i32.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 128, i32 noundef 768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i33.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 115, i32 noundef 124, i32 noundef 44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %micbias_voltage.i61 = getelementptr inbounds %struct.nau8821, ptr %nau8821.0, i32 0, i32 7
  %27 = ptrtoint ptr %micbias_voltage.i61 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %micbias_voltage.i61, align 4
  %call.i34.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 116, i32 noundef 7, i32 noundef %28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i35.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 43, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i36.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 44, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool24.not = icmp eq i32 %30, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.then25

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %jkdet_enable.i63 = getelementptr inbounds %struct.nau8821, ptr %nau8821.0, i32 0, i32 9
  %33 = ptrtoint ptr %jkdet_enable.i63 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %jkdet_enable.i63, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i64 = icmp eq i8 %34, 0
  %cond.i = select i1 %tobool.not.i64, i32 256, i32 0
  %call.i.i65 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 26, i32 noundef 256, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jkdet_pull_enable.i66 = getelementptr inbounds %struct.nau8821, ptr %nau8821.0, i32 0, i32 10
  %35 = ptrtoint ptr %jkdet_pull_enable.i66 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %jkdet_pull_enable.i66, align 1, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool2.not.i = icmp eq i8 %36, 0
  %cond3.i = select i1 %tobool2.not.i, i32 512, i32 0
  %call.i1.i67 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 26, i32 noundef 512, i32 noundef %cond3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jkdet_pull_up.i68 = getelementptr inbounds %struct.nau8821, ptr %nau8821.0, i32 0, i32 11
  %37 = ptrtoint ptr %jkdet_pull_up.i68 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %jkdet_pull_up.i68, align 2, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool5.not.i = icmp eq i8 %38, 0
  %cond6.i = select i1 %tobool5.not.i, i32 0, i32 2048
  %call.i2.i69 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 26, i32 noundef 2048, i32 noundef %cond6.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jkdet_polarity.i70 = getelementptr inbounds %struct.nau8821, ptr %nau8821.0, i32 0, i32 12
  %39 = ptrtoint ptr %jkdet_polarity.i70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %jkdet_polarity.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool8.not.i71 = icmp eq i32 %40, 0
  %cond9.i = select i1 %tobool8.not.i71, i32 2, i32 0
  %call.i3.i72 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 13, i32 noundef 2, i32 noundef %cond9.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jack_insert_debounce.i73 = getelementptr inbounds %struct.nau8821, ptr %nau8821.0, i32 0, i32 13
  %41 = ptrtoint ptr %jack_insert_debounce.i73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %jack_insert_debounce.i73, align 4
  %shl.i74 = shl i32 %42, 5
  %call.i4.i75 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 13, i32 noundef 224, i32 noundef %shl.i74, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jack_eject_debounce.i76 = getelementptr inbounds %struct.nau8821, ptr %nau8821.0, i32 0, i32 14
  %43 = ptrtoint ptr %jack_eject_debounce.i76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %jack_eject_debounce.i76, align 4
  %shl12.i = shl i32 %44, 2
  %call.i5.i77 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 13, i32 noundef 28, i32 noundef %shl12.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i6.i78 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 15, i32 noundef 26624, i32 noundef 26624, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i7.i79 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 15, i32 noundef 1013, i32 noundef 1013, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  %call29 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @nau8821_component_driver, ptr noundef nonnull @nau8821_dai, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end, %if.then11, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then11 ], [ %call19, %do.end ], [ %call29, %if.end27 ], [ -12, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_i2c_remove(ptr nocapture noundef readonly %i2c_client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.nau8821, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %3, i32 noundef %5, ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8821_print_device_properties(ptr nocapture noundef readonly %nau8821) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nau8821 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nau8821, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_print_device_properties, %if.then)) #8
          to label %do.body5 [label %if.then], !srcloc !303

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %jkdet_enable = getelementptr inbounds %struct.nau8821, ptr %nau8821, i32 0, i32 9
  %2 = ptrtoint ptr %jkdet_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %jkdet_enable, align 4, !range !304
  %4 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_print_device_properties.__UNIQUE_ID_ddebug300, ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %4) #8
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_print_device_properties, %if.then17)) #8
          to label %do.body23 [label %if.then17], !srcloc !303

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %jkdet_pull_enable = getelementptr inbounds %struct.nau8821, ptr %nau8821, i32 0, i32 10
  %5 = ptrtoint ptr %jkdet_pull_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %jkdet_pull_enable, align 1, !range !304
  %7 = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_print_device_properties.__UNIQUE_ID_ddebug301, ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %7) #8
  br label %do.body23

do.body23:                                        ; preds = %if.then17, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_print_device_properties, %if.then35)) #8
          to label %do.body41 [label %if.then35], !srcloc !303

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %jkdet_pull_up = getelementptr inbounds %struct.nau8821, ptr %nau8821, i32 0, i32 11
  %8 = ptrtoint ptr %jkdet_pull_up to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %jkdet_pull_up, align 2, !range !304
  %10 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_print_device_properties.__UNIQUE_ID_ddebug302, ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %10) #8
  br label %do.body41

do.body41:                                        ; preds = %if.then35, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_print_device_properties, %if.then53)) #8
          to label %do.body57 [label %if.then53], !srcloc !303

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %jkdet_polarity = getelementptr inbounds %struct.nau8821, ptr %nau8821, i32 0, i32 12
  %11 = ptrtoint ptr %jkdet_polarity to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %jkdet_polarity, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_print_device_properties.__UNIQUE_ID_ddebug303, ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %12) #8
  br label %do.body57

do.body57:                                        ; preds = %if.then53, %do.body41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_print_device_properties, %if.then69)) #8
          to label %do.body73 [label %if.then69], !srcloc !303

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %micbias_voltage = getelementptr inbounds %struct.nau8821, ptr %nau8821, i32 0, i32 7
  %13 = ptrtoint ptr %micbias_voltage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %micbias_voltage, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_print_device_properties.__UNIQUE_ID_ddebug304, ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %14) #8
  br label %do.body73

do.body73:                                        ; preds = %if.then69, %do.body57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_print_device_properties, %if.then85)) #8
          to label %do.body89 [label %if.then85], !srcloc !303

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  %vref_impedance = getelementptr inbounds %struct.nau8821, ptr %nau8821, i32 0, i32 8
  %15 = ptrtoint ptr %vref_impedance to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vref_impedance, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_print_device_properties.__UNIQUE_ID_ddebug305, ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %16) #8
  br label %do.body89

do.body89:                                        ; preds = %if.then85, %do.body73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_print_device_properties, %if.then101)) #8
          to label %do.body105 [label %if.then101], !srcloc !303

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  %jack_insert_debounce = getelementptr inbounds %struct.nau8821, ptr %nau8821, i32 0, i32 13
  %17 = ptrtoint ptr %jack_insert_debounce to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %jack_insert_debounce, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_print_device_properties.__UNIQUE_ID_ddebug306, ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %18) #8
  br label %do.body105

do.body105:                                       ; preds = %if.then101, %do.body89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_print_device_properties, %if.then117)) #8
          to label %do.body121 [label %if.then117], !srcloc !303

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #10
  %jack_eject_debounce = getelementptr inbounds %struct.nau8821, ptr %nau8821, i32 0, i32 14
  %19 = ptrtoint ptr %jack_eject_debounce to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %jack_eject_debounce, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_print_device_properties.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %20) #8
  br label %do.body121

do.body121:                                       ; preds = %if.then117, %do.body105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_print_device_properties, %if.then133)) #8
          to label %do.end136 [label %if.then133], !srcloc !303

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #10
  %dmic_clk_threshold = getelementptr inbounds %struct.nau8821, ptr %nau8821, i32 0, i32 16
  %21 = ptrtoint ptr %dmic_clk_threshold to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dmic_clk_threshold, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_print_device_properties.__UNIQUE_ID_ddebug308, ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef %22) #8
  br label %do.end136

do.end136:                                        ; preds = %if.then133, %do.body121
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8821_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %reg, label %sw.default [
    i32 13, label %entry.return_crit_edge
    i32 15, label %entry.return_crit_edge15
    i32 81, label %entry.return_crit_edge16
    i32 85, label %entry.return_crit_edge17
    i32 90, label %entry.return_crit_edge18
    i32 102, label %entry.return_crit_edge19
    i32 126, label %entry.return_crit_edge20
    i32 127, label %entry.return_crit_edge21
    i32 128, label %entry.return_crit_edge22
    i32 118, label %entry.return_crit_edge23
    i32 119, label %entry.return_crit_edge24
    i32 113, label %entry.return_crit_edge25
    i32 114, label %entry.return_crit_edge26
    i32 115, label %entry.return_crit_edge27
    i32 116, label %entry.return_crit_edge28
    i32 104, label %entry.return_crit_edge29
    i32 105, label %entry.return_crit_edge30
    i32 106, label %entry.return_crit_edge31
    i32 107, label %entry.return_crit_edge32
    i32 78, label %entry.return_crit_edge33
    i32 79, label %entry.return_crit_edge34
    i32 65, label %entry.return_crit_edge35
    i32 66, label %entry.return_crit_edge36
    i32 67, label %entry.return_crit_edge37
    i32 68, label %entry.return_crit_edge38
    i32 69, label %entry.return_crit_edge39
    i32 70, label %entry.return_crit_edge40
    i32 71, label %entry.return_crit_edge41
    i32 72, label %entry.return_crit_edge42
    i32 73, label %entry.return_crit_edge43
    i32 74, label %entry.return_crit_edge44
    i32 75, label %entry.return_crit_edge45
    i32 76, label %entry.return_crit_edge46
    i32 52, label %entry.return_crit_edge47
    i32 53, label %entry.return_crit_edge48
    i32 54, label %entry.return_crit_edge49
    i32 55, label %entry.return_crit_edge50
    i32 56, label %entry.return_crit_edge51
    i32 57, label %entry.return_crit_edge52
    i32 58, label %entry.return_crit_edge53
    i32 59, label %entry.return_crit_edge54
    i32 60, label %entry.return_crit_edge55
    i32 61, label %entry.return_crit_edge56
    i32 47, label %entry.return_crit_edge57
    i32 48, label %entry.return_crit_edge58
    i32 49, label %entry.return_crit_edge59
    i32 50, label %entry.return_crit_edge60
    i32 33, label %entry.return_crit_edge61
    i32 34, label %entry.return_crit_edge62
    i32 35, label %entry.return_crit_edge63
    i32 36, label %entry.return_crit_edge64
    i32 37, label %entry.return_crit_edge65
    i32 38, label %entry.return_crit_edge66
    i32 39, label %entry.return_crit_edge67
    i32 40, label %entry.return_crit_edge68
    i32 41, label %entry.return_crit_edge69
    i32 42, label %entry.return_crit_edge70
    i32 43, label %entry.return_crit_edge71
    i32 44, label %entry.return_crit_edge72
    i32 45, label %entry.return_crit_edge73
    i32 26, label %entry.return_crit_edge74
    i32 27, label %entry.return_crit_edge75
    i32 28, label %entry.return_crit_edge76
    i32 29, label %entry.return_crit_edge77
    i32 30, label %entry.return_crit_edge78
    i32 31, label %entry.return_crit_edge79
    i32 17, label %entry.return_crit_edge80
    i32 18, label %entry.return_crit_edge81
    i32 19, label %entry.return_crit_edge82
    i32 3, label %entry.return_crit_edge83
    i32 4, label %entry.return_crit_edge84
    i32 5, label %entry.return_crit_edge85
    i32 6, label %entry.return_crit_edge86
    i32 7, label %entry.return_crit_edge87
    i32 8, label %entry.return_crit_edge88
    i32 9, label %entry.return_crit_edge89
    i32 10, label %entry.return_crit_edge90
    i32 11, label %entry.return_crit_edge91
    i32 0, label %entry.return_crit_edge92
    i32 1, label %entry.return_crit_edge93
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8821_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %reg, label %sw.default [
    i32 13, label %entry.return_crit_edge
    i32 81, label %entry.return_crit_edge17
    i32 102, label %entry.return_crit_edge18
    i32 126, label %entry.return_crit_edge19
    i32 127, label %entry.return_crit_edge20
    i32 128, label %entry.return_crit_edge21
    i32 129, label %entry.return_crit_edge22
    i32 130, label %entry.return_crit_edge23
    i32 118, label %entry.return_crit_edge24
    i32 119, label %entry.return_crit_edge25
    i32 113, label %entry.return_crit_edge26
    i32 114, label %entry.return_crit_edge27
    i32 115, label %entry.return_crit_edge28
    i32 116, label %entry.return_crit_edge29
    i32 104, label %entry.return_crit_edge30
    i32 105, label %entry.return_crit_edge31
    i32 106, label %entry.return_crit_edge32
    i32 107, label %entry.return_crit_edge33
    i32 88, label %entry.return_crit_edge34
    i32 89, label %entry.return_crit_edge35
    i32 90, label %entry.return_crit_edge36
    i32 83, label %entry.return_crit_edge37
    i32 84, label %entry.return_crit_edge38
    i32 85, label %entry.return_crit_edge39
    i32 65, label %entry.return_crit_edge40
    i32 66, label %entry.return_crit_edge41
    i32 67, label %entry.return_crit_edge42
    i32 68, label %entry.return_crit_edge43
    i32 69, label %entry.return_crit_edge44
    i32 70, label %entry.return_crit_edge45
    i32 71, label %entry.return_crit_edge46
    i32 72, label %entry.return_crit_edge47
    i32 73, label %entry.return_crit_edge48
    i32 74, label %entry.return_crit_edge49
    i32 75, label %entry.return_crit_edge50
    i32 76, label %entry.return_crit_edge51
    i32 77, label %entry.return_crit_edge52
    i32 78, label %entry.return_crit_edge53
    i32 79, label %entry.return_crit_edge54
    i32 52, label %entry.return_crit_edge55
    i32 53, label %entry.return_crit_edge56
    i32 54, label %entry.return_crit_edge57
    i32 55, label %entry.return_crit_edge58
    i32 56, label %entry.return_crit_edge59
    i32 57, label %entry.return_crit_edge60
    i32 58, label %entry.return_crit_edge61
    i32 59, label %entry.return_crit_edge62
    i32 60, label %entry.return_crit_edge63
    i32 61, label %entry.return_crit_edge64
    i32 47, label %entry.return_crit_edge65
    i32 48, label %entry.return_crit_edge66
    i32 49, label %entry.return_crit_edge67
    i32 50, label %entry.return_crit_edge68
    i32 33, label %entry.return_crit_edge69
    i32 34, label %entry.return_crit_edge70
    i32 35, label %entry.return_crit_edge71
    i32 36, label %entry.return_crit_edge72
    i32 37, label %entry.return_crit_edge73
    i32 38, label %entry.return_crit_edge74
    i32 39, label %entry.return_crit_edge75
    i32 40, label %entry.return_crit_edge76
    i32 41, label %entry.return_crit_edge77
    i32 42, label %entry.return_crit_edge78
    i32 43, label %entry.return_crit_edge79
    i32 44, label %entry.return_crit_edge80
    i32 45, label %entry.return_crit_edge81
    i32 26, label %entry.return_crit_edge82
    i32 27, label %entry.return_crit_edge83
    i32 28, label %entry.return_crit_edge84
    i32 29, label %entry.return_crit_edge85
    i32 30, label %entry.return_crit_edge86
    i32 31, label %entry.return_crit_edge87
    i32 15, label %entry.return_crit_edge88
    i32 16, label %entry.return_crit_edge89
    i32 17, label %entry.return_crit_edge90
    i32 18, label %entry.return_crit_edge91
    i32 19, label %entry.return_crit_edge92
    i32 3, label %entry.return_crit_edge93
    i32 4, label %entry.return_crit_edge94
    i32 5, label %entry.return_crit_edge95
    i32 6, label %entry.return_crit_edge96
    i32 7, label %entry.return_crit_edge97
    i32 8, label %entry.return_crit_edge98
    i32 9, label %entry.return_crit_edge99
    i32 10, label %entry.return_crit_edge100
    i32 11, label %entry.return_crit_edge101
    i32 0, label %entry.return_crit_edge102
    i32 1, label %entry.return_crit_edge103
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8821_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 77, label %entry.return_crit_edge8
    i32 129, label %entry.return_crit_edge9
    i32 130, label %entry.return_crit_edge10
    i32 88, label %entry.return_crit_edge11
    i32 89, label %entry.return_crit_edge12
    i32 90, label %entry.return_crit_edge13
    i32 83, label %entry.return_crit_edge14
    i32 84, label %entry.return_crit_edge15
    i32 65, label %entry.return_crit_edge16
    i32 66, label %entry.return_crit_edge17
    i32 67, label %entry.return_crit_edge18
    i32 68, label %entry.return_crit_edge19
    i32 69, label %entry.return_crit_edge20
    i32 70, label %entry.return_crit_edge21
    i32 71, label %entry.return_crit_edge22
    i32 72, label %entry.return_crit_edge23
    i32 73, label %entry.return_crit_edge24
    i32 74, label %entry.return_crit_edge25
    i32 33, label %entry.return_crit_edge26
    i32 34, label %entry.return_crit_edge27
    i32 35, label %entry.return_crit_edge28
    i32 36, label %entry.return_crit_edge29
    i32 37, label %entry.return_crit_edge30
    i32 38, label %entry.return_crit_edge31
    i32 39, label %entry.return_crit_edge32
    i32 40, label %entry.return_crit_edge33
    i32 41, label %entry.return_crit_edge34
    i32 42, label %entry.return_crit_edge35
    i32 16, label %entry.return_crit_edge36
    i32 17, label %entry.return_crit_edge37
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nau8821_component_probe(ptr noundef %component) #6 align 64 {
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
  %dapm2 = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dapm2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dapm.i, ptr %dapm2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_suspend(ptr noundef %component) #0 align 64 {
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
  %irq = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 5
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
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 0) #8
  %call3 = tail call i32 @snd_soc_component_disable_pin(ptr noundef %component, ptr noundef nonnull @.str.7) #8
  %dapm = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dapm, align 4
  %call4 = tail call i32 @snd_soc_dapm_sync(ptr noundef %7) #8
  %regmap = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %9, i1 noundef zeroext true) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %11) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_resume(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %regmap = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %7) #8
  %irq = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 5
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
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @enable_irq(i32 noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %call1 = tail call fastcc i32 @nau8821_configure_sysclk(ptr noundef %3, i32 noundef %clk_id, i32 noundef %freq)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_set_fll(ptr nocapture noundef readonly %component, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #0 align 64 {
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
  %shr = lshr i32 %freq_out, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500001, i32 %freq_in)
  %cmp1.i = icmp ult i32 %freq_in, 13500001
  br i1 %cmp1.i, label %if.end4.i, label %for.inc.i

for.inc.i:                                        ; preds = %entry
  %shr.1.i = lshr i32 %freq_in, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000002, i32 %freq_in)
  %cmp1.1.i = icmp ult i32 %freq_in, 27000002
  br i1 %cmp1.1.i, label %for.inc.i.if.end4.thread.i_crit_edge, label %for.inc.1.i

for.inc.i.if.end4.thread.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.thread.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %shr.2.i = lshr i32 %freq_in, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000004, i32 %freq_in)
  %cmp1.2.i = icmp ult i32 %freq_in, 54000004
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end4.thread.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end4.thread.i_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.thread.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %shr.3.i = lshr i32 %freq_in, 3
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
  %i.0108.lcssa.ph.i = phi i32 [ 3, %for.inc.2.i.if.end4.thread.i_crit_edge ], [ 2, %for.inc.1.i.if.end4.thread.i_crit_edge ], [ 1, %for.inc.i.if.end4.thread.i_crit_edge ]
  %shr.lcssa.ph.i = phi i32 [ %shr.3.i, %for.inc.2.i.if.end4.thread.i_crit_edge ], [ %shr.2.i, %for.inc.1.i.if.end4.thread.i_crit_edge ], [ %shr.1.i, %for.inc.i.if.end4.thread.i_crit_edge ]
  %val120.i = getelementptr [4 x %struct.nau8821_fll_attr], ptr @fll_pre_scalar, i32 0, i32 %i.0108.lcssa.ph.i, i32 1
  %4 = ptrtoint ptr %val120.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val120.i, align 4
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
  %fll_set_param.sroa.20.0 = phi i32 [ 0, %for.inc14.5.i.if.end19.i_crit_edge ], [ 0, %for.inc14.4.i.if.end19.i_crit_edge ], [ 0, %for.inc14.3.i.if.end19.i_crit_edge ], [ 0, %for.inc14.2.i.if.end19.i_crit_edge ], [ 0, %for.inc14.1.i.if.end19.i_crit_edge ], [ 0, %for.inc14.i.if.end19.i_crit_edge ], [ 0, %if.end4.i.if.end19.i_crit_edge ], [ %5, %if.end4.thread.i ]
  %shr.lcssa124.i = phi i32 [ %freq_in, %for.inc14.5.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.4.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.3.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.2.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.1.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.i.if.end19.i_crit_edge ], [ %freq_in, %if.end4.i.if.end19.i_crit_edge ], [ %shr.lcssa.ph.i, %if.end4.thread.i ]
  %i.1109.lcssa.i = phi i32 [ 6, %for.inc14.5.i.if.end19.i_crit_edge ], [ 5, %for.inc14.4.i.if.end19.i_crit_edge ], [ 4, %for.inc14.3.i.if.end19.i_crit_edge ], [ 3, %for.inc14.2.i.if.end19.i_crit_edge ], [ 2, %for.inc14.1.i.if.end19.i_crit_edge ], [ 1, %for.inc14.i.if.end19.i_crit_edge ], [ 0, %if.end4.i.if.end19.i_crit_edge ], [ 0, %if.end4.thread.i ]
  %val21.i = getelementptr [7 x %struct.nau8821_fll_attr], ptr @fll_ratio, i32 0, i32 %i.1109.lcssa.i, i32 1
  %6 = ptrtoint ptr %val21.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val21.i, align 4
  %conv.i = zext i32 %shr to i64
  %mul25.i = shl nuw nsw i64 %conv.i, 9
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %if.end19.i
  %fvco_sel.0112.i = phi i32 [ 13, %if.end19.i ], [ %fvco_sel.1.i, %for.body24.i.for.body24.i_crit_edge ]
  %i.2111.i = phi i32 [ 0, %if.end19.i ], [ %inc40.i, %for.body24.i.for.body24.i_crit_edge ]
  %fvco_max.0110.i = phi i64 [ 0, %if.end19.i ], [ %fvco_max.1.i, %for.body24.i.for.body24.i_crit_edge ]
  %arrayidx26.i = getelementptr [13 x %struct.nau8821_fll_attr], ptr @mclk_src_scaling, i32 0, i32 %i.2111.i
  %8 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx26.i, align 4
  %conv28.i = zext i32 %9 to i64
  %mul29.i = mul i64 %mul25.i, %conv28.i
  %10 = add i64 %mul29.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %10)
  %11 = icmp ult i64 %10, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.0110.i, i64 %mul29.i)
  %cmp35.i = icmp ult i64 %fvco_max.0110.i, %mul29.i
  %or.cond85.i = select i1 %11, i1 %cmp35.i, i1 false
  %fvco_max.1.i = select i1 %or.cond85.i, i64 %mul29.i, i64 %fvco_max.0110.i
  %fvco_sel.1.i = select i1 %or.cond85.i, i32 %i.2111.i, i32 %fvco_sel.0112.i
  %inc40.i = add nuw nsw i32 %i.2111.i, 1
  %exitcond.not.i = icmp eq i32 %inc40.i, 13
  br i1 %exitcond.not.i, label %for.end41.i, label %for.body24.i.for.body24.i_crit_edge

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.i

for.end41.i:                                      ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %fvco_sel.1.i)
  %cmp42.i = icmp eq i32 %fvco_sel.1.i, 13
  br i1 %cmp42.i, label %for.end41.i.do.end_crit_edge, label %if.end45.i

for.end41.i.do.end_crit_edge:                     ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end45.i:                                       ; preds = %for.end41.i
  %val47.i = getelementptr [13 x %struct.nau8821_fll_attr], ptr @mclk_src_scaling, i32 0, i32 %fvco_sel.1.i, i32 1
  %12 = ptrtoint ptr %val47.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val47.i, align 4
  %shl.i = shl i64 %fvco_max.1.i, 24
  %mul49.i = mul i32 %7, %shr.lcssa124.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl.i)
  %cmp164.i.i.i = icmp ult i64 %shl.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !305

if.then168.i.i.i:                                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %shl.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %mul49.i
  %14 = lshr i32 %div172.i.i.i, 24
  br label %do.body2

if.else174.i.i.i:                                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul49.i, i64 %shl.i) #12, !srcloc !306
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %15, 1
  %extract.t94.i = trunc i64 %asmresult1.i.i.i.i to i32
  %extract99.i = lshr i64 %asmresult1.i.i.i.i, 24
  %extract.t100.i = trunc i64 %extract99.i to i32
  br label %do.body2

do.end:                                           ; preds = %for.end41.i.do.end_crit_edge, %for.inc14.5.i.do.end_crit_edge, %for.inc.2.i.do.end_crit_edge
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.109, i32 noundef %freq_in, i32 noundef %freq_out) #11
  br label %cleanup

do.body2:                                         ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t94.i, %if.else174.i.i.i ]
  %dividend.addr.0.i.i.off24.i = phi i32 [ %14, %if.then168.i.i.i ], [ %extract.t100.i, %if.else174.i.i.i ]
  %conv51.i = and i32 %dividend.addr.0.i.i.off24.i, 1023
  %conv53.i = and i32 %dividend.addr.0.i.i.off0.i, 16777215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8821_set_fll.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8821_set_fll, %if.then7)) #8
          to label %do.end11 [label %if.then7], !srcloc !303

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8821_set_fll.__UNIQUE_ID_ddebug298, ptr noundef %19, ptr noundef nonnull @.str.111, i32 noundef %13, i32 noundef %7, i32 noundef %conv53.i, i32 noundef %conv51.i, i32 noundef %fll_set_param.sroa.20.0) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body2
  %regmap1.i = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap1.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 3, i32 noundef 32783, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %or2.i = or i32 %7, 6144
  %call.i35.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4, i32 noundef 7295, i32 noundef %or2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = lshr i32 %conv53.i, 16
  %call4.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 10, i32 noundef %22) #8
  %and6.i = and i32 %dividend.addr.0.i.i.off0.i, 65535
  %call7.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 11, i32 noundef %and6.i) #8
  %call.i36.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 6, i32 noundef 1023, i32 noundef %conv51.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %shl.i34 = shl i32 %fll_set_param.sroa.20.0, 10
  %or9.i = or i32 %shl.i34, 32768
  %call.i37.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 7, i32 noundef 35840, i32 noundef %or9.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i38.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 8, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i39.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv53.i)
  %tobool.not.i = icmp eq i32 %conv53.i, 0
  %..i = select i1 %tobool.not.i, i32 4096, i32 49152
  %.45.i = select i1 %tobool.not.i, i32 0, i32 24576
  %call.i42.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 8, i32 noundef 53248, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i43.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 9, i32 noundef 24576, i32 noundef %.45.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 429496000) #8
  %24 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap1.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 3, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
entry:
  %active_irq.i.i = alloca i32, align 4
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
  %regmap1 = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1, align 4
  %6 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb4
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %7 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %call.i = tail call fastcc i32 @nau8821_configure_sysclk(ptr noundef %3, i32 noundef 0, i32 noundef 0) #8
  %irq.i = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then.sw.epilog_crit_edge, label %if.then.i

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_irq.i.i) #8
  %11 = ptrtoint ptr %active_irq.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %active_irq.i.i, align 4, !annotation !302
  %call.i.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %active_irq.i.i) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i
  %i.06.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 1, %i.06.i.i
  %12 = ptrtoint ptr %active_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_irq.i.i, align 4
  %and.i.i = and i32 %13, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = call i32 @regmap_write(ptr noundef %5, i32 noundef 17, i32 noundef %shl.i.i) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %nau8821_int_status_clear_all.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

nau8821_int_status_clear_all.exit.i:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_irq.i.i) #8
  %call.i1.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 15, i32 noundef 5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i2.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 13, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i3.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 18, i32 noundef 5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 13, i32 noundef 49152, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %irq = getelementptr inbounds %struct.nau8821, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %sw.bb4.sw.epilog_crit_edge, label %if.then6

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 116, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call8 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 18, i32 noundef 65535) #8
  %call.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 15, i32 noundef 5, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then6, %sw.bb4.sw.epilog_crit_edge, %nau8821_int_status_clear_all.exit.i, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_info_ext(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_biq_coeff_get(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %regmap = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %6 = inttoptr i32 %5 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call = tail call i32 @regmap_raw_read(ptr noundef nonnull %3, i32 noundef 33, ptr noundef %value, i32 noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_biq_coeff_put(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %regmap = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %call = tail call ptr @kmemdup(ptr noundef %value, i32 noundef %8, i32 noundef 3265) #8
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %4, align 4
  %call6 = tail call i32 @regmap_raw_write(ptr noundef %10, i32 noundef 33, ptr noundef nonnull %call, i32 noundef %12) #8
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmic_clock_control(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #0 align 64 {
entry:
  %clk_divider_r03 = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_divider_r03) #8
  %6 = ptrtoint ptr %clk_divider_r03 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %clk_divider_r03, align 4, !annotation !302
  %regmap = getelementptr inbounds %struct.nau8821, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 3, ptr noundef nonnull %clk_divider_r03) #8
  %9 = ptrtoint ptr %clk_divider_r03 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clk_divider_r03, align 4
  %and = lshr i32 %10, 6
  %shr = and i32 %and, 3
  %fs = getelementptr inbounds %struct.nau8821, ptr %5, i32 0, i32 15
  %11 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fs, align 4
  %mul = shl i32 %12, 8
  %shr3 = ashr i32 %mul, %shr
  %dmic_clk_threshold = getelementptr inbounds %struct.nau8821, ptr %5, i32 0, i32 16
  %13 = ptrtoint ptr %dmic_clk_threshold to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dmic_clk_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr3, i32 %14)
  %cmp5.not = icmp sgt i32 %shr3, %14
  br i1 %cmp5.not, label %for.inc, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc:                                          ; preds = %entry
  %shr4.1 = ashr exact i32 %shr3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr4.1, i32 %14)
  %cmp5.not.1 = icmp sgt i32 %shr4.1, %14
  br i1 %cmp5.not.1, label %for.inc.1, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.1:                                        ; preds = %for.inc
  %shr4.2 = ashr exact i32 %shr3, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr4.2, i32 %14)
  %cmp5.not.2 = icmp sgt i32 %shr4.2, %14
  br i1 %cmp5.not.2, label %for.inc.2, label %for.inc.1.do.body_crit_edge

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.2:                                        ; preds = %for.inc.1
  %shr4.3 = ashr exact i32 %shr3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr4.3, i32 %14)
  %cmp5.not.3 = icmp sgt i32 %shr4.3, %14
  br i1 %cmp5.not.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.2.do.body_crit_edge

for.inc.2.do.body_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %for.inc.2.do.body_crit_edge, %for.inc.1.do.body_crit_edge, %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %i.046.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ 1, %for.inc.do.body_crit_edge ], [ 2, %for.inc.1.do.body_crit_edge ], [ 3, %for.inc.2.do.body_crit_edge ]
  %val = getelementptr [4 x %struct.nau8821_dmic_speed], ptr @dmic_speed_sel, i32 0, i32 %i.046.lcssa, i32 1
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %phi.bo = shl i32 %16, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmic_clock_control.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmic_clock_control, %if.then13)) #8
          to label %do.end [label %if.then13], !srcloc !303

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %19 = ptrtoint ptr %dmic_clk_threshold to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dmic_clk_threshold, align 4
  %arrayidx15 = getelementptr [4 x %struct.nau8821_dmic_speed], ptr @dmic_speed_sel, i32 0, i32 %i.046.lcssa
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx15, align 4
  %val18 = getelementptr [4 x %struct.nau8821_dmic_speed], ptr @dmic_speed_sel, i32 0, i32 %i.046.lcssa, i32 1
  %23 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val18, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dmic_clock_control.__UNIQUE_ID_ddebug294, ptr noundef %18, ptr noundef nonnull @.str.106, i32 noundef %shr3, i32 noundef %20, i32 noundef %22, i32 noundef %24) #8
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 19, i32 noundef 6, i32 noundef %phi.bo, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc.2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %for.inc.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_divider_r03) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_left_adc_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 125) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 256, %sw.bb ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8821, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 1, i32 noundef 256, i32 noundef %.sink9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_right_adc_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 125) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 512, %sw.bb ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8821, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 1, i32 noundef 512, i32 noundef %.sink9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_pump_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.121)
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
  tail call void @msleep(i32 noundef 20) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 1024, %sw.bb ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8821, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 128, i32 noundef 1024, i32 noundef %.sink9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_output_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.122)
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
  %.sink9 = phi i32 [ 768, %sw.bb3 ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8821, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 102, i32 noundef 768, i32 noundef %.sink9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
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
define internal i32 @nau8821_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #0 align 64 {
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.123)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ctrl2_val.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 8, %sw.bb ]
  %and2 = and i32 %fmt, 3840
  %8 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %and2, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog6_crit_edge
    i32 768, label %sw.bb3
  ]

sw.epilog.sw.epilog6_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog6

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog6

sw.epilog6:                                       ; preds = %sw.bb3, %sw.epilog.sw.epilog6_crit_edge
  %ctrl1_val.0 = phi i32 [ 128, %sw.bb3 ], [ %and2, %sw.epilog.sw.epilog6_crit_edge ]
  %and7 = and i32 %fmt, 15
  %9 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %and7, label %sw.epilog6.cleanup_crit_edge [
    i32 1, label %sw.bb8
    i32 3, label %sw.bb10
    i32 2, label %sw.epilog6.sw.epilog20_crit_edge
    i32 4, label %sw.bb14
    i32 5, label %sw.bb16
  ]

sw.epilog6.sw.epilog20_crit_edge:                 ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog20

sw.epilog6.cleanup_crit_edge:                     ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #10
  %or9 = or i32 %ctrl1_val.0, 2
  br label %sw.epilog20

sw.bb10:                                          ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #10
  %or11 = or i32 %ctrl1_val.0, 1
  br label %sw.epilog20

sw.bb14:                                          ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #10
  %or15 = or i32 %ctrl1_val.0, 3
  br label %sw.epilog20

sw.bb16:                                          ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #10
  %or18 = or i32 %ctrl1_val.0, 67
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.bb16, %sw.bb14, %sw.bb10, %sw.bb8, %sw.epilog6.sw.epilog20_crit_edge
  %ctrl1_val.1 = phi i32 [ %or18, %sw.bb16 ], [ %or15, %sw.bb14 ], [ %or11, %sw.bb10 ], [ %or9, %sw.bb8 ], [ %ctrl1_val.0, %sw.epilog6.sw.epilog20_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8821, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 28, i32 noundef 207, i32 noundef %ctrl1_val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 29, i32 noundef 8, i32 noundef %ctrl2_val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog20, %sw.epilog6.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog20 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_digital_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %spec.store.select = select i1 %tobool.not, i32 0, i32 512
  %regmap = getelementptr inbounds %struct.nau8821, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 49, i32 noundef 512, i32 noundef %spec.store.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8821_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  store i32 -1, ptr %osr, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_val) #8
  %7 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ctrl_val, align 4, !annotation !302
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %fs = getelementptr inbounds %struct.nau8821, ptr %5, i32 0, i32 15
  %10 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fs, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %11 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  %regmap = getelementptr inbounds %struct.nau8821, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call i32 @regmap_read(ptr noundef %14, i32 noundef 44, ptr noundef nonnull %osr) #8
  %15 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %osr, align 4
  %and = and i32 %16, 7
  store i32 %and, ptr %osr, align 4
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream, align 4
  %19 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp eq i32 %18, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp1.i = icmp ugt i32 %and, 4
  br i1 %cmp1.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [5 x %struct.nau8821_osr_attr], ptr @osr_dac_sel, i32 0, i32 %and
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
  %arrayidx7.i = getelementptr [4 x %struct.nau8821_osr_attr], ptr @osr_adc_sel, i32 0, i32 %and
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end6.i, %if.end.i
  %osrate.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %arrayidx7.i, %if.end6.i ]
  %21 = ptrtoint ptr %osrate.0.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %osrate.0.i = load i32, ptr %osrate.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %osrate.0.i)
  %tobool.not.i = icmp eq i32 %osrate.0.i, 0
  %mul.i = mul i32 %osrate.0.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144000, i32 %mul.i)
  %cmp10.i = icmp sgt i32 %mul.i, 6144000
  %or.cond.i = or i1 %tobool.not.i, %cmp10.i
  br i1 %or.cond.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.113) #11
  br label %cleanup

if.end:                                           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %26 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %osr, align 4
  %clk_src = getelementptr [5 x %struct.nau8821_osr_attr], ptr @osr_dac_sel, i32 0, i32 %27, i32 1
  %28 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clk_src, align 4
  %shl = shl i32 %29, 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 3, i32 noundef 48, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end24

if.else:                                          ; preds = %entry
  %call11 = call i32 @regmap_read(ptr noundef %14, i32 noundef 43, ptr noundef nonnull %osr) #8
  %30 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %osr, align 4
  %and12 = and i32 %31, 3
  store i32 %and12, ptr %osr, align 4
  %32 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stream, align 4
  %34 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i87 = icmp eq i32 %33, 0
  %arrayidx.i89 = getelementptr [5 x %struct.nau8821_osr_attr], ptr @osr_dac_sel, i32 0, i32 %and12
  %arrayidx7.i92 = getelementptr [4 x %struct.nau8821_osr_attr], ptr @osr_adc_sel, i32 0, i32 %and12
  %osrate.0.in.i94 = select i1 %cmp.i87, ptr %arrayidx.i89, ptr %arrayidx7.i92
  %36 = ptrtoint ptr %osrate.0.in.i94 to i32
  call void @__asan_load4_noabort(i32 %36)
  %osrate.0.i95 = load i32, ptr %osrate.0.in.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %osrate.0.i95)
  %tobool.not.i96 = icmp eq i32 %osrate.0.i95, 0
  %mul.i97 = mul i32 %osrate.0.i95, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144000, i32 %mul.i97)
  %cmp10.i98 = icmp sgt i32 %mul.i97, 6144000
  %or.cond.i99 = or i1 %tobool.not.i96, %cmp10.i98
  br i1 %or.cond.i99, label %nau8821_clock_check.exit103, label %if.end18

nau8821_clock_check.exit103:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.113) #11
  br label %cleanup

if.end18:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %41 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %osr, align 4
  %clk_src21 = getelementptr [4 x %struct.nau8821_osr_attr], ptr @osr_adc_sel, i32 0, i32 %42, i32 1
  %43 = ptrtoint ptr %clk_src21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %clk_src21, align 4
  %shl22 = shl i32 %44, 6
  %call.i104 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 3, i32 noundef 192, i32 noundef %shl22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end24

if.end24:                                         ; preds = %if.end18, %if.end
  %regmap25 = getelementptr inbounds %struct.nau8821, ptr %5, i32 0, i32 1
  %45 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap25, align 4
  %call26 = call i32 @regmap_read(ptr noundef %46, i32 noundef 29, ptr noundef nonnull %ctrl_val) #8
  %47 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctrl_val, align 4
  %and27 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end24.if.end47_crit_edge, label %if.then29

if.end24.if.end47_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then29:                                        ; preds = %if.end24
  %call30 = call i32 @snd_soc_params_to_bclk(ptr noundef %params) #8
  %49 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fs, align 4
  %div = sdiv i32 %call30, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %div)
  %cmp32 = icmp ult i32 %div, 33
  br i1 %cmp32, label %if.then29.if.end43_crit_edge, label %if.else34

if.then29.if.end43_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.else34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %div)
  %cmp35 = icmp ult i32 %div, 65
  br i1 %cmp35, label %if.else34.if.end43_crit_edge, label %if.else37

if.else34.if.end43_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.else37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %div)
  %cmp38 = icmp ult i32 %div, 129
  br i1 %cmp38, label %if.else37.if.end43_crit_edge, label %if.else37.cleanup_crit_edge

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else37.if.end43_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end43:                                         ; preds = %if.else37.if.end43_crit_edge, %if.else34.if.end43_crit_edge, %if.then29.if.end43_crit_edge
  %clk_div.0 = phi i32 [ 12291, %if.then29.if.end43_crit_edge ], [ 8194, %if.else34.if.end43_crit_edge ], [ 4097, %if.else37.if.end43_crit_edge ]
  %51 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap25, align 4
  %call.i105 = call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 29, i32 noundef 12295, i32 noundef %clk_div.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end47

if.end47:                                         ; preds = %if.end43, %if.end24.if.end47_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end47.if.then.i.i.i_crit_edge

if.end47.if.then.i.i.i_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end47.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end47.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %54, %if.end47.if.then.i.i.i_crit_edge ], [ %57, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %55 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !307
  %add.i.i.i = or i32 %55, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end47
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.1.i.i.i = icmp eq i32 %57, 0
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
  %58 = add i32 %call1.i, -16
  %59 = call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %59)
  %60 = icmp ult i32 %59, 5
  br i1 %60, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %59 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %61 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %switch.lobit.not = icmp eq i8 %61, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.nau8821_hw_params, i32 0, i32 %59
  %62 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %62)
  %switch.load = load i32, ptr %switch.gep, align 4
  %63 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap25, align 4
  %call.i106 = call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 28, i32 noundef 12, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %if.else37.cleanup_crit_edge, %nau8821_clock_check.exit103, %do.end.i, %if.else.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %nau8821_clock_check.exit103 ], [ -22, %if.else37.cleanup_crit_edge ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !17, !18, !20, !22, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !60, !62, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !191, !193, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !251, !252, !254, !256, !258, !260, !262, !263, !264, !265, !267, !268, !270, !272, !274, !276, !278, !280, !282, !283, !284, !285, !287, !289, !291}
!llvm.module.flags = !{!293, !294, !295, !296, !297, !298, !299, !300}
!llvm.ident = !{!301}

!0 = !{ptr @nau8821_enable_jack_detect.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/nau8821.c", i32 1456, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/nau8821.c", i32 1459, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/nau8821.c", i32 1461, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nau8821_enable_jack_detect._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @nau8821_enable_jack_detect._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_nau8821_enable_jack_detect, !14, !"__ksymtab_nau8821_enable_jack_detect", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/nau8821.c", i32 1468, i32 1}
!15 = !{ptr @__initcall__kmod_snd_soc_nau8821__309_1709_nau8821_driver_init6, !16, !"__initcall__kmod_snd_soc_nau8821__309_1709_nau8821_driver_init6", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/nau8821.c", i32 1709, i32 1}
!17 = !{ptr @__exitcall_nau8821_driver_exit, !16, !"__exitcall_nau8821_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description310, !19, !"__UNIQUE_ID_description310", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/nau8821.c", i32 1711, i32 1}
!20 = !{ptr @__UNIQUE_ID_author311, !21, !"__UNIQUE_ID_author311", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/nau8821.c", i32 1712, i32 1}
!22 = !{ptr @__UNIQUE_ID_author312, !23, !"__UNIQUE_ID_author312", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/nau8821.c", i32 1713, i32 1}
!24 = !{ptr @__UNIQUE_ID_file313, !25, !"__UNIQUE_ID_file313", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/nau8821.c", i32 1714, i32 1}
!26 = !{ptr @__UNIQUE_ID_license314, !25, !"__UNIQUE_ID_license314", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/nau8821.c", i32 924, i32 48}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/nau8821.c", i32 931, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nau8821_jdet_work.__UNIQUE_ID_ddebug295, !30, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/nau8821.c", i32 943, i32 3}
!36 = !{ptr @nau8821_jdet_work.__UNIQUE_ID_ddebug296, !35, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/nau8821.c", i32 988, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nau8821_interrupt._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @nau8821_interrupt._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/nau8821.c", i32 992, i32 2}
!44 = !{ptr @nau8821_interrupt.__UNIQUE_ID_ddebug297, !43, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/nau8821.c", i32 1020, i32 4}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @nau8821_interrupt._entry.15, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @nau8821_interrupt._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/nau8821.c", i32 1299, i32 3}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @nau8821_configure_sysclk._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @nau8821_configure_sysclk._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/nau8821.c", i32 1303, i32 2}
!57 = !{ptr @nau8821_configure_sysclk.__UNIQUE_ID_ddebug299, !56, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!58 = !{ptr @nau8821_driver, !59, !"nau8821_driver", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/nau8821.c", i32 1699, i32 26}
!60 = !{ptr @nau8821_i2c_probe._key, !61, !"_key", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/nau8821.c", i32 1643, i32 20}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/nau8821.c", i32 1654, i32 3}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @nau8821_i2c_probe._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @nau8821_i2c_probe._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/nau8821.c", i32 1500, i32 3}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/nau8821.c", i32 1502, i32 3}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/nau8821.c", i32 1504, i32 3}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/nau8821.c", i32 1505, i32 38}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/nau8821.c", i32 1509, i32 38}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/nau8821.c", i32 1513, i32 38}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/nau8821.c", i32 1517, i32 38}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/nau8821.c", i32 1521, i32 38}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/nau8821.c", i32 1525, i32 38}
!86 = !{ptr @nau8821_regmap_config, !87, !"nau8821_regmap_config", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/nau8821.c", i32 1037, i32 35}
!88 = !{ptr @nau8821_reg_defaults, !89, !"nau8821_reg_defaults", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/nau8821.c", i32 119, i32 33}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/nau8821.c", i32 1480, i32 2}
!92 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug300, !91, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/nau8821.c", i32 1481, i32 2}
!96 = !{ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug301, !95, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/nau8821.c", i32 1482, i32 2}
!99 = !{ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug302, !98, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/nau8821.c", i32 1483, i32 2}
!102 = !{ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug303, !101, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/nau8821.c", i32 1484, i32 2}
!105 = !{ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug304, !104, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/nau8821.c", i32 1485, i32 2}
!108 = !{ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug305, !107, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/nau8821.c", i32 1486, i32 2}
!111 = !{ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug306, !110, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/nau8821.c", i32 1488, i32 2}
!114 = !{ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug307, !113, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/nau8821.c", i32 1490, i32 2}
!117 = !{ptr @nau8821_print_device_properties.__UNIQUE_ID_ddebug308, !116, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!118 = !{ptr @nau8821_component_driver, !119, !"nau8821_component_driver", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/nau8821.c", i32 1418, i32 46}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/nau8821.c", i32 330, i32 2}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/nau8821.c", i32 333, i32 2}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/nau8821.c", i32 335, i32 2}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/nau8821.c", i32 337, i32 2}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/nau8821.c", i32 340, i32 2}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/nau8821.c", i32 343, i32 2}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/nau8821.c", i32 347, i32 2}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/nau8821.c", i32 348, i32 2}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/nau8821.c", i32 349, i32 2}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/nau8821.c", i32 351, i32 2}
!140 = !{ptr @nau8821_controls, !141, !"nau8821_controls", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/nau8821.c", i32 329, i32 38}
!142 = !{ptr @adc_vol_tlv, !143, !"adc_vol_tlv", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/nau8821.c", i32 322, i32 14}
!144 = !{ptr @sidetone_vol_tlv, !145, !"sidetone_vol_tlv", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/nau8821.c", i32 323, i32 14}
!146 = !{ptr @hp_vol_tlv, !147, !"hp_vol_tlv", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/nau8821.c", i32 324, i32 14}
!148 = !{ptr @playback_vol_tlv, !149, !"playback_vol_tlv", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/nau8821.c", i32 325, i32 14}
!150 = !{ptr @fepga_gain_tlv, !151, !"fepga_gain_tlv", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/nau8821.c", i32 326, i32 14}
!152 = !{ptr @crosstalk_vol_tlv, !153, !"crosstalk_vol_tlv", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/nau8821.c", i32 327, i32 14}
!154 = !{ptr @nau8821_adc_decimation_enum, !155, !"nau8821_adc_decimation_enum", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/nau8821.c", i32 311, i32 30}
!156 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/nau8821.c", i32 309, i32 2}
!158 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/nau8821.c", i32 309, i32 8}
!160 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/nau8821.c", i32 309, i32 14}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/nau8821.c", i32 309, i32 21}
!164 = !{ptr @nau8821_adc_decimation, !165, !"nau8821_adc_decimation", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/nau8821.c", i32 308, i32 27}
!166 = !{ptr @nau8821_dac_oversampl_enum, !167, !"nau8821_dac_oversampl_enum", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/nau8821.c", i32 318, i32 30}
!168 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/nau8821.c", i32 316, i32 22}
!170 = !{ptr @nau8821_dac_oversampl, !171, !"nau8821_dac_oversampl", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/nau8821.c", i32 315, i32 27}
!172 = !{ptr @.str.66, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/nau8821.c", i32 499, i32 2}
!174 = !{ptr @.str.67, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/nau8821.c", i32 501, i32 2}
!176 = !{ptr @.str.68, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/nau8821.c", i32 503, i32 2}
!178 = !{ptr @.str.69, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/nau8821.c", i32 505, i32 2}
!180 = !{ptr @.str.70, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/nau8821.c", i32 507, i32 2}
!182 = !{ptr @.str.71, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/nau8821.c", i32 509, i32 2}
!184 = !{ptr @.str.72, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/nau8821.c", i32 512, i32 2}
!186 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/nau8821.c", i32 515, i32 2}
!188 = !{ptr @.str.74, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/nau8821.c", i32 517, i32 2}
!190 = !{ptr @.str.75, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.76, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/nau8821.c", i32 519, i32 2}
!193 = !{ptr @.str.77, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.78, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/nau8821.c", i32 521, i32 2}
!196 = !{ptr @.str.79, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/nau8821.c", i32 523, i32 2}
!198 = !{ptr @.str.80, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/nau8821.c", i32 525, i32 2}
!200 = !{ptr @.str.81, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/nau8821.c", i32 527, i32 2}
!202 = !{ptr @.str.82, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/nau8821.c", i32 529, i32 2}
!204 = !{ptr @.str.83, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/nau8821.c", i32 531, i32 2}
!206 = !{ptr @.str.84, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/nau8821.c", i32 533, i32 2}
!208 = !{ptr @.str.85, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/nau8821.c", i32 535, i32 2}
!210 = !{ptr @.str.86, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/nau8821.c", i32 537, i32 2}
!212 = !{ptr @.str.87, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/nau8821.c", i32 540, i32 2}
!214 = !{ptr @.str.88, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/nau8821.c", i32 543, i32 2}
!216 = !{ptr @.str.89, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/nau8821.c", i32 546, i32 2}
!218 = !{ptr @.str.90, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/nau8821.c", i32 549, i32 2}
!220 = !{ptr @.str.91, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/nau8821.c", i32 552, i32 2}
!222 = !{ptr @.str.92, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/nau8821.c", i32 555, i32 2}
!224 = !{ptr @.str.93, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/nau8821.c", i32 558, i32 2}
!226 = !{ptr @.str.94, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/nau8821.c", i32 562, i32 2}
!228 = !{ptr @.str.95, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/nau8821.c", i32 568, i32 2}
!230 = !{ptr @.str.96, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/nau8821.c", i32 571, i32 2}
!232 = !{ptr @.str.97, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/nau8821.c", i32 576, i32 2}
!234 = !{ptr @.str.98, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/nau8821.c", i32 578, i32 2}
!236 = !{ptr @.str.99, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/nau8821.c", i32 581, i32 2}
!238 = !{ptr @.str.100, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/nau8821.c", i32 582, i32 2}
!240 = !{ptr @.str.101, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/nau8821.c", i32 583, i32 2}
!242 = !{ptr @.str.102, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/nau8821.c", i32 584, i32 2}
!244 = !{ptr @.str.103, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/nau8821.c", i32 585, i32 2}
!246 = !{ptr @nau8821_dapm_widgets, !247, !"nau8821_dapm_widgets", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/nau8821.c", i32 496, i32 41}
!248 = !{ptr @.str.105, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/nau8821.c", i32 387, i32 2}
!250 = !{ptr @.str.106, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @dmic_clock_control.__UNIQUE_ID_ddebug294, !249, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!252 = !{ptr @dmic_speed_sel, !253, !"dmic_speed_sel", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/nau8821.c", i32 112, i32 40}
!254 = !{ptr @.str.107, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/nau8821.c", i32 356, i32 2}
!256 = !{ptr @nau8821_dmic_mode_switch, !257, !"nau8821_dmic_mode_switch", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/nau8821.c", i32 355, i32 38}
!258 = !{ptr @nau8821_dapm_routes, !259, !"nau8821_dapm_routes", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/nau8821.c", i32 588, i32 40}
!260 = !{ptr @.str.109, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/nau8821.c", i32 1202, i32 3}
!262 = !{ptr @.str.110, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @nau8821_set_fll._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @nau8821_set_fll._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.111, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/nau8821.c", i32 1207, i32 2}
!267 = !{ptr @nau8821_set_fll.__UNIQUE_ID_ddebug298, !266, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!268 = !{ptr @fll_pre_scalar, !269, !"fll_pre_scalar", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/nau8821.c", i32 79, i32 38}
!270 = !{ptr @fll_ratio, !271, !"fll_ratio", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/nau8821.c", i32 69, i32 38}
!272 = !{ptr @mclk_src_scaling, !273, !"mclk_src_scaling", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/nau8821.c", i32 52, i32 38}
!274 = !{ptr @.str.112, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/nau8821.c", i32 824, i32 10}
!276 = !{ptr @nau8821_dai, !277, !"nau8821_dai", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/nau8821.c", i32 823, i32 34}
!278 = !{ptr @nau8821_dai_ops, !279, !"nau8821_dai_ops", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/nau8821.c", i32 813, i32 37}
!280 = !{ptr @.str.113, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/nau8821.c", i32 657, i32 3}
!282 = !{ptr @.str.114, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @nau8821_clock_check._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @nau8821_clock_check._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @osr_dac_sel, !286, !"osr_dac_sel", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/nau8821.c", i32 92, i32 38}
!287 = !{ptr @osr_adc_sel, !288, !"osr_adc_sel", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/nau8821.c", i32 100, i32 38}
!289 = !{ptr @nau8821_of_ids, !290, !"nau8821_of_ids", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/nau8821.c", i32 1684, i32 34}
!291 = !{ptr @nau8821_i2c_ids, !292, !"nau8821_i2c_ids", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/nau8821.c", i32 1677, i32 35}
!293 = !{i32 1, !"wchar_size", i32 2}
!294 = !{i32 1, !"min_enum_size", i32 4}
!295 = !{i32 8, !"branch-target-enforcement", i32 0}
!296 = !{i32 8, !"sign-return-address", i32 0}
!297 = !{i32 8, !"sign-return-address-all", i32 0}
!298 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!299 = !{i32 7, !"uwtable", i32 1}
!300 = !{i32 7, !"frame-pointer", i32 2}
!301 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!302 = !{!"auto-init"}
!303 = !{i64 2149000057, i64 2149000062, i64 2149000075, i64 2149000119, i64 2149000153, i64 2149000174}
!304 = !{i8 0, i8 2}
!305 = !{!"branch_weights", i32 2000, i32 1}
!306 = !{i64 2149025244, i64 2149025524, i64 2149025858, i64 2149026192}
!307 = !{i32 0, i32 33}
