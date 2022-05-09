; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/hdac_hdmi.c_pt.bc'
source_filename = "../sound/soc/codecs/hdac_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hdac_hdmi_jack_port_init\22, \22a\22\09"
module asm "\09.weak\09__crc_hdac_hdmi_jack_port_init\09\09\09\09"
module asm "\09.long\09__crc_hdac_hdmi_jack_port_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdac_hdmi_jack_port_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hdac_hdmi_jack_port_init\22\09\09\09\09\09"
module asm "__kstrtabns_hdac_hdmi_jack_port_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hdac_hdmi_jack_init\22, \22a\22\09"
module asm "\09.weak\09__crc_hdac_hdmi_jack_init\09\09\09\09"
module asm "\09.long\09__crc_hdac_hdmi_jack_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdac_hdmi_jack_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hdac_hdmi_jack_init\22\09\09\09\09\09"
module asm "__kstrtabns_hdac_hdmi_jack_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.hdac_hdmi_drv_data = type { i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.drm_audio_component_audio_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.hdac_hdmi_priv = type { ptr, ptr, ptr, [3 x %struct.hdac_hdmi_dai_port_map], %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.mutex, %struct.hdac_chmap, ptr, ptr }
%struct.hdac_hdmi_dai_port_map = type { i32, ptr, ptr }
%struct.hdac_chmap = type { i32, %struct.hdac_chmap_ops, ptr }
%struct.hdac_chmap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdac_hdmi_pin = type { %struct.list_head, i16, i8, ptr, i32, ptr }
%struct.hdac_hdmi_port = type { %struct.list_head, i32, ptr, i32, [32 x i16], %struct.hdac_hdmi_eld, ptr, i8, ptr, ptr, %struct.work_struct }
%struct.hdac_hdmi_eld = type { i8, i8, i32, [256 x i8], %struct.hdac_hdmi_parsed_eld }
%struct.hdac_hdmi_parsed_eld = type { i8 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.hdac_hdmi_pcm = type { %struct.list_head, i32, %struct.list_head, ptr, ptr, i32, i32, i32, i8, [8 x i8], %struct.mutex, i32, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hdac_hdmi_cvt = type { %struct.list_head, i16, ptr, %struct.hdac_hdmi_cvt_params }
%struct.hdac_hdmi_cvt_params = type { i32, i32, i32, i64, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.dp_audio_infoframe = type { i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hif%d-%d Jack\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_hdac_hdmi_jack_port_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdac_hdmi_jack_port_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hdac_hdmi_jack_port_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdac_hdmi_jack_port_init to i32), ptr @__kstrtab_hdac_hdmi_jack_port_init, ptr @__kstrtabns_hdac_hdmi_jack_port_init }, section "___ksymtab_gpl+hdac_hdmi_jack_port_init", align 4
@hdac_hdmi_jack_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pcm->lock\00", [21 x i8] zeroinitializer }, align 32
@hdac_hdmi_jack_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1911, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"chmap control add failed with err: %d for pcm: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdac_hdmi_jack_init\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/codecs/hdac_hdmi.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hdac_hdmi_jack_init._entry_ptr = internal global ptr @hdac_hdmi_jack_init._entry, section ".printk_index", align 4
@hdac_hdmi_jack_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1921, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"eld control add failed with err: %d for pcm: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@hdac_hdmi_jack_init._entry_ptr.9 = internal global ptr @hdac_hdmi_jack_init._entry.7, section ".printk_index", align 4
@__kstrtab_hdac_hdmi_jack_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdac_hdmi_jack_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hdac_hdmi_jack_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdac_hdmi_jack_init to i32), ptr @__kstrtab_hdac_hdmi_jack_init, ptr @__kstrtabns_hdac_hdmi_jack_init }, section "___ksymtab_gpl+hdac_hdmi_jack_init", align 4
@hdmi_driver = internal global { %struct.hdac_driver, [56 x i8] } { %struct.hdac_driver { %struct.device_driver { ptr @.str.19, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdac_hdmi_pm, ptr null, ptr null }, i32 0, ptr @hdmi_list, ptr null, ptr null, ptr @hdac_hdmi_dev_probe, ptr @hdac_hdmi_dev_remove, ptr null }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_soc_hdac_hdmi__257_2337_hdmi_init6 = internal global ptr @hdmi_init, section ".initcall6.init", align 4
@__exitcall_hdmi_exit = internal global ptr @hdmi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file258 = internal constant [58 x i8] c"snd_soc_hdac_hdmi.file=sound/soc/codecs/snd-soc-hdac-hdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [33 x i8] c"snd_soc_hdac_hdmi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [44 x i8] c"snd_soc_hdac_hdmi.description=HDMI HD codec\00", section ".modinfo", align 1
@__UNIQUE_ID_author261 = internal constant [68 x i8] c"snd_soc_hdac_hdmi.author=Samreen Nilofer<samreen.nilofer@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author262 = internal constant [75 x i8] c"snd_soc_hdac_hdmi.author=Subhransu S. Prusty<subhransu.s.prusty@intel.com>\00", section ".modinfo", align 1
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s Switch\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ELD\00", [28 x i8] zeroinitializer }, align 32
@hdac_hdmi_eld_ctl_info.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 1, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_soc_hdac_hdmi\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hdac_hdmi_eld_ctl_info\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: no pcm, device %d\0A\00", [41 x i8] zeroinitializer }, align 32
@hdac_hdmi_eld_ctl_info.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.4, ptr @.str.15, i8 1, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: empty port list, device %d\0A\00", [32 x i8] zeroinitializer }, align 32
@hdac_hdmi_eld_ctl_get.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.16, ptr @.str.4, ptr @.str.14, i8 1, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hdac_hdmi_eld_ctl_get\00", [42 x i8] zeroinitializer }, align 32
@hdac_hdmi_eld_ctl_get.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.16, ptr @.str.4, ptr @.str.15, i8 1, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hdac_hdmi_eld_ctl_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.16, ptr @.str.4, i32 1505, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: buffer too small, device %d eld_size %d\0A\00", [51 x i8] zeroinitializer }, align 32
@hdac_hdmi_eld_ctl_get._entry_ptr = internal global ptr @hdac_hdmi_eld_ctl_get._entry, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDMI HDA Codec\00", [17 x i8] zeroinitializer }, align 32
@hdac_hdmi_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @hdmi_codec_resume, ptr @pm_runtime_force_suspend, ptr @hdmi_codec_resume, ptr @pm_runtime_force_suspend, ptr @hdmi_codec_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdac_hdmi_runtime_suspend, ptr @hdac_hdmi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@hdmi_list = internal constant { [6 x %struct.hda_device_id], [40 x i8] } { [6 x %struct.hda_device_id] [%struct.hda_device_id { i32 -2138691575, i32 1048576, i8 2, ptr @.str.35, i32 0 }, %struct.hda_device_id { i32 -2138691574, i32 1048576, i8 2, ptr @.str.36, i32 0 }, %struct.hda_device_id { i32 -2138691573, i32 1048576, i8 2, ptr @.str.37, i32 0 }, %struct.hda_device_id { i32 -2138691572, i32 1048576, i8 2, ptr @.str.38, i32 ptrtoint (ptr @intel_glk_drv_data to i32) }, %struct.hda_device_id { i32 -2138691571, i32 1048576, i8 2, ptr @.str.39, i32 ptrtoint (ptr @intel_glk_drv_data to i32) }, %struct.hda_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@hdac_hdmi_present_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 1296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: disconnect for pin:port %d:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hdac_hdmi_present_sense\00", [40 x i8] zeroinitializer }, align 32
@hdac_hdmi_present_sense._entry_ptr = internal global ptr @hdac_hdmi_present_sense._entry, section ".printk_index", align 4
@hdac_hdmi_present_sense.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 1, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ELD: \00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@hdac_hdmi_parse_eld._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 1228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI: Unknown ELD version %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdac_hdmi_parse_eld\00", [44 x i8] zeroinitializer }, align 32
@hdac_hdmi_parse_eld._entry_ptr = internal global ptr @hdac_hdmi_parse_eld._entry, section ".printk_index", align 4
@hdac_hdmi_parse_eld._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 1236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI: MNL Invalid %d\0A\00", [42 x i8] zeroinitializer }, align 32
@hdac_hdmi_parse_eld._entry_ptr.28 = internal global ptr @hdac_hdmi_parse_eld._entry.26, section ".printk_index", align 4
@hdac_hdmi_jack_report.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hdac_hdmi_jack_report\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jack report for pcm=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@hdac_hdmi_runtime_suspend.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 2, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hdac_hdmi_runtime_suspend\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Enter: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@hdac_hdmi_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 2250, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hdac link not found\0A\00", [43 x i8] zeroinitializer }, align 32
@hdac_hdmi_runtime_suspend._entry_ptr = internal global ptr @hdac_hdmi_runtime_suspend._entry, section ".printk_index", align 4
@hdac_hdmi_runtime_resume.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.34, ptr @.str.4, ptr @.str.32, i8 2, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hdac_hdmi_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@hdac_hdmi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 2276, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@hdac_hdmi_runtime_resume._entry_ptr = internal global ptr @hdac_hdmi_runtime_resume._entry, section ".printk_index", align 4
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Skylake HDMI\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Broxton HDMI\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Kabylake HDMI\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cannonlake HDMI\00", [16 x i8] zeroinitializer }, align 32
@intel_glk_drv_data = internal global { %struct.hdac_hdmi_drv_data, [28 x i8] } { %struct.hdac_hdmi_drv_data { i32 11 }, [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Geminilake HDMI\00", [16 x i8] zeroinitializer }, align 32
@hdac_hdmi_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.40, ptr @.str.4, i32 2150, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdac_hdmi_dev_probe\00", [44 x i8] zeroinitializer }, align 32
@hdac_hdmi_dev_probe._entry_ptr = internal global ptr @hdac_hdmi_dev_probe._entry, section ".printk_index", align 4
@intel_drv_data = internal global { %struct.hdac_hdmi_drv_data, [28 x i8] } { %struct.hdac_hdmi_drv_data { i32 8 }, [28 x i8] zeroinitializer }, align 32
@hdac_hdmi_dev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&hdmi_priv->pin_mutex\00", [42 x i8] zeroinitializer }, align 32
@hdac_hdmi_dev_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.4, i32 2192, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed in parse and map nid with err: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@hdac_hdmi_dev_probe._entry_ptr.44 = internal global ptr @hdac_hdmi_dev_probe._entry.42, section ".printk_index", align 4
@hdmi_hda_codec = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @hdmi_codec_probe, ptr @hdmi_codec_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@hdac_hdmi_setup_audio_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 409, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid connection type: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hdac_hdmi_setup_audio_infoframe\00", [32 x i8] zeroinitializer }, align 32
@hdac_hdmi_setup_audio_infoframe._entry_ptr = internal global ptr @hdac_hdmi_setup_audio_infoframe._entry, section ".printk_index", align 4
@hdac_hdmi_parse_and_map_nid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 1636, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HDMI: failed to get afg sub nodes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hdac_hdmi_parse_and_map_nid\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hdac_hdmi_parse_and_map_nid._entry_ptr = internal global ptr @hdac_hdmi_parse_and_map_nid._entry, section ".printk_index", align 4
@hdac_hdmi_parse_and_map_nid._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.4, i32 1668, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bad pin/cvt setup in %s\0A\00", [39 x i8] zeroinitializer }, align 32
@hdac_hdmi_parse_and_map_nid._entry_ptr.52 = internal global ptr @hdac_hdmi_parse_and_map_nid._entry.50, section ".printk_index", align 4
@hdac_hdmi_parse_and_map_nid._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.4, i32 1675, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create dais with err: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@hdac_hdmi_parse_and_map_nid._entry_ptr.55 = internal global ptr @hdac_hdmi_parse_and_map_nid._entry.53, section ".printk_index", align 4
@hdac_hdmi_parse_and_map_nid._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.48, ptr @.str.4, i32 1683, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to init DAI map with err: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@hdac_hdmi_parse_and_map_nid._entry_ptr.58 = internal global ptr @hdac_hdmi_parse_and_map_nid._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cvt %d\00", [25 x i8] zeroinitializer }, align 32
@hdac_hdmi_query_cvt_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 672, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to query pcm params for nid %d: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hdac_hdmi_query_cvt_params\00", [37 x i8] zeroinitializer }, align 32
@hdac_hdmi_query_cvt_params._entry_ptr = internal global ptr @hdac_hdmi_query_cvt_params._entry, section ".printk_index", align 4
@hdac_hdmi_add_ports.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&ports[i].dapm_work)\00", [57 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"intel-hdmi-hifi%d\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hifi%d\00", [25 x i8] zeroinitializer }, align 32
@hdmi_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdac_hdmi_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdac_hdmi_pcm_open, ptr @hdac_hdmi_pcm_close, ptr @hdac_hdmi_set_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@hdac_hdmi_set_tdm_slot.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.65, ptr @.str.4, ptr @.str.66, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hdac_hdmi_set_tdm_slot\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: strm_tag: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@hdac_hdmi_pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 610, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed: present?:%d ELD valid?:%d pin:port: %d:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdac_hdmi_pcm_open\00", [45 x i8] zeroinitializer }, align 32
@hdac_hdmi_pcm_open._entry_ptr = internal global ptr @hdac_hdmi_pcm_open._entry, section ".printk_index", align 4
@hdac_hdmi_query_port_connlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.4, i32 491, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"HDMI: pin %d wcaps %#x does not support connection list\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hdac_hdmi_query_port_connlist\00", [34 x i8] zeroinitializer }, align 32
@hdac_hdmi_query_port_connlist._entry_ptr = internal global ptr @hdac_hdmi_query_port_connlist._entry, section ".printk_index", align 4
@hdac_hdmi_query_port_connlist._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.4, i32 503, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No connections found for pin:port %d:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@hdac_hdmi_query_port_connlist._entry_ptr.73 = internal global ptr @hdac_hdmi_query_port_connlist._entry.71, section ".printk_index", align 4
@hdac_hdmi_query_port_connlist.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.70, ptr @.str.4, ptr @.str.74, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"num_mux_nids %d for pin:port %d:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@hdac_hdmi_port_select_set.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.75, ptr @.str.4, ptr @.str.76, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hdac_hdmi_port_select_set\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Selected the port=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@hdac_hdmi_init_dai_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 1189, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Max dais supported: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hdac_hdmi_init_dai_map\00", [41 x i8] zeroinitializer }, align 32
@hdac_hdmi_init_dai_map._entry_ptr = internal global ptr @hdac_hdmi_init_dai_map._entry, section ".printk_index", align 4
@hdmi_codec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.79, ptr @.str.4, i32 1972, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi_codec_probe\00", [47 x i8] zeroinitializer }, align 32
@hdmi_codec_probe._entry_ptr = internal global ptr @hdmi_codec_probe._entry, section ".printk_index", align 4
@aops = internal global { %struct.drm_audio_component_audio_ops, [44 x i8] } { %struct.drm_audio_component_audio_ops { ptr null, ptr @hdac_hdmi_eld_notify_cb, ptr @hdac_hdmi_pin2port, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@hdmi_codec_probe._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.4, i32 1985, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"notifier register failed: err: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@hdmi_codec_probe._entry_ptr.82 = internal global ptr @hdmi_codec_probe._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Converter %d\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hif%d-%d Output\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Pin%d-Port%d Mux\00", [47 x i8] zeroinitializer }, align 32
@hdac_hdmi_cvt_output_widget_event.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.86, ptr @.str.4, ptr @.str.87, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hdac_hdmi_cvt_output_widget_event\00", [62 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: widget: %s event: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@hdac_hdmi_verify_connect_sel_all_pins.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.88, ptr @.str.4, ptr @.str.89, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"hdac_hdmi_verify_connect_sel_all_pins\00", [58 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s set connect %d -> %d\0A\00", [35 x i8] zeroinitializer }, align 32
@hdac_hdmi_pin_output_widget_event.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.90, ptr @.str.4, ptr @.str.87, i8 0, i8 -64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hdac_hdmi_pin_output_widget_event\00", [62 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Pin %d port %d Input\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@hdac_hdmi_pin_mux_widget_event.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.93, ptr @.str.4, ptr @.str.87, i8 0, i8 -39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hdac_hdmi_pin_mux_widget_event\00", [33 x i8] zeroinitializer }, align 32
@hdac_hdmi_eld_notify_cb.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.94, ptr @.str.4, ptr @.str.95, i8 1, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hdac_hdmi_eld_notify_cb\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: for pin:%d port=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@hdmi_codec_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.4, i32 2024, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"notifier unregister failed: err: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdmi_codec_remove\00", [46 x i8] zeroinitializer }, align 32
@hdmi_codec_remove._entry_ptr = internal global ptr @hdmi_codec_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 5, i64 2, i64 31]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 4]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 5, i64 2, i64 31]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1832, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1903, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1909, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1919, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"hdmi_driver\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2317, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1788, i32 39 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1527, i32 11 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1441, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1447, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1481, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1504, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1506, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2319, i32 13 }
@___asan_gen_.172 = private unnamed_addr constant [13 x i8] c"hdac_hdmi_pm\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2299, i32 32 }
@___asan_gen_.175 = private unnamed_addr constant [10 x i8] c"hdmi_list\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2304, i32 35 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1295, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1318, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1228, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1236, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 170, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2232, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2250, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2268, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2276, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2305, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2306, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2307, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2308, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [19 x i8] c"intel_glk_drv_data\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2129, i32 34 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2310, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2150, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [15 x i8] c"intel_drv_data\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2133, i32 34 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2181, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2191, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [15 x i8] c"hdmi_hda_codec\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2056, i32 46 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 409, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1636, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1668, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1674, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1682, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1208, i32 16 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 670, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1351, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1585, i32 21 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1592, i32 32 }
@___asan_gen_.337 = private unnamed_addr constant [13 x i8] c"hdmi_dai_ops\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1543, i32 37 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 448, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 607, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 489, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 501, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 505, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 277, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1188, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1972, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant [5 x i8] c"aops\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1745, i32 45 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1985, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1090, i32 24 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1103, i32 25 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1121, i32 25 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 815, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 571, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 769, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 980, i32 31 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 999, i32 21 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 869, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1704, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.449 = private constant [32 x i8] c"../sound/soc/codecs/hdac_hdmi.c\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2023, i32 3 }
@llvm.compiler.used = appending global [149 x ptr] [ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_hdmi_exit, ptr @__initcall__kmod_snd_soc_hdac_hdmi__257_2337_hdmi_init6, ptr @__ksymtab_hdac_hdmi_jack_init, ptr @__ksymtab_hdac_hdmi_jack_port_init, ptr @hdac_hdmi_dev_probe._entry, ptr @hdac_hdmi_dev_probe._entry.42, ptr @hdac_hdmi_dev_probe._entry_ptr, ptr @hdac_hdmi_dev_probe._entry_ptr.44, ptr @hdac_hdmi_eld_ctl_get._entry, ptr @hdac_hdmi_eld_ctl_get._entry_ptr, ptr @hdac_hdmi_init_dai_map._entry, ptr @hdac_hdmi_init_dai_map._entry_ptr, ptr @hdac_hdmi_jack_init._entry, ptr @hdac_hdmi_jack_init._entry.7, ptr @hdac_hdmi_jack_init._entry_ptr, ptr @hdac_hdmi_jack_init._entry_ptr.9, ptr @hdac_hdmi_parse_and_map_nid._entry, ptr @hdac_hdmi_parse_and_map_nid._entry.50, ptr @hdac_hdmi_parse_and_map_nid._entry.53, ptr @hdac_hdmi_parse_and_map_nid._entry.56, ptr @hdac_hdmi_parse_and_map_nid._entry_ptr, ptr @hdac_hdmi_parse_and_map_nid._entry_ptr.52, ptr @hdac_hdmi_parse_and_map_nid._entry_ptr.55, ptr @hdac_hdmi_parse_and_map_nid._entry_ptr.58, ptr @hdac_hdmi_parse_eld._entry, ptr @hdac_hdmi_parse_eld._entry.26, ptr @hdac_hdmi_parse_eld._entry_ptr, ptr @hdac_hdmi_parse_eld._entry_ptr.28, ptr @hdac_hdmi_pcm_open._entry, ptr @hdac_hdmi_pcm_open._entry_ptr, ptr @hdac_hdmi_present_sense._entry, ptr @hdac_hdmi_present_sense._entry_ptr, ptr @hdac_hdmi_query_cvt_params._entry, ptr @hdac_hdmi_query_cvt_params._entry_ptr, ptr @hdac_hdmi_query_port_connlist._entry, ptr @hdac_hdmi_query_port_connlist._entry.71, ptr @hdac_hdmi_query_port_connlist._entry_ptr, ptr @hdac_hdmi_query_port_connlist._entry_ptr.73, ptr @hdac_hdmi_runtime_resume._entry, ptr @hdac_hdmi_runtime_resume._entry_ptr, ptr @hdac_hdmi_runtime_suspend._entry, ptr @hdac_hdmi_runtime_suspend._entry_ptr, ptr @hdac_hdmi_setup_audio_infoframe._entry, ptr @hdac_hdmi_setup_audio_infoframe._entry_ptr, ptr @hdmi_codec_probe._entry, ptr @hdmi_codec_probe._entry.80, ptr @hdmi_codec_probe._entry_ptr, ptr @hdmi_codec_probe._entry_ptr.82, ptr @hdmi_codec_remove._entry, ptr @hdmi_codec_remove._entry_ptr, ptr @hdmi_exit, ptr @.str, ptr @hdac_hdmi_jack_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @hdmi_driver, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @hdac_hdmi_pm, ptr @hdmi_list, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @intel_glk_drv_data, ptr @.str.39, ptr @.str.40, ptr @intel_drv_data, ptr @hdac_hdmi_dev_probe.__key, ptr @.str.41, ptr @.str.43, ptr @hdmi_hda_codec, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @hdac_hdmi_add_ports.__key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @hdmi_dai_ops, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @aops, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_jack_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_jack_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_jack_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_eld_ctl_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_list to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_present_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_parse_eld._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_parse_eld._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_glk_drv_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_drv_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_dev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_dev_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_hda_codec to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_setup_audio_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_parse_and_map_nid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_parse_and_map_nid._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_parse_and_map_nid._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_parse_and_map_nid._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_query_cvt_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_add_ports.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_query_port_connlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_query_port_connlist._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_hdmi_init_dai_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_probe._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdac_hdmi_jack_port_init(ptr nocapture noundef readonly %component, ptr noundef %dapm) #0 align 64 {
entry:
  %w_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %w_name) #11
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %dapm, i32 0, i32 2
  %num_ports = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 9
  %6 = call ptr @memset(ptr %w_name, i32 255, i32 32)
  %7 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 180) #11
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %entry.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !249

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = extractvalue { i32, i1 } %9, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef %13, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %devm_kcalloc.exit
  %14 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ports, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 52) #11
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %if.end.cleanup_crit_edge, label %devm_kcalloc.exit166, !prof !249

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

devm_kcalloc.exit166:                             ; preds = %if.end
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = extractvalue { i32, i1 } %16, 0
  %call5.i.i163 = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef %20, i32 noundef 3520) #11
  %tobool6.not = icmp eq ptr %call5.i.i163, null
  br i1 %tobool6.not, label %devm_kcalloc.exit166.cleanup_crit_edge, label %if.end8

devm_kcalloc.exit166.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit166
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %devm_kcalloc.exit166
  %pin_list = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %pin_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %pin.0178 = load ptr, ptr %pin_list, align 4
  %cmp.not179 = icmp eq ptr %pin.0178, %pin_list
  br i1 %cmp.not179, label %if.end8.for.end42_crit_edge, label %if.end8.for.cond10.preheader_crit_edge

if.end8.for.cond10.preheader_crit_edge:           ; preds = %if.end8
  br label %for.cond10.preheader

if.end8.for.end42_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end42

for.cond.loopexit:                                ; preds = %if.end22.for.cond.loopexit_crit_edge, %for.cond10.preheader.for.cond.loopexit_crit_edge
  %i.1.lcssa = phi i32 [ %i.0180, %for.cond10.preheader.for.cond.loopexit_crit_edge ], [ %inc, %if.end22.for.cond.loopexit_crit_edge ]
  %22 = ptrtoint ptr %pin.0181 to i32
  call void @__asan_load4_noabort(i32 %22)
  %pin.0 = load ptr, ptr %pin.0181, align 4
  %cmp.not = icmp eq ptr %pin.0, %pin_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end42_crit_edge, label %for.cond.loopexit.for.cond10.preheader_crit_edge

for.cond.loopexit.for.cond10.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond10.preheader

for.cond.loopexit.for.end42_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end42

for.cond10.preheader:                             ; preds = %for.cond.loopexit.for.cond10.preheader_crit_edge, %if.end8.for.cond10.preheader_crit_edge
  %pin.0181 = phi ptr [ %pin.0, %for.cond.loopexit.for.cond10.preheader_crit_edge ], [ %pin.0178, %if.end8.for.cond10.preheader_crit_edge ]
  %i.0180 = phi i32 [ %i.1.lcssa, %for.cond.loopexit.for.cond10.preheader_crit_edge ], [ 0, %if.end8.for.cond10.preheader_crit_edge ]
  %num_ports11 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.0181, i32 0, i32 4
  %23 = ptrtoint ptr %num_ports11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_ports11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp12175 = icmp sgt i32 %24, 0
  br i1 %cmp12175, label %for.body13.lr.ph, label %for.cond10.preheader.for.cond.loopexit_crit_edge

for.cond10.preheader.for.cond.loopexit_crit_edge: ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.body13.lr.ph:                                 ; preds = %for.cond10.preheader
  %nid = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.0181, i32 0, i32 1
  %ports = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.0181, i32 0, i32 3
  br label %for.body13

for.body13:                                       ; preds = %if.end22.for.body13_crit_edge, %for.body13.lr.ph
  %i.1177 = phi i32 [ %i.0180, %for.body13.lr.ph ], [ %inc, %if.end22.for.body13_crit_edge ]
  %j.0176 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc35, %if.end22.for.body13_crit_edge ]
  %25 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nid, align 4
  %conv = zext i16 %26 to i32
  %27 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ports, align 4
  %id = getelementptr %struct.hdac_hdmi_port, ptr %28, i32 %j.0176, i32 1
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %w_name, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %30)
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %arrayidx16 = getelementptr %struct.snd_soc_dapm_widget, ptr %call5.i.i, i32 %i.1177
  %33 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 13, ptr %arrayidx16, align 4
  %call.i = call noalias ptr @devm_kstrdup(ptr noundef %32, ptr noundef nonnull %w_name, i32 noundef 3264) #11
  %name.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call5.i.i, i32 %i.1177, i32 1
  %34 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %name.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body13.cleanup_crit_edge, label %if.end22

for.body13.cleanup_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %for.body13
  %sname.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call5.i.i, i32 %i.1177, i32 2
  %35 = ptrtoint ptr %sname.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %sname.i, align 4
  %reg.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call5.i.i, i32 %i.1177, i32 8
  %36 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %reg.i, align 4
  %shift.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call5.i.i, i32 %i.1177, i32 9
  %37 = ptrtoint ptr %shift.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %shift.i, align 4
  %kcontrol_news.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call5.i.i, i32 %i.1177, i32 19
  %38 = ptrtoint ptr %kcontrol_news.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %kcontrol_news.i, align 4
  %num_kcontrols.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call5.i.i, i32 %i.1177, i32 18
  %39 = ptrtoint ptr %num_kcontrols.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %num_kcontrols.i, align 4
  %priv3.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call5.i.i, i32 %i.1177, i32 5
  %40 = ptrtoint ptr %priv3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %priv3.i, align 4
  %event4.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call5.i.i, i32 %i.1177, i32 17
  %41 = ptrtoint ptr %event4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %event4.i, align 4
  %event_flags5.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call5.i.i, i32 %i.1177, i32 16
  %42 = ptrtoint ptr %event_flags5.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %event_flags5.i, align 4
  %43 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name.i, align 4
  %45 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ports, align 4
  %jack_pin = getelementptr %struct.hdac_hdmi_port, ptr %46, i32 %j.0176, i32 6
  %47 = ptrtoint ptr %jack_pin to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %jack_pin, align 4
  %48 = load ptr, ptr %ports, align 4
  %dapm28 = getelementptr %struct.hdac_hdmi_port, ptr %48, i32 %j.0176, i32 8
  %49 = ptrtoint ptr %dapm28 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dapm, ptr %dapm28, align 4
  %arrayidx29 = getelementptr %struct.snd_soc_dapm_route, ptr %call5.i.i163, i32 %i.1177
  %50 = load ptr, ptr %ports, align 4
  %jack_pin32 = getelementptr %struct.hdac_hdmi_port, ptr %50, i32 %j.0176, i32 6
  %51 = ptrtoint ptr %jack_pin32 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %jack_pin32, align 4
  %output_pin = getelementptr %struct.hdac_hdmi_port, ptr %50, i32 %j.0176, i32 9
  %53 = ptrtoint ptr %output_pin to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %output_pin, align 4
  %55 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %arrayidx29, align 4
  %source.i = getelementptr %struct.snd_soc_dapm_route, ptr %call5.i.i163, i32 %i.1177, i32 2
  %56 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %source.i, align 4
  %control2.i = getelementptr %struct.snd_soc_dapm_route, ptr %call5.i.i163, i32 %i.1177, i32 1
  %57 = ptrtoint ptr %control2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %control2.i, align 4
  %connected.i = getelementptr %struct.snd_soc_dapm_route, ptr %call5.i.i163, i32 %i.1177, i32 3
  %58 = ptrtoint ptr %connected.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %connected.i, align 4
  %inc = add i32 %i.1177, 1
  %inc35 = add nuw nsw i32 %j.0176, 1
  %59 = ptrtoint ptr %num_ports11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_ports11, align 4
  %cmp12 = icmp slt i32 %inc35, %60
  br i1 %cmp12, label %if.end22.for.body13_crit_edge, label %if.end22.for.cond.loopexit_crit_edge

if.end22.for.cond.loopexit_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

if.end22.for.body13_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13

for.end42:                                        ; preds = %for.cond.loopexit.for.end42_crit_edge, %if.end8.for.end42_crit_edge
  %61 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_ports, align 4
  %call44 = call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm, ptr noundef nonnull %call5.i.i, i32 noundef %62) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %for.end42.cleanup_crit_edge, label %if.end48

for.end42.cleanup_crit_edge:                      ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end48:                                         ; preds = %for.end42
  %63 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_ports, align 4
  %call50 = call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm, ptr noundef nonnull %call5.i.i163, i32 noundef %64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end48.cleanup_crit_edge, label %if.end54

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end54:                                         ; preds = %if.end48
  %card = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %dapm, i32 0, i32 4
  %65 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %card, align 4
  %call55 = call i32 @snd_soc_dapm_new_widgets(ptr noundef %66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end54.cleanup_crit_edge, label %if.end59

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59:                                         ; preds = %if.end54
  %67 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %card, align 4
  %call61 = call fastcc i32 @create_fill_jack_kcontrols(ptr noundef %68, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end59.cleanup_crit_edge, label %for.cond71.preheader

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond71.preheader:                             ; preds = %if.end59
  %69 = ptrtoint ptr %pin_list to i32
  call void @__asan_load4_noabort(i32 %69)
  %pin.1184 = load ptr, ptr %pin_list, align 4
  %cmp74.not185 = icmp eq ptr %pin.1184, %pin_list
  br i1 %cmp74.not185, label %for.cond71.preheader.cleanup_crit_edge, label %for.cond71.preheader.for.cond78.preheader_crit_edge

for.cond71.preheader.for.cond78.preheader_crit_edge: ; preds = %for.cond71.preheader
  br label %for.cond78.preheader

for.cond71.preheader.cleanup_crit_edge:           ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond71.loopexit:                              ; preds = %for.body82.for.cond71.loopexit_crit_edge, %for.cond78.preheader.for.cond71.loopexit_crit_edge
  %70 = ptrtoint ptr %pin.1186 to i32
  call void @__asan_load4_noabort(i32 %70)
  %pin.1 = load ptr, ptr %pin.1186, align 4
  %cmp74.not = icmp eq ptr %pin.1, %pin_list
  br i1 %cmp74.not, label %for.cond71.loopexit.cleanup_crit_edge, label %for.cond71.loopexit.for.cond78.preheader_crit_edge

for.cond71.loopexit.for.cond78.preheader_crit_edge: ; preds = %for.cond71.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond78.preheader

for.cond71.loopexit.cleanup_crit_edge:            ; preds = %for.cond71.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond78.preheader:                             ; preds = %for.cond71.loopexit.for.cond78.preheader_crit_edge, %for.cond71.preheader.for.cond78.preheader_crit_edge
  %pin.1186 = phi ptr [ %pin.1, %for.cond71.loopexit.for.cond78.preheader_crit_edge ], [ %pin.1184, %for.cond71.preheader.for.cond78.preheader_crit_edge ]
  %num_ports79 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.1186, i32 0, i32 4
  %71 = ptrtoint ptr %num_ports79 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_ports79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp80182 = icmp sgt i32 %72, 0
  br i1 %cmp80182, label %for.body82.lr.ph, label %for.cond78.preheader.for.cond71.loopexit_crit_edge

for.cond78.preheader.for.cond71.loopexit_crit_edge: ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond71.loopexit

for.body82.lr.ph:                                 ; preds = %for.cond78.preheader
  %ports83 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.1186, i32 0, i32 3
  br label %for.body82

for.body82:                                       ; preds = %for.body82.for.body82_crit_edge, %for.body82.lr.ph
  %j.1183 = phi i32 [ 0, %for.body82.lr.ph ], [ %inc91, %for.body82.for.body82_crit_edge ]
  %73 = ptrtoint ptr %ports83 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ports83, align 4
  %dapm85 = getelementptr %struct.hdac_hdmi_port, ptr %74, i32 %j.1183, i32 8
  %75 = ptrtoint ptr %dapm85 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dapm85, align 4
  %jack_pin88 = getelementptr %struct.hdac_hdmi_port, ptr %74, i32 %j.1183, i32 6
  %77 = ptrtoint ptr %jack_pin88 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %jack_pin88, align 4
  %call89 = call i32 @snd_soc_dapm_disable_pin(ptr noundef %76, ptr noundef %78) #11
  %inc91 = add nuw nsw i32 %j.1183, 1
  %79 = ptrtoint ptr %num_ports79 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_ports79, align 4
  %cmp80 = icmp slt i32 %inc91, %80
  br i1 %cmp80, label %for.body82.for.body82_crit_edge, label %for.body82.for.cond71.loopexit_crit_edge

for.body82.for.cond71.loopexit_crit_edge:         ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond71.loopexit

for.body82.for.body82_crit_edge:                  ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body82

cleanup:                                          ; preds = %for.cond71.loopexit.cleanup_crit_edge, %for.cond71.preheader.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %for.end42.cleanup_crit_edge, %for.body13.cleanup_crit_edge, %devm_kcalloc.exit166.cleanup_crit_edge, %if.end.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit166.cleanup_crit_edge ], [ %call44, %for.end42.cleanup_crit_edge ], [ %call50, %if.end48.cleanup_crit_edge ], [ %call55, %if.end54.cleanup_crit_edge ], [ %call61, %if.end59.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.cond71.preheader.cleanup_crit_edge ], [ 0, %for.cond71.loopexit.cleanup_crit_edge ], [ -12, %for.body13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %w_name) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_widgets(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_fill_jack_kcontrols(ptr noundef %card, ptr nocapture noundef readonly %hdev) unnamed_addr #0 align 64 {
entry:
  %kc_name = alloca [32 x i8], align 1
  %xname = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %kc_name) #11
  %0 = call ptr @memset(ptr %kc_name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %xname) #11
  %driver_data.i = getelementptr inbounds %struct.device, ptr %hdev, i32 0, i32 8
  %1 = call ptr @memset(ptr %xname, i32 255, i32 32)
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %component1 = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %component1, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %num_ports = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 48) #11
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %entry.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !249

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %12 = extractvalue { i32, i1 } %8, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef %12, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %devm_kcalloc.exit
  %pin_list = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %pin_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %pin.089 = load ptr, ptr %pin_list, align 4
  %cmp.not90 = icmp eq ptr %pin.089, %pin_list
  br i1 %cmp.not90, label %if.end.for.end42_crit_edge, label %if.end.for.cond5.preheader_crit_edge

if.end.for.cond5.preheader_crit_edge:             ; preds = %if.end
  br label %for.cond5.preheader

if.end.for.end42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end42

for.cond.loopexit:                                ; preds = %if.end28.for.cond.loopexit_crit_edge, %for.cond5.preheader.for.cond.loopexit_crit_edge
  %i.1.lcssa = phi i32 [ %i.091, %for.cond5.preheader.for.cond.loopexit_crit_edge ], [ %inc, %if.end28.for.cond.loopexit_crit_edge ]
  %14 = ptrtoint ptr %pin.092 to i32
  call void @__asan_load4_noabort(i32 %14)
  %pin.0 = load ptr, ptr %pin.092, align 4
  %cmp.not = icmp eq ptr %pin.0, %pin_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end42_crit_edge, label %for.cond.loopexit.for.cond5.preheader_crit_edge

for.cond.loopexit.for.cond5.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond5.preheader

for.cond.loopexit.for.end42_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end42

for.cond5.preheader:                              ; preds = %for.cond.loopexit.for.cond5.preheader_crit_edge, %if.end.for.cond5.preheader_crit_edge
  %pin.092 = phi ptr [ %pin.0, %for.cond.loopexit.for.cond5.preheader_crit_edge ], [ %pin.089, %if.end.for.cond5.preheader_crit_edge ]
  %i.091 = phi i32 [ %i.1.lcssa, %for.cond.loopexit.for.cond5.preheader_crit_edge ], [ 0, %if.end.for.cond5.preheader_crit_edge ]
  %num_ports6 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.092, i32 0, i32 4
  %15 = ptrtoint ptr %num_ports6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ports6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp786 = icmp sgt i32 %16, 0
  br i1 %cmp786, label %for.body8.lr.ph, label %for.cond5.preheader.for.cond.loopexit_crit_edge

for.cond5.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.body8.lr.ph:                                  ; preds = %for.cond5.preheader
  %nid = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.092, i32 0, i32 1
  %ports = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.092, i32 0, i32 3
  br label %for.body8

for.body8:                                        ; preds = %if.end28.for.body8_crit_edge, %for.body8.lr.ph
  %j.088 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc35, %if.end28.for.body8_crit_edge ]
  %i.187 = phi i32 [ %i.091, %for.body8.lr.ph ], [ %inc, %if.end28.for.body8_crit_edge ]
  %17 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nid, align 4
  %conv = zext i16 %18 to i32
  %19 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ports, align 4
  %id = getelementptr %struct.hdac_hdmi_port, ptr %20, i32 %j.088, i32 1
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %call9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %xname, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %22)
  %23 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev2, align 4
  %call12 = call noalias ptr @devm_kstrdup(ptr noundef %24, ptr noundef nonnull %xname, i32 noundef 3264) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %for.body8.cleanup_crit_edge, label %if.end15

for.body8.cleanup_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %for.body8
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %kc_name, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef nonnull %xname)
  %25 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev2, align 4
  %call21 = call noalias ptr @devm_kstrdup(ptr noundef %26, ptr noundef nonnull %kc_name, i32 noundef 3264) #11
  %name23 = getelementptr %struct.snd_kcontrol_new, ptr %call5.i.i, i32 %i.187, i32 3
  %27 = ptrtoint ptr %name23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call21, ptr %name23, align 4
  %tobool26.not = icmp eq ptr %call21, null
  br i1 %tobool26.not, label %if.end15.cleanup_crit_edge, label %if.end28

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %arrayidx22 = getelementptr %struct.snd_kcontrol_new, ptr %call5.i.i, i32 %i.187
  %28 = ptrtoint ptr %call12 to i32
  %private_value = getelementptr %struct.snd_kcontrol_new, ptr %call5.i.i, i32 %i.187, i32 11
  %29 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %private_value, align 4
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %arrayidx22, align 4
  %access = getelementptr %struct.snd_kcontrol_new, ptr %call5.i.i, i32 %i.187, i32 5
  %31 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %access, align 4
  %info = getelementptr %struct.snd_kcontrol_new, ptr %call5.i.i, i32 %i.187, i32 7
  %32 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @snd_soc_dapm_info_pin_switch, ptr %info, align 4
  %put = getelementptr %struct.snd_kcontrol_new, ptr %call5.i.i, i32 %i.187, i32 9
  %33 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @snd_soc_dapm_put_pin_switch, ptr %put, align 4
  %get = getelementptr %struct.snd_kcontrol_new, ptr %call5.i.i, i32 %i.187, i32 8
  %34 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @snd_soc_dapm_get_pin_switch, ptr %get, align 4
  %inc = add i32 %i.187, 1
  %inc35 = add nuw nsw i32 %j.088, 1
  %35 = ptrtoint ptr %num_ports6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_ports6, align 4
  %cmp7 = icmp slt i32 %inc35, %36
  br i1 %cmp7, label %if.end28.for.body8_crit_edge, label %if.end28.for.cond.loopexit_crit_edge

if.end28.for.cond.loopexit_crit_edge:             ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

if.end28.for.body8_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

for.end42:                                        ; preds = %for.cond.loopexit.for.end42_crit_edge, %if.end.for.end42_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end42_crit_edge ], [ %i.1.lcssa, %for.cond.loopexit.for.end42_crit_edge ]
  %call43 = call i32 @snd_soc_add_card_controls(ptr noundef %card, ptr noundef nonnull %call5.i.i, i32 noundef %i.0.lcssa) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end42, %if.end15.cleanup_crit_edge, %for.body8.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %for.end42 ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %for.body8.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %xname) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %kc_name) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdac_hdmi_jack_init(ptr nocapture noundef readonly %dai, i32 noundef %device, ptr noundef %jack) #0 align 64 {
entry:
  %hdmi_eld_ctl.i = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 152, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcm_id = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %pcm_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %device, ptr %pcm_id, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %cvt = getelementptr %struct.hdac_hdmi_priv, ptr %5, i32 0, i32 3, i32 %10, i32 2
  %11 = ptrtoint ptr %cvt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cvt, align 4
  %cvt4 = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %cvt4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %cvt4, align 4
  %jack_event = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %call.i, i32 0, i32 11
  %14 = ptrtoint ptr %jack_event to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %jack_event, align 4
  %jack5 = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %jack5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %jack, ptr %jack5, align 4
  %lock = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @hdac_hdmi_jack_init.__key) #11
  %port_list = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %port_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %port_list, ptr %port_list, align 4
  %prev.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %call.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %port_list, ptr %prev.i, align 4
  %18 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %component1, align 4
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %rtd_list.i = getelementptr inbounds %struct.snd_soc_card, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %rtd_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn16.i = load ptr, ptr %rtd_list.i, align 4
  %cmp.not17.i = icmp eq ptr %.pn16.i, %rtd_list.i
  br i1 %cmp.not17.i, label %if.end.if.end17_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn18.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn16.i, %if.end.for.body.i_crit_edge ]
  %pcm.i = getelementptr i8, ptr %.pn18.i, i32 -140
  %23 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcm.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %device3.i = getelementptr inbounds %struct.snd_pcm, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %device3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %device3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %device)
  %cmp4.i = icmp eq i32 %26, %device
  br i1 %cmp4.i, label %if.then9, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %27 = ptrtoint ptr %.pn18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i = load ptr, ptr %.pn18.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %rtd_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end17_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end17_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then9:                                         ; preds = %land.lhs.true.i
  %chmap = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %5, i32 0, i32 11
  %call10 = tail call i32 @snd_hdac_add_chmap_ctls(ptr noundef nonnull %24, i32 noundef %device, ptr noundef %chmap) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end14, label %if.then9.if.end17_crit_edge

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.end14:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %call10, i32 noundef %device) #14
  br label %cleanup

if.end17:                                         ; preds = %if.then9.if.end17_crit_edge, %for.inc.i.if.end17_crit_edge, %if.end.if.end17_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %hdmi_eld_ctl.i) #11
  %28 = ptrtoint ptr %hdmi_eld_ctl.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %hdmi_eld_ctl.i, align 4
  %device.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hdmi_eld_ctl.i, i32 0, i32 1
  %29 = ptrtoint ptr %pcm_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pcm_id, align 4
  %31 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %device.i, align 4
  %subdevice.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hdmi_eld_ctl.i, i32 0, i32 2
  %32 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %subdevice.i, align 4
  %name.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hdmi_eld_ctl.i, i32 0, i32 3
  %33 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.11, ptr %name.i, align 4
  %index.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hdmi_eld_ctl.i, i32 0, i32 4
  %34 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %index.i, align 4
  %access.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hdmi_eld_ctl.i, i32 0, i32 5
  %35 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %access.i, align 4
  %count.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hdmi_eld_ctl.i, i32 0, i32 6
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %count.i, align 4
  %info.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hdmi_eld_ctl.i, i32 0, i32 7
  %37 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @hdac_hdmi_eld_ctl_info, ptr %info.i, align 4
  %get.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hdmi_eld_ctl.i, i32 0, i32 8
  %38 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @hdac_hdmi_eld_ctl_get, ptr %get.i, align 4
  %put.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hdmi_eld_ctl.i, i32 0, i32 9
  %39 = ptrtoint ptr %put.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %put.i, align 4
  %tlv.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hdmi_eld_ctl.i, i32 0, i32 10
  %40 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %tlv.i, align 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hdmi_eld_ctl.i, i32 0, i32 11
  %41 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %private_value.i, align 4
  %call.i57 = call ptr @snd_ctl_new1(ptr noundef nonnull %hdmi_eld_ctl.i, ptr noundef %1) #11
  %tobool.not.i58 = icmp eq ptr %call.i57, null
  br i1 %tobool.not.i58, label %hdac_hdmi_create_eld_ctl.exit.thread, label %hdac_hdmi_create_eld_ctl.exit

hdac_hdmi_create_eld_ctl.exit.thread:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %hdmi_eld_ctl.i) #11
  br label %do.end23

hdac_hdmi_create_eld_ctl.exit:                    ; preds = %if.end17
  %eld_ctl.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %call.i, i32 0, i32 12
  %42 = ptrtoint ptr %eld_ctl.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i57, ptr %eld_ctl.i, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card.i, align 4
  %snd_card.i = getelementptr inbounds %struct.snd_soc_card, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %snd_card.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %snd_card.i, align 4
  %call1.i = call i32 @snd_ctl_add(ptr noundef %46, ptr noundef nonnull %call.i57) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %hdmi_eld_ctl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp19 = icmp slt i32 %call1.i, 0
  br i1 %cmp19, label %hdac_hdmi_create_eld_ctl.exit.do.end23_crit_edge, label %if.end25

hdac_hdmi_create_eld_ctl.exit.do.end23_crit_edge: ; preds = %hdac_hdmi_create_eld_ctl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.end23:                                         ; preds = %hdac_hdmi_create_eld_ctl.exit.do.end23_crit_edge, %hdac_hdmi_create_eld_ctl.exit.thread
  %retval.0.i5965 = phi i32 [ -12, %hdac_hdmi_create_eld_ctl.exit.thread ], [ %call1.i, %hdac_hdmi_create_eld_ctl.exit.do.end23_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i5965, i32 noundef %device) #14
  br label %cleanup

if.end25:                                         ; preds = %hdac_hdmi_create_eld_ctl.exit
  %pcm_list = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %5, i32 0, i32 6
  %prev.i60 = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %5, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i60, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %48, ptr noundef %pcm_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %prev.i60, align 4
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %pcm_list, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %call.i, ptr %48, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end25.cleanup_crit_edge, %do.end23, %do.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end14 ], [ %retval.0.i5965, %do.end23 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_hda_ext_driver_unregister(ptr noundef nonnull @hdmi_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_ext_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hda_ext_driver_register(ptr noundef nonnull @hdmi_driver) #11
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_card_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_eld_ctl_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %count, align 8
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device, align 4
  %pcm_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %5, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %pcm.0.in.i = phi ptr [ %pcm_list.i, %entry ], [ %pcm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %pcm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %pcm.0.i = load ptr, ptr %pcm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pcm.0.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %pcm_id.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %pcm_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pcm_id.i, align 4
  %cmp2.i = icmp eq i32 %12, %9
  br i1 %cmp2.i, label %get_hdmi_pcm_from_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

get_hdmi_pcm_from_id.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %pcm.0.i, null
  br i1 %tobool.not, label %get_hdmi_pcm_from_id.exit.do.body_crit_edge, label %if.end9

get_hdmi_pcm_from_id.exit.do.body_crit_edge:      ; preds = %get_hdmi_pcm_from_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %get_hdmi_pcm_from_id.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_eld_ctl_info.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_eld_ctl_info, %if.then6)) #11
          to label %cleanup [label %if.then6], !srcloc !250

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_eld_ctl_info.__UNIQUE_ID_ddebug250, ptr noundef %14, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef %16) #11
  br label %cleanup

if.end9:                                          ; preds = %get_hdmi_pcm_from_id.exit
  %port_list = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %port_list, align 4
  %cmp.i.not = icmp eq ptr %18, %port_list
  br i1 %cmp.i.not, label %do.body13, label %if.end32

do.body13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_eld_ctl_info.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_eld_ctl_info, %if.then25)) #11
          to label %cleanup [label %if.then25], !srcloc !250

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_eld_ctl_info.__UNIQUE_ID_ddebug251, ptr noundef %20, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %22) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end9
  %pin_mutex = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %5, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %pin_mutex, i32 noundef 0) #11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end32
  %port.0.in = phi ptr [ %port_list, %if.end32 ], [ %port.0, %for.body.for.cond_crit_edge ]
  %23 = ptrtoint ptr %port.0.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %port.0 = load ptr, ptr %port.0.in, align 4
  %cmp.not = icmp eq ptr %port.0, %port_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %eld_valid = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port.0, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %eld_valid to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %eld_valid, align 1, !range !251
  %tobool39.not = icmp eq i8 %25, 0
  br i1 %tobool39.not, label %for.body.for.cond_crit_edge, label %if.then40

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %eld_size = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port.0, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %eld_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %eld_size, align 4
  %28 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %count, align 8
  br label %for.end

for.end:                                          ; preds = %if.then40, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %pin_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then25, %do.body13, %if.then6, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_eld_ctl_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = call ptr @memset(ptr %value, i32 0, i32 512)
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device, align 4
  %pcm_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %5, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %pcm.0.in.i = phi ptr [ %pcm_list.i, %entry ], [ %pcm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %pcm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %pcm.0.i = load ptr, ptr %pcm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pcm.0.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %pcm_id.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %pcm_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcm_id.i, align 4
  %cmp2.i = icmp eq i32 %11, %8
  br i1 %cmp2.i, label %get_hdmi_pcm_from_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

get_hdmi_pcm_from_id.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %pcm.0.i, null
  br i1 %tobool.not, label %get_hdmi_pcm_from_id.exit.do.body_crit_edge, label %if.end9

get_hdmi_pcm_from_id.exit.do.body_crit_edge:      ; preds = %get_hdmi_pcm_from_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %get_hdmi_pcm_from_id.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_eld_ctl_get.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_eld_ctl_get, %if.then6)) #11
          to label %cleanup [label %if.then6], !srcloc !250

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_eld_ctl_get.__UNIQUE_ID_ddebug252, ptr noundef %13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef %15) #11
  br label %cleanup

if.end9:                                          ; preds = %get_hdmi_pcm_from_id.exit
  %port_list = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %port_list, align 4
  %cmp.i.not = icmp eq ptr %17, %port_list
  br i1 %cmp.i.not, label %do.body13, label %if.end32

do.body13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_eld_ctl_get.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_eld_ctl_get, %if.then25)) #11
          to label %cleanup [label %if.then25], !srcloc !250

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_eld_ctl_get.__UNIQUE_ID_ddebug253, ptr noundef %19, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %21) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end9
  %pin_mutex = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %5, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %pin_mutex, i32 noundef 0) #11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end32
  %port.0.in = phi ptr [ %port_list, %if.end32 ], [ %port.0, %for.body.for.cond_crit_edge ]
  %22 = ptrtoint ptr %port.0.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %port.0 = load ptr, ptr %port.0.in, align 4
  %cmp.not = icmp eq ptr %port.0, %port_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %eld_valid = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port.0, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %eld_valid to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %eld_valid, align 1, !range !251
  %tobool39.not = icmp eq i8 %24, 0
  br i1 %tobool39.not, label %for.body.for.cond_crit_edge, label %if.end41

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end41:                                         ; preds = %for.body
  %eld_size = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port.0, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %eld_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %eld_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %26)
  %27 = icmp ugt i32 %26, 256
  br i1 %27, label %if.then45, label %if.end79

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %pin_mutex) #11
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %device, align 4
  %32 = ptrtoint ptr %eld_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %eld_size, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %31, i32 noundef %33) #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1506, i32 noundef 9, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end79:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %eld_buffer = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port.0, i32 0, i32 5, i32 3
  %34 = call ptr @memcpy(ptr %value, ptr %eld_buffer, i32 %26)
  br label %for.end

for.end:                                          ; preds = %if.end79, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %pin_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then45, %if.then25, %do.body13, %if.then6, %do.body
  %retval.0 = phi i32 [ -22, %if.then45 ], [ 0, %for.end ], [ 0, %if.then6 ], [ 0, %if.then25 ], [ 0, %do.body ], [ 0, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_dev_probe(ptr noundef %hdev) #0 align 64 {
entry:
  %name.i111.i = alloca [32 x i8], align 1
  %dai_name.i.i = alloca [32 x i8], align 1
  %rates.i.i = alloca i32, align 4
  %bps.i.i = alloca i32, align 4
  %formats.i.i = alloca i64, align 8
  %val.i.i.i.i = alloca i32, align 4
  %name.i.i = alloca [32 x i8], align 1
  %val.i.i = alloca i32, align 4
  %nid.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %hdev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %call = tail call ptr @hdac_get_device_id(ptr noundef %hdev, ptr noundef %1) #11
  %bus = getelementptr inbounds %struct.hdac_device, ptr %hdev, i32 0, i32 2
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %hdev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %call3 = tail call ptr @snd_hdac_ext_bus_get_link(ptr noundef %3, ptr noundef %retval.0.i) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hdev, ptr noundef nonnull @.str.33) #14
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %call6 = tail call i32 @snd_hdac_ext_bus_link_get(ptr noundef %9, ptr noundef nonnull %call3) #11
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %hdev, i32 noundef 232, i32 noundef 3520) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %chmap = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %call.i, i32 0, i32 11
  tail call void @snd_hdac_register_chmap_ops(ptr noundef %hdev, ptr noundef %chmap) #11
  %get_chmap = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %call.i, i32 0, i32 11, i32 1, i32 4
  %10 = ptrtoint ptr %get_chmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hdac_hdmi_get_chmap, ptr %get_chmap, align 4
  %set_chmap = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %call.i, i32 0, i32 11, i32 1, i32 5
  %11 = ptrtoint ptr %set_chmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @hdac_hdmi_set_chmap, ptr %set_chmap, align 4
  %is_pcm_attached = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %call.i, i32 0, i32 11, i32 1, i32 6
  %12 = ptrtoint ptr %is_pcm_attached to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @is_hdac_hdmi_pcm_attached, ptr %is_pcm_attached, align 4
  %get_spk_alloc = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %call.i, i32 0, i32 11, i32 1, i32 3
  %13 = ptrtoint ptr %get_spk_alloc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hdac_hdmi_get_spk_alloc, ptr %get_spk_alloc, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %hdev, ptr %call.i, align 4
  %tobool19.not = icmp eq ptr %call, null
  br i1 %tobool19.not, label %if.end10.cleanup_crit_edge, label %if.end21

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %driver_data = getelementptr inbounds %struct.hda_device_id, ptr %call, i32 0, i32 4
  %15 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool22.not = icmp eq i32 %16, 0
  %17 = inttoptr i32 %16 to ptr
  %spec.select = select i1 %tobool22.not, ptr @intel_drv_data, ptr %17
  %18 = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %call.i, i32 0, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spec.select, ptr %18, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %hdev, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i, align 4
  %pin_list = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %pin_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %pin_list, ptr %pin_list, align 4
  %prev.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %call.i, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pin_list, ptr %prev.i, align 4
  %cvt_list = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %cvt_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %cvt_list, ptr %cvt_list, align 4
  %prev.i87 = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %call.i, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cvt_list, ptr %prev.i87, align 4
  %pcm_list = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %pcm_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %pcm_list, ptr %pcm_list, align 4
  %prev.i88 = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %call.i, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %prev.i88 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pcm_list, ptr %prev.i88, align 4
  %pin_mutex = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %pin_mutex, ptr noundef nonnull @.str.41, ptr noundef nonnull @hdac_hdmi_dev_probe.__key) #11
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 4
  %addr = getelementptr inbounds %struct.hdac_device, ptr %hdev, i32 0, i32 3
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr, align 8
  tail call void @snd_hdac_display_power(ptr noundef %28, i32 noundef %30, i1 noundef zeroext true) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nid.i) #11
  %31 = ptrtoint ptr %nid.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %nid.i, align 2, !annotation !252
  %32 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i, align 4
  %drv_data.i.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drv_data.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %conv.i.i = trunc i32 %37 to i16
  %call2.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %conv.i.i, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #11
  %and.i.i = and i32 %call2.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end21.hdac_hdmi_skl_enable_all_pins.exit.i_crit_edge

if.end21.hdac_hdmi_skl_enable_all_pins.exit.i_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_skl_enable_all_pins.exit.i

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %or.i.i = or i32 %call2.i.i, 1
  %call5.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %conv.i.i, i32 noundef 0, i32 noundef 1921, i32 noundef %or.i.i) #11
  br label %hdac_hdmi_skl_enable_all_pins.exit.i

hdac_hdmi_skl_enable_all_pins.exit.i:             ; preds = %if.end.i.i, %if.end21.hdac_hdmi_skl_enable_all_pins.exit.i_crit_edge
  %38 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i, align 4
  %drv_data.i83.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %drv_data.i83.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %drv_data.i83.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %conv.i84.i = trunc i32 %43 to i16
  %call2.i85.i = tail call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %conv.i84.i, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #11
  %and.i86.i = and i32 %call2.i85.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86.i)
  %tobool.not.i87.i = icmp eq i32 %and.i86.i, 0
  br i1 %tobool.not.i87.i, label %if.end.i90.i, label %hdac_hdmi_skl_enable_all_pins.exit.i.hdac_hdmi_skl_enable_dp12.exit.i_crit_edge

hdac_hdmi_skl_enable_all_pins.exit.i.hdac_hdmi_skl_enable_dp12.exit.i_crit_edge: ; preds = %hdac_hdmi_skl_enable_all_pins.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_skl_enable_dp12.exit.i

if.end.i90.i:                                     ; preds = %hdac_hdmi_skl_enable_all_pins.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i88.i = or i32 %call2.i85.i, 2
  %call5.i89.i = tail call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %conv.i84.i, i32 noundef 0, i32 noundef 1921, i32 noundef %or.i88.i) #11
  br label %hdac_hdmi_skl_enable_dp12.exit.i

hdac_hdmi_skl_enable_dp12.exit.i:                 ; preds = %if.end.i90.i, %hdac_hdmi_skl_enable_all_pins.exit.i.hdac_hdmi_skl_enable_dp12.exit.i_crit_edge
  %afg.i = getelementptr inbounds %struct.hdac_device, ptr %hdev, i32 0, i32 5
  %44 = ptrtoint ptr %afg.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %afg.i, align 4
  %call1.i = call i32 @snd_hdac_get_sub_nodes(ptr noundef %hdev, i16 noundef zeroext %45, ptr noundef nonnull %nid.i) #11
  %46 = ptrtoint ptr %nid.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.not.i89 = icmp eq i16 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 1
  %or.cond.i = select i1 %tobool.not.i89, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %do.end.i, label %hdac_hdmi_skl_enable_dp12.exit.i.for.body.i_crit_edge

hdac_hdmi_skl_enable_dp12.exit.i.for.body.i_crit_edge: ; preds = %hdac_hdmi_skl_enable_dp12.exit.i
  br label %for.body.i

do.end.i:                                         ; preds = %hdac_hdmi_skl_enable_dp12.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %hdev, ptr noundef nonnull @.str.47) #14
  br label %hdac_hdmi_parse_and_map_nid.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %hdac_hdmi_skl_enable_dp12.exit.i.for.body.i_crit_edge
  %i.0153.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %hdac_hdmi_skl_enable_dp12.exit.i.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %nid.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %nid.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %50 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %val.i.i, align 4, !annotation !252
  %call.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %hdev, i16 noundef zeroext %49, i32 noundef 9, ptr noundef nonnull %val.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end8.thread.i, label %snd_hdac_read_parm.exit.i

if.end8.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  br label %for.inc.i

snd_hdac_read_parm.exit.i:                        ; preds = %for.body.i
  %51 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  %and.i = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %snd_hdac_read_parm.exit.i.for.inc.i_crit_edge, label %if.end8.i

snd_hdac_read_parm.exit.i.for.inc.i_crit_edge:    ; preds = %snd_hdac_read_parm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end8.i:                                        ; preds = %snd_hdac_read_parm.exit.i
  %and.i92.i = lshr i32 %52, 20
  %shr.i.i = and i32 %and.i92.i, 15
  %53 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.end8.i.for.inc.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 4, label %sw.bb13.i
  ]

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.end8.i
  %54 = ptrtoint ptr %nid.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %nid.i, align 2
  %56 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i.i) #11
  %58 = call ptr @memset(ptr %name.i.i, i32 255, i32 32)
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %hdev, i32 noundef 48, i32 noundef 3520) #11
  %tobool.not.i94.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i94.i, label %sw.bb.i.hdac_hdmi_add_cvt.exit.thread.i_crit_edge, label %if.end.i97.i

sw.bb.i.hdac_hdmi_add_cvt.exit.thread.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_add_cvt.exit.thread.i

if.end.i97.i:                                     ; preds = %sw.bb.i
  %nid3.i.i = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %call.i.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %nid3.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %55, ptr %nid3.i.i, align 8
  %conv.i95.i = zext i16 %55 to i32
  %call5.i96.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i.i, ptr noundef nonnull @.str.59, i32 noundef %conv.i95.i) #11
  %call8.i.i = call noalias ptr @devm_kstrdup(ptr noundef %hdev, ptr noundef nonnull %name.i.i, i32 noundef 3264) #11
  %name9.i.i = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %call.i.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %name9.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call8.i.i, ptr %name9.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not.i.i, label %if.end.i97.i.hdac_hdmi_add_cvt.exit.thread.i_crit_edge, label %if.end13.i.i

if.end.i97.i.hdac_hdmi_add_cvt.exit.thread.i_crit_edge: ; preds = %if.end.i97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_add_cvt.exit.thread.i

if.end13.i.i:                                     ; preds = %if.end.i97.i
  %cvt_list.i.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %57, i32 0, i32 5
  %prev.i.i.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %57, i32 0, i32 5, i32 1
  %61 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i, ptr noundef %62, ptr noundef %cvt_list.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end13.i.i.list_add_tail.exit.i.i_crit_edge

if.end13.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i.i, ptr %prev.i.i.i, align 4
  %64 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %cvt_list.i.i, ptr %call.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %call.i.i.i, ptr %62, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end13.i.i.list_add_tail.exit.i.i_crit_edge
  %num_cvt.i.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %57, i32 0, i32 8
  %67 = ptrtoint ptr %num_cvt.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_cvt.i.i, align 4
  %inc.i.i = add i32 %68, 1
  store i32 %inc.i.i, ptr %num_cvt.i.i, align 4
  %69 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver_data.i, align 4
  %71 = ptrtoint ptr %nid3.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %nid3.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i.i) #11
  %73 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %val.i.i.i.i, align 4, !annotation !252
  %call.i.i27.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %hdev, i16 noundef zeroext %72, i32 noundef 9, ptr noundef nonnull %val.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i27.i.i, 0
  br i1 %cmp.i.i.i.i, label %list_add_tail.exit.i.i.snd_hdac_read_parm.exit.i.i.i_crit_edge, label %cond.false.i.i.i.i

list_add_tail.exit.i.i.snd_hdac_read_parm.exit.i.i.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_hdac_read_parm.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %val.i.i.i.i, align 4
  %phi.bo.i.i.i = lshr i32 %75, 12
  %phi.bo33.i.i.i = and i32 %phi.bo.i.i.i, 14
  %phi.bo34.i.i.i = add nuw nsw i32 %phi.bo33.i.i.i, 2
  br label %snd_hdac_read_parm.exit.i.i.i

snd_hdac_read_parm.exit.i.i.i:                    ; preds = %cond.false.i.i.i.i, %list_add_tail.exit.i.i.snd_hdac_read_parm.exit.i.i.i_crit_edge
  %cond.i.i.i.i = phi i32 [ %phi.bo34.i.i.i, %cond.false.i.i.i.i ], [ 16, %list_add_tail.exit.i.i.snd_hdac_read_parm.exit.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i.i) #11
  %params.i.i.i = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %call.i.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %params.i.i.i, align 8
  %channels_max.i.i.i = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %channels_max.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %cond.i.i.i.i, ptr %channels_max.i.i.i, align 4
  %chmap.i.i.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %70, i32 0, i32 11
  %78 = ptrtoint ptr %chmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %chmap.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i.i, i32 %79)
  %cmp.i.i.i = icmp ugt i32 %cond.i.i.i.i, %79
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %snd_hdac_read_parm.exit.i.i.i.if.end.i.i.i_crit_edge

snd_hdac_read_parm.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %snd_hdac_read_parm.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %snd_hdac_read_parm.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %chmap.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %cond.i.i.i.i, ptr %chmap.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %snd_hdac_read_parm.exit.i.i.i.if.end.i.i.i_crit_edge
  %81 = ptrtoint ptr %nid3.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %nid3.i.i, align 8
  %rates.i.i.i = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %call.i.i.i, i32 0, i32 3, i32 2
  %formats.i.i.i = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %call.i.i.i, i32 0, i32 3, i32 3
  %maxbps.i.i.i = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %call.i.i.i, i32 0, i32 3, i32 4
  %call11.i.i.i = call i32 @snd_hdac_query_supported_pcm(ptr noundef %hdev, i16 noundef zeroext %82, ptr noundef %rates.i.i.i, ptr noundef %formats.i.i.i, ptr noundef %maxbps.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %cmp12.i.i.i = icmp slt i32 %call11.i.i.i, 0
  br i1 %cmp12.i.i.i, label %do.end.i.i.i, label %hdac_hdmi_add_cvt.exit.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %nid3.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %nid3.i.i, align 8
  %conv.i.i.i = zext i16 %84 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %hdev, ptr noundef nonnull @.str.60, i32 noundef %conv.i.i.i, i32 noundef %call11.i.i.i) #14
  br label %hdac_hdmi_add_cvt.exit.thread.i

hdac_hdmi_add_cvt.exit.thread.i:                  ; preds = %do.end.i.i.i, %if.end.i97.i.hdac_hdmi_add_cvt.exit.thread.i_crit_edge, %sw.bb.i.hdac_hdmi_add_cvt.exit.thread.i_crit_edge
  %retval.0.i98.ph.i = phi i32 [ %call11.i.i.i, %do.end.i.i.i ], [ -12, %sw.bb.i.hdac_hdmi_add_cvt.exit.thread.i_crit_edge ], [ -12, %if.end.i97.i.hdac_hdmi_add_cvt.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i.i) #11
  br label %hdac_hdmi_parse_and_map_nid.exit.thread

hdac_hdmi_add_cvt.exit.i:                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i.i) #11
  br label %for.inc.i

sw.bb13.i:                                        ; preds = %if.end8.i
  %85 = ptrtoint ptr %nid.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %nid.i, align 2
  %87 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %driver_data.i, align 4
  %call.i.i100.i = call noalias ptr @devm_kmalloc(ptr noundef %hdev, i32 noundef 24, i32 noundef 3520) #11
  %tobool.not.i101.i = icmp eq ptr %call.i.i100.i, null
  br i1 %tobool.not.i101.i, label %sw.bb13.i.hdac_hdmi_parse_and_map_nid.exit.thread_crit_edge, label %if.end.i103.i

sw.bb13.i.hdac_hdmi_parse_and_map_nid.exit.thread_crit_edge: ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_parse_and_map_nid.exit.thread

if.end.i103.i:                                    ; preds = %sw.bb13.i
  %nid3.i102.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %call.i.i100.i, i32 0, i32 1
  %89 = ptrtoint ptr %nid3.i102.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %86, ptr %nid3.i102.i, align 4
  %mst_capable.i.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %call.i.i100.i, i32 0, i32 2
  %90 = ptrtoint ptr %mst_capable.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %mst_capable.i.i, align 2
  %hdev4.i.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %call.i.i100.i, i32 0, i32 5
  %91 = ptrtoint ptr %hdev4.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %hdev, ptr %hdev4.i.i, align 4
  %call5.i.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %hdev, i32 noundef 1236, i32 noundef 3520) #11
  %tobool.not.i.i.i = icmp eq ptr %call5.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i103.i.hdac_hdmi_parse_and_map_nid.exit.thread_crit_edge, label %if.end7.i.i

if.end.i103.i.hdac_hdmi_parse_and_map_nid.exit.thread_crit_edge: ; preds = %if.end.i103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_parse_and_map_nid.exit.thread

if.end7.i.i:                                      ; preds = %if.end.i103.i
  %id.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %id.i.i.i, align 4
  %pin2.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 0, i32 2
  %93 = ptrtoint ptr %pin2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i.i100.i, ptr %pin2.i.i.i, align 4
  %dapm_work.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 0, i32 10
  call void @__init_work(ptr noundef %dapm_work.i.i.i, i32 noundef 0) #11
  %94 = ptrtoint ptr %dapm_work.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -64, ptr %dapm_work.i.i.i, align 4
  %lockdep_map.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 0, i32 10, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @hdac_hdmi_add_ports.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry10.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 0, i32 10, i32 1
  %95 = ptrtoint ptr %entry10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %entry10.i.i.i, ptr %entry10.i.i.i, align 4
  %prev.i.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 0, i32 10, i32 1, i32 1
  %96 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %entry10.i.i.i, ptr %prev.i.i.i.i, align 4
  %func.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 0, i32 10, i32 2
  %97 = ptrtoint ptr %func.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @hdac_hdmi_jack_dapm_work, ptr %func.i.i.i, align 4
  %id.1.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 1, i32 1
  %98 = ptrtoint ptr %id.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %id.1.i.i.i, align 4
  %pin2.1.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 1, i32 2
  %99 = ptrtoint ptr %pin2.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i.i100.i, ptr %pin2.1.i.i.i, align 4
  %dapm_work.1.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 1, i32 10
  call void @__init_work(ptr noundef %dapm_work.1.i.i.i, i32 noundef 0) #11
  %100 = ptrtoint ptr %dapm_work.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -64, ptr %dapm_work.1.i.i.i, align 4
  %lockdep_map.1.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 1, i32 10, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.1.i.i.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @hdac_hdmi_add_ports.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry10.1.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 1, i32 10, i32 1
  %101 = ptrtoint ptr %entry10.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %entry10.1.i.i.i, ptr %entry10.1.i.i.i, align 4
  %prev.i.1.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 1, i32 10, i32 1, i32 1
  %102 = ptrtoint ptr %prev.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %entry10.1.i.i.i, ptr %prev.i.1.i.i.i, align 4
  %func.1.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 1, i32 10, i32 2
  %103 = ptrtoint ptr %func.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @hdac_hdmi_jack_dapm_work, ptr %func.1.i.i.i, align 4
  %id.2.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 2, i32 1
  %104 = ptrtoint ptr %id.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %id.2.i.i.i, align 4
  %pin2.2.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 2, i32 2
  %105 = ptrtoint ptr %pin2.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i.i100.i, ptr %pin2.2.i.i.i, align 4
  %dapm_work.2.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 2, i32 10
  call void @__init_work(ptr noundef %dapm_work.2.i.i.i, i32 noundef 0) #11
  %106 = ptrtoint ptr %dapm_work.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -64, ptr %dapm_work.2.i.i.i, align 4
  %lockdep_map.2.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 2, i32 10, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.2.i.i.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @hdac_hdmi_add_ports.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry10.2.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 2, i32 10, i32 1
  %107 = ptrtoint ptr %entry10.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %entry10.2.i.i.i, ptr %entry10.2.i.i.i, align 4
  %prev.i.2.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 2, i32 10, i32 1, i32 1
  %108 = ptrtoint ptr %prev.i.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %entry10.2.i.i.i, ptr %prev.i.2.i.i.i, align 4
  %func.2.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call5.i.i.i.i.i, i32 2, i32 10, i32 2
  %109 = ptrtoint ptr %func.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @hdac_hdmi_jack_dapm_work, ptr %func.2.i.i.i, align 4
  %ports13.i.i.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %call.i.i100.i, i32 0, i32 3
  %110 = ptrtoint ptr %ports13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call5.i.i.i.i.i, ptr %ports13.i.i.i, align 4
  %num_ports.i.i.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %call.i.i100.i, i32 0, i32 4
  %111 = ptrtoint ptr %num_ports.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 3, ptr %num_ports.i.i.i, align 4
  %pin_list.i.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %88, i32 0, i32 4
  %prev.i.i104.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %88, i32 0, i32 4, i32 1
  %112 = ptrtoint ptr %prev.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i104.i, align 4
  %call.i.i.i105.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i100.i, ptr noundef %113, ptr noundef %pin_list.i.i) #11
  br i1 %call.i.i.i105.i, label %if.end.i.i.i107.i, label %if.end7.i.i.hdac_hdmi_add_pin.exit.i_crit_edge

if.end7.i.i.hdac_hdmi_add_pin.exit.i_crit_edge:   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_add_pin.exit.i

if.end.i.i.i107.i:                                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %prev.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i.i100.i, ptr %prev.i.i104.i, align 4
  %115 = ptrtoint ptr %call.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %pin_list.i.i, ptr %call.i.i100.i, align 4
  %prev3.i.i.i106.i = getelementptr inbounds %struct.list_head, ptr %call.i.i100.i, i32 0, i32 1
  %116 = ptrtoint ptr %prev3.i.i.i106.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev3.i.i.i106.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %call.i.i100.i, ptr %113, align 4
  br label %hdac_hdmi_add_pin.exit.i

hdac_hdmi_add_pin.exit.i:                         ; preds = %if.end.i.i.i107.i, %if.end7.i.i.hdac_hdmi_add_pin.exit.i_crit_edge
  %num_pin.i.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %88, i32 0, i32 7
  %118 = ptrtoint ptr %num_pin.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_pin.i.i, align 4
  %inc.i108.i = add i32 %119, 1
  store i32 %inc.i108.i, ptr %num_pin.i.i, align 4
  %120 = ptrtoint ptr %num_ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_ports.i.i.i, align 4
  %num_ports8.i.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %88, i32 0, i32 9
  %122 = ptrtoint ptr %num_ports8.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_ports8.i.i, align 4
  %add.i.i = add i32 %123, %121
  store i32 %add.i.i, ptr %num_ports8.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %hdac_hdmi_add_pin.exit.i, %hdac_hdmi_add_cvt.exit.i, %if.end8.i.for.inc.i_crit_edge, %snd_hdac_read_parm.exit.i.for.inc.i_crit_edge, %if.end8.thread.i
  %inc.i = add nuw nsw i32 %i.0153.i, 1
  %124 = ptrtoint ptr %nid.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %nid.i, align 2
  %inc19.i = add i16 %125, 1
  store i16 %inc19.i, ptr %nid.i, align 2
  %exitcond.not.i = icmp eq i32 %inc.i, %call1.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %num_pin.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %33, i32 0, i32 7
  %126 = ptrtoint ptr %num_pin.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_pin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool20.not.i = icmp eq i32 %127, 0
  br i1 %tobool20.not.i, label %for.end.i.if.then23.i_crit_edge, label %lor.lhs.false21.i

for.end.i.if.then23.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23.i

lor.lhs.false21.i:                                ; preds = %for.end.i
  %num_cvt.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %33, i32 0, i32 8
  %128 = ptrtoint ptr %num_cvt.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_cvt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool22.not.i = icmp eq i32 %129, 0
  br i1 %tobool22.not.i, label %lor.lhs.false21.i.if.then23.i_crit_edge, label %if.end28.i

lor.lhs.false21.i.if.then23.i_crit_edge:          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23.i

if.then23.i:                                      ; preds = %lor.lhs.false21.i.if.then23.i_crit_edge, %for.end.i.if.then23.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %hdev, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.48) #14
  br label %hdac_hdmi_parse_and_map_nid.exit.thread

if.end28.i:                                       ; preds = %lor.lhs.false21.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i111.i) #11
  %130 = call ptr @memset(ptr %name.i111.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dai_name.i.i) #11
  %131 = call ptr @memset(ptr %dai_name.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rates.i.i) #11
  %132 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %rates.i.i, align 4, !annotation !252
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bps.i.i) #11
  %133 = ptrtoint ptr %bps.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %bps.i.i, align 4, !annotation !252
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %formats.i.i) #11
  %134 = ptrtoint ptr %formats.i.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 -1, ptr %formats.i.i, align 8, !annotation !252
  %mul.i.i = mul i32 %129, 168
  %call.i.i112.i = call noalias ptr @devm_kmalloc(ptr noundef %hdev, i32 noundef %mul.i.i, i32 noundef 3520) #11
  %tobool.not.i113.i = icmp eq ptr %call.i.i112.i, null
  br i1 %tobool.not.i113.i, label %if.end28.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge, label %if.end.i115.i

if.end28.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_parse_and_map_nid.exit.thread104

if.end.i115.i:                                    ; preds = %if.end28.i
  %cvt_list.i114.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %33, i32 0, i32 5
  %135 = ptrtoint ptr %cvt_list.i114.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %cvt.0102.i.i = load ptr, ptr %cvt_list.i114.i, align 4
  %cmp.not103.i.i = icmp eq ptr %cvt.0102.i.i, %cvt_list.i114.i
  br i1 %cmp.not103.i.i, label %if.end.i115.i.if.end37.i_crit_edge, label %if.end.i115.i.for.body.i.i_crit_edge

if.end.i115.i.for.body.i.i_crit_edge:             ; preds = %if.end.i115.i
  br label %for.body.i.i

if.end.i115.i.if.end37.i_crit_edge:               ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

for.body.i.i:                                     ; preds = %if.end31.i.i.for.body.i.i_crit_edge, %if.end.i115.i.for.body.i.i_crit_edge
  %cvt.0105.i.i = phi ptr [ %cvt.0.i.i, %if.end31.i.i.for.body.i.i_crit_edge ], [ %cvt.0102.i.i, %if.end.i115.i.for.body.i.i_crit_edge ]
  %i.0104.i.i = phi i32 [ %add.i118.i, %if.end31.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i115.i.for.body.i.i_crit_edge ]
  %nid.i.i = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %cvt.0105.i.i, i32 0, i32 1
  %136 = ptrtoint ptr %nid.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %nid.i.i, align 8
  %call2.i116.i = call i32 @snd_hdac_query_supported_pcm(ptr noundef %hdev, i16 noundef zeroext %137, ptr noundef nonnull %rates.i.i, ptr noundef nonnull %formats.i.i, ptr noundef nonnull %bps.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i116.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i116.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %hdac_hdmi_parse_and_map_nid.exit

if.end5.i.i:                                      ; preds = %for.body.i.i
  %138 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rates.i.i, align 4
  %and.i117.i = and i32 %139, -2625
  store i32 %and.i117.i, ptr %rates.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117.i)
  %tobool6.not.i.i = icmp eq i32 %and.i117.i, 0
  br i1 %tobool6.not.i.i, label %if.end5.i.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge, label %if.end8.i.i

if.end5.i.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_parse_and_map_nid.exit.thread104

if.end8.i.i:                                      ; preds = %if.end5.i.i
  %add.i118.i = add i32 %i.0104.i.i, 1
  %call9.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %dai_name.i.i, ptr noundef nonnull @.str.63, i32 noundef %add.i118.i) #11
  %call12.i.i = call noalias ptr @devm_kstrdup(ptr noundef %hdev, ptr noundef nonnull %dai_name.i.i, i32 noundef 3264) #11
  %arrayidx.i.i = getelementptr %struct.snd_soc_dai_driver, ptr %call.i.i112.i, i32 %i.0104.i.i
  %140 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call12.i.i, ptr %arrayidx.i.i, align 8
  %tobool16.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool16.not.i.i, label %if.end8.i.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge, label %if.end18.i.i

if.end8.i.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_parse_and_map_nid.exit.thread104

if.end18.i.i:                                     ; preds = %if.end8.i.i
  %call21.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i111.i, i32 noundef 32, ptr noundef nonnull @.str.64, i32 noundef %add.i118.i) #11
  %call24.i.i = call noalias ptr @devm_kstrdup(ptr noundef %hdev, ptr noundef nonnull %name.i111.i, i32 noundef 3264) #11
  %playback.i.i = getelementptr %struct.snd_soc_dai_driver, ptr %call.i.i112.i, i32 %i.0104.i.i, i32 11
  %141 = ptrtoint ptr %playback.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call24.i.i, ptr %playback.i.i, align 8
  %tobool29.not.i.i = icmp eq ptr %call24.i.i, null
  br i1 %tobool29.not.i.i, label %if.end18.i.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge, label %if.end31.i.i

if.end18.i.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_parse_and_map_nid.exit.thread104

if.end31.i.i:                                     ; preds = %if.end18.i.i
  %142 = ptrtoint ptr %formats.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %formats.i.i, align 8
  %formats34.i.i = getelementptr %struct.snd_soc_dai_driver, ptr %call.i.i112.i, i32 %i.0104.i.i, i32 11, i32 1
  %144 = ptrtoint ptr %formats34.i.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %143, ptr %formats34.i.i, align 8
  %145 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rates.i.i, align 4
  %rates37.i.i = getelementptr %struct.snd_soc_dai_driver, ptr %call.i.i112.i, i32 %i.0104.i.i, i32 11, i32 2
  %147 = ptrtoint ptr %rates37.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %rates37.i.i, align 8
  %rate_max40.i.i = getelementptr %struct.snd_soc_dai_driver, ptr %call.i.i112.i, i32 %i.0104.i.i, i32 11, i32 4
  %148 = ptrtoint ptr %rate_max40.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 384000, ptr %rate_max40.i.i, align 8
  %rate_min43.i.i = getelementptr %struct.snd_soc_dai_driver, ptr %call.i.i112.i, i32 %i.0104.i.i, i32 11, i32 3
  %149 = ptrtoint ptr %rate_min43.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 8000, ptr %rate_min43.i.i, align 4
  %channels_min.i.i = getelementptr %struct.snd_soc_dai_driver, ptr %call.i.i112.i, i32 %i.0104.i.i, i32 11, i32 5
  %150 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 2, ptr %channels_min.i.i, align 4
  %channels_max.i.i = getelementptr %struct.snd_soc_dai_driver, ptr %call.i.i112.i, i32 %i.0104.i.i, i32 11, i32 6
  %151 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 2, ptr %channels_max.i.i, align 8
  %152 = ptrtoint ptr %bps.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %bps.i.i, align 4
  %sig_bits.i.i = getelementptr %struct.snd_soc_dai_driver, ptr %call.i.i112.i, i32 %i.0104.i.i, i32 11, i32 7
  %154 = ptrtoint ptr %sig_bits.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %sig_bits.i.i, align 4
  %ops.i.i = getelementptr %struct.snd_soc_dai_driver, ptr %call.i.i112.i, i32 %i.0104.i.i, i32 8
  %155 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @hdmi_dai_ops, ptr %ops.i.i, align 8
  %156 = ptrtoint ptr %cvt.0105.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %cvt.0.i.i = load ptr, ptr %cvt.0105.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %cvt.0.i.i, %cvt_list.i114.i
  br i1 %cmp.not.i.i, label %if.end31.i.i.if.end37.i_crit_edge, label %if.end31.i.i.for.body.i.i_crit_edge

if.end31.i.i.for.body.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end31.i.i.if.end37.i_crit_edge:                ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end31.i.i.if.end37.i_crit_edge, %if.end.i115.i.if.end37.i_crit_edge
  %dai_drv.i.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %33, i32 0, i32 13
  %157 = ptrtoint ptr %dai_drv.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call.i.i112.i, ptr %dai_drv.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %formats.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bps.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rates.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dai_name.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i111.i) #11
  %158 = ptrtoint ptr %num_cvt.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %num_cvt.i, align 4
  %160 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %driver_data.i, align 4
  %cvt_list.i121.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %161, i32 0, i32 5
  %162 = ptrtoint ptr %cvt_list.i121.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile ptr, ptr %cvt_list.i121.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %163, %cvt_list.i121.i
  br i1 %cmp.i.not.i.i, label %do.end44.i, label %for.body.i125.i

for.body.i125.i:                                  ; preds = %if.end37.i
  %arrayidx.i124.i = getelementptr %struct.hdac_hdmi_priv, ptr %161, i32 0, i32 3, i32 0
  %164 = ptrtoint ptr %arrayidx.i124.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %arrayidx.i124.i, align 4
  %cvt6.i.i = getelementptr %struct.hdac_hdmi_priv, ptr %161, i32 0, i32 3, i32 0, i32 2
  %165 = ptrtoint ptr %cvt6.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %163, ptr %cvt6.i.i, align 4
  %166 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %166)
  %cvt.0.1.i.i = load ptr, ptr %163, align 4
  %cmp.not.1.i.i = icmp eq ptr %cvt.0.1.i.i, %cvt_list.i121.i
  br i1 %cmp.not.1.i.i, label %for.body.i125.i.hdac_hdmi_parse_and_map_nid.exit.thread96_crit_edge, label %for.body.1.i.i

for.body.i125.i.hdac_hdmi_parse_and_map_nid.exit.thread96_crit_edge: ; preds = %for.body.i125.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_parse_and_map_nid.exit.thread96

for.body.1.i.i:                                   ; preds = %for.body.i125.i
  %arrayidx.1.i.i = getelementptr %struct.hdac_hdmi_priv, ptr %161, i32 0, i32 3, i32 1
  %167 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %arrayidx.1.i.i, align 4
  %cvt6.1.i.i = getelementptr %struct.hdac_hdmi_priv, ptr %161, i32 0, i32 3, i32 1, i32 2
  %168 = ptrtoint ptr %cvt6.1.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %cvt.0.1.i.i, ptr %cvt6.1.i.i, align 4
  %169 = ptrtoint ptr %cvt.0.1.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %cvt.0.2.i.i = load ptr, ptr %cvt.0.1.i.i, align 4
  %cmp.not.2.i.i = icmp eq ptr %cvt.0.2.i.i, %cvt_list.i121.i
  br i1 %cmp.not.2.i.i, label %for.body.1.i.i.hdac_hdmi_parse_and_map_nid.exit.thread96_crit_edge, label %for.body.2.i.i

for.body.1.i.i.hdac_hdmi_parse_and_map_nid.exit.thread96_crit_edge: ; preds = %for.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_parse_and_map_nid.exit.thread96

for.body.2.i.i:                                   ; preds = %for.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.2.i.i = getelementptr %struct.hdac_hdmi_priv, ptr %161, i32 0, i32 3, i32 2
  %170 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 2, ptr %arrayidx.2.i.i, align 4
  %cvt6.2.i.i = getelementptr %struct.hdac_hdmi_priv, ptr %161, i32 0, i32 3, i32 2, i32 2
  %171 = ptrtoint ptr %cvt6.2.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %cvt.0.2.i.i, ptr %cvt6.2.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %hdev, ptr noundef nonnull @.str.77, i32 noundef 3) #14
  br label %hdac_hdmi_parse_and_map_nid.exit.thread96

do.end44.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %hdev, ptr noundef nonnull @.str.57, i32 noundef -22) #14
  br label %hdac_hdmi_parse_and_map_nid.exit.thread

hdac_hdmi_parse_and_map_nid.exit.thread:          ; preds = %do.end44.i, %if.then23.i, %if.end.i103.i.hdac_hdmi_parse_and_map_nid.exit.thread_crit_edge, %sw.bb13.i.hdac_hdmi_parse_and_map_nid.exit.thread_crit_edge, %hdac_hdmi_add_cvt.exit.thread.i, %do.end.i
  %retval.2.i.ph = phi i32 [ %retval.0.i98.ph.i, %hdac_hdmi_add_cvt.exit.thread.i ], [ -22, %do.end44.i ], [ -5, %if.then23.i ], [ -22, %do.end.i ], [ -12, %if.end.i103.i.hdac_hdmi_parse_and_map_nid.exit.thread_crit_edge ], [ -12, %sw.bb13.i.hdac_hdmi_parse_and_map_nid.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nid.i) #11
  br label %do.end37

hdac_hdmi_parse_and_map_nid.exit.thread96:        ; preds = %for.body.2.i.i, %for.body.1.i.i.hdac_hdmi_parse_and_map_nid.exit.thread96_crit_edge, %for.body.i125.i.hdac_hdmi_parse_and_map_nid.exit.thread96_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nid.i) #11
  br label %if.end39

hdac_hdmi_parse_and_map_nid.exit.thread104:       ; preds = %if.end18.i.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge, %if.end8.i.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge, %if.end5.i.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge, %if.end28.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge
  %retval.0.i119.ph.i.ph = phi i32 [ -12, %if.end28.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge ], [ -12, %if.end18.i.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge ], [ -12, %if.end8.i.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge ], [ -22, %if.end5.i.i.hdac_hdmi_parse_and_map_nid.exit.thread104_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %formats.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bps.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rates.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dai_name.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i111.i) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %hdev, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i119.ph.i.ph) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nid.i) #11
  br label %do.end37

hdac_hdmi_parse_and_map_nid.exit:                 ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %formats.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bps.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rates.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dai_name.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i111.i) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %hdev, ptr noundef nonnull @.str.54, i32 noundef %call2.i116.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nid.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i116.i)
  %cmp33 = icmp slt i32 %call2.i116.i, 0
  br i1 %cmp33, label %hdac_hdmi_parse_and_map_nid.exit.do.end37_crit_edge, label %hdac_hdmi_parse_and_map_nid.exit.if.end39_crit_edge

hdac_hdmi_parse_and_map_nid.exit.if.end39_crit_edge: ; preds = %hdac_hdmi_parse_and_map_nid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

hdac_hdmi_parse_and_map_nid.exit.do.end37_crit_edge: ; preds = %hdac_hdmi_parse_and_map_nid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end37

do.end37:                                         ; preds = %hdac_hdmi_parse_and_map_nid.exit.do.end37_crit_edge, %hdac_hdmi_parse_and_map_nid.exit.thread104, %hdac_hdmi_parse_and_map_nid.exit.thread
  %retval.2.i94 = phi i32 [ %retval.2.i.ph, %hdac_hdmi_parse_and_map_nid.exit.thread ], [ %call2.i116.i, %hdac_hdmi_parse_and_map_nid.exit.do.end37_crit_edge ], [ %retval.0.i119.ph.i.ph, %hdac_hdmi_parse_and_map_nid.exit.thread104 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %hdev, ptr noundef nonnull @.str.43, i32 noundef %retval.2.i94) #14
  br label %cleanup

if.end39:                                         ; preds = %hdac_hdmi_parse_and_map_nid.exit.if.end39_crit_edge, %hdac_hdmi_parse_and_map_nid.exit.thread96
  %num_dais.0102 = phi i32 [ %159, %hdac_hdmi_parse_and_map_nid.exit.thread96 ], [ 0, %hdac_hdmi_parse_and_map_nid.exit.if.end39_crit_edge ]
  %hdmi_dais.0101 = phi ptr [ %call.i.i112.i, %hdac_hdmi_parse_and_map_nid.exit.thread96 ], [ null, %hdac_hdmi_parse_and_map_nid.exit.if.end39_crit_edge ]
  %call40 = call i32 @snd_hdac_refresh_widgets(ptr noundef %hdev) #11
  %call42 = call i32 @devm_snd_soc_register_component(ptr noundef %hdev, ptr noundef nonnull @hdmi_hda_codec, ptr noundef %hdmi_dais.0101, i32 noundef %num_dais.0102) #11
  %172 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %bus, align 4
  %call44 = call i32 @snd_hdac_ext_bus_link_put(ptr noundef %173, ptr noundef nonnull %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end37, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.2.i94, %do.end37 ], [ %call42, %if.end39 ], [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_dev_remove(ptr nocapture noundef readonly %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %hdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pin_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pin_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %pin.021.i = load ptr, ptr %pin_list.i, align 4
  %cmp.not22.i = icmp eq ptr %pin.021.i, %pin_list.i
  br i1 %cmp.not22.i, label %entry.clear_dapm_works.exit_crit_edge, label %entry.for.cond2.preheader.i_crit_edge

entry.for.cond2.preheader.i_crit_edge:            ; preds = %entry
  br label %for.cond2.preheader.i

entry.clear_dapm_works.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear_dapm_works.exit

for.cond.loopexit.i:                              ; preds = %for.body4.i.for.cond.loopexit.i_crit_edge, %for.cond2.preheader.i.for.cond.loopexit.i_crit_edge
  %3 = ptrtoint ptr %pin.023.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %pin.0.i = load ptr, ptr %pin.023.i, align 4
  %cmp.not.i = icmp eq ptr %pin.0.i, %pin_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.clear_dapm_works.exit_crit_edge, label %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge

for.cond.loopexit.i.for.cond2.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond2.preheader.i

for.cond.loopexit.i.clear_dapm_works.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear_dapm_works.exit

for.cond2.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge, %entry.for.cond2.preheader.i_crit_edge
  %pin.023.i = phi ptr [ %pin.0.i, %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge ], [ %pin.021.i, %entry.for.cond2.preheader.i_crit_edge ]
  %num_ports.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.023.i, i32 0, i32 4
  %4 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp319.i = icmp sgt i32 %5, 0
  br i1 %cmp319.i, label %for.body4.lr.ph.i, label %for.cond2.preheader.i.for.cond.loopexit.i_crit_edge

for.cond2.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %ports.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.023.i, i32 0, i32 3
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i, %for.body4.i.for.body4.i_crit_edge ]
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports.i, align 4
  %dapm_work.i = getelementptr %struct.hdac_hdmi_port, ptr %7, i32 %i.020.i, i32 10
  %call5.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %dapm_work.i) #11
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %8 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ports.i, align 4
  %cmp3.i = icmp slt i32 %inc.i, %9
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.for.cond.loopexit.i_crit_edge

for.body4.i.for.cond.loopexit.i_crit_edge:        ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.i

clear_dapm_works.exit:                            ; preds = %for.cond.loopexit.i.clear_dapm_works.exit_crit_edge, %entry.clear_dapm_works.exit_crit_edge
  %bus = getelementptr inbounds %struct.hdac_device, ptr %hdev, i32 0, i32 2
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %addr = getelementptr inbounds %struct.hdac_device, ptr %hdev, i32 0, i32 3
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 8
  tail call void @snd_hdac_display_power(ptr noundef %11, i32 noundef %13, i1 noundef zeroext false) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_codec_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pin_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pin_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %pin.042.i = load ptr, ptr %pin_list.i, align 4
  %cmp.not43.i = icmp eq ptr %pin.042.i, %pin_list.i
  br i1 %cmp.not43.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %3 = ptrtoint ptr %pin.044.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %pin.0.i = load ptr, ptr %pin.044.i, align 4
  %cmp.not.i = icmp eq ptr %pin.0.i, %pin_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.cleanup_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.loopexit.i.cleanup_crit_edge:            ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %pin.044.i = phi ptr [ %pin.0.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %pin.042.i, %if.end.for.body.i_crit_edge ]
  %num_ports.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.044.i, i32 0, i32 4
  %4 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp739.i = icmp sgt i32 %5, 0
  br i1 %cmp739.i, label %for.body8.lr.ph.i, label %for.body.i.for.cond.loopexit.i_crit_edge

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i

for.body8.lr.ph.i:                                ; preds = %for.body.i
  %mst_capable9.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.044.i, i32 0, i32 2
  %ports.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.044.i, i32 0, i32 3
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.inc.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %i.040.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc.i, %for.inc.i.for.body8.i_crit_edge ]
  %6 = ptrtoint ptr %mst_capable9.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mst_capable9.i, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040.i)
  %cmp11.i = icmp ne i32 %i.040.i, 0
  %or.cond.i = select i1 %tobool10.not.i, i1 %cmp11.i, i1 false
  br i1 %or.cond.i, label %for.body8.i.for.inc.i_crit_edge, label %if.end13.i

for.body8.i.for.inc.i_crit_edge:                  ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end13.i:                                       ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.hdac_hdmi_port, ptr %9, i32 %i.040.i
  tail call fastcc void @hdac_hdmi_present_sense(ptr noundef %pin.044.i, ptr noundef %arrayidx.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %for.body8.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %10 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_ports.i, align 4
  %cmp7.i = icmp slt i32 %inc.i, %11
  br i1 %cmp7.i, label %for.inc.i.for.body8.i_crit_edge, label %for.inc.i.for.cond.loopexit.i_crit_edge

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i

for.inc.i.for.body8.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8.i

cleanup:                                          ; preds = %for.cond.loopexit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.loopexit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_runtime_suspend.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_runtime_suspend, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_runtime_suspend.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %afg = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %afg, align 4
  %call8 = tail call i32 @snd_hdac_codec_read(ptr noundef %dev, i16 noundef zeroext %3, i32 noundef 0, i32 noundef 1797, i32 noundef 3) #11
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.dev_name.exit_crit_edge

if.end7.dev_name.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end7.dev_name.exit_crit_edge
  %retval.0.i31 = phi ptr [ %7, %if.end.i ], [ %5, %if.end7.dev_name.exit_crit_edge ]
  %call10 = tail call ptr @snd_hdac_ext_bus_get_link(ptr noundef nonnull %1, ptr noundef %retval.0.i31) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end16

do.end15:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #14
  br label %cleanup

if.end16:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_hdac_codec_link_down(ptr noundef %dev) #11
  %call17 = tail call i32 @snd_hdac_ext_bus_link_put(ptr noundef nonnull %1, ptr noundef nonnull %call10) #11
  %addr = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 8
  tail call void @snd_hdac_display_power(ptr noundef nonnull %1, i32 noundef %9, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end15, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -5, %do.end15 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_runtime_resume.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_runtime_resume, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_runtime_resume.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.34) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.dev_name.exit_crit_edge

if.end7.dev_name.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end7.dev_name.exit_crit_edge
  %retval.0.i33 = phi ptr [ %5, %if.end.i ], [ %3, %if.end7.dev_name.exit_crit_edge ]
  %call9 = tail call ptr @snd_hdac_ext_bus_get_link(ptr noundef nonnull %1, ptr noundef %retval.0.i33) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end15

do.end14:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #14
  br label %cleanup

if.end15:                                         ; preds = %dev_name.exit
  %call16 = tail call i32 @snd_hdac_ext_bus_link_get(ptr noundef nonnull %1, ptr noundef nonnull %call9) #11
  tail call void @snd_hdac_codec_link_up(ptr noundef %dev) #11
  %addr = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 8
  tail call void @snd_hdac_display_power(ptr noundef nonnull %1, i32 noundef %7, i1 noundef zeroext true) #11
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %drv_data.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drv_data.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %conv.i = trunc i32 %13 to i16
  %call2.i = tail call i32 @snd_hdac_codec_read(ptr noundef %dev, i16 noundef zeroext %conv.i, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #11
  %and.i = and i32 %call2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i34 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i34, label %if.end.i35, label %if.end15.hdac_hdmi_skl_enable_all_pins.exit_crit_edge

if.end15.hdac_hdmi_skl_enable_all_pins.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_skl_enable_all_pins.exit

if.end.i35:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %call2.i, 1
  %call5.i = tail call i32 @snd_hdac_codec_read(ptr noundef %dev, i16 noundef zeroext %conv.i, i32 noundef 0, i32 noundef 1921, i32 noundef %or.i) #11
  br label %hdac_hdmi_skl_enable_all_pins.exit

hdac_hdmi_skl_enable_all_pins.exit:               ; preds = %if.end.i35, %if.end15.hdac_hdmi_skl_enable_all_pins.exit_crit_edge
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %drv_data.i37 = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %drv_data.i37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv_data.i37, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %conv.i38 = trunc i32 %19 to i16
  %call2.i39 = tail call i32 @snd_hdac_codec_read(ptr noundef %dev, i16 noundef zeroext %conv.i38, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #11
  %and.i40 = and i32 %call2.i39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool.not.i41 = icmp eq i32 %and.i40, 0
  br i1 %tobool.not.i41, label %if.end.i44, label %hdac_hdmi_skl_enable_all_pins.exit.hdac_hdmi_skl_enable_dp12.exit_crit_edge

hdac_hdmi_skl_enable_all_pins.exit.hdac_hdmi_skl_enable_dp12.exit_crit_edge: ; preds = %hdac_hdmi_skl_enable_all_pins.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_skl_enable_dp12.exit

if.end.i44:                                       ; preds = %hdac_hdmi_skl_enable_all_pins.exit
  call void @__sanitizer_cov_trace_pc() #13
  %or.i42 = or i32 %call2.i39, 2
  %call5.i43 = tail call i32 @snd_hdac_codec_read(ptr noundef %dev, i16 noundef zeroext %conv.i38, i32 noundef 0, i32 noundef 1921, i32 noundef %or.i42) #11
  br label %hdac_hdmi_skl_enable_dp12.exit

hdac_hdmi_skl_enable_dp12.exit:                   ; preds = %if.end.i44, %hdac_hdmi_skl_enable_all_pins.exit.hdac_hdmi_skl_enable_dp12.exit_crit_edge
  %afg = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 5
  %20 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %afg, align 4
  %call17 = tail call i32 @snd_hdac_codec_read(ptr noundef %dev, i16 noundef zeroext %21, i32 noundef 0, i32 noundef 1797, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %hdac_hdmi_skl_enable_dp12.exit, %do.end14, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hdac_hdmi_skl_enable_dp12.exit ], [ -5, %do.end14 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdac_hdmi_present_sense_all_pins(ptr noundef %hdev, ptr noundef readonly %hdmi, i1 noundef zeroext %detect_pin_caps) unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pin_list = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %hdmi, i32 0, i32 4
  %0 = ptrtoint ptr %pin_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %pin.042 = load ptr, ptr %pin_list, align 4
  %cmp.not43 = icmp eq ptr %pin.042, %pin_list
  br i1 %cmp.not43, label %entry.for.end20_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end20

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %if.end5.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %pin.044 to i32
  call void @__asan_load4_noabort(i32 %1)
  %pin.0 = load ptr, ptr %pin.044, align 4
  %cmp.not = icmp eq ptr %pin.0, %pin_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end20_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.loopexit.for.end20_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end20

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %pin.044 = phi ptr [ %pin.0, %for.cond.loopexit.for.body_crit_edge ], [ %pin.042, %entry.for.body_crit_edge ]
  br i1 %detect_pin_caps, label %if.then, label %for.body.if.end5_crit_edge

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %for.body
  %nid = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.044, i32 0, i32 1
  %2 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i, align 4, !annotation !252
  %call.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %hdev, i16 noundef zeroext %3, i32 noundef 9, ptr noundef nonnull %val.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %snd_hdac_read_parm.exit.thread.i, label %snd_hdac_read_parm.exit.i

snd_hdac_read_parm.exit.thread.i:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  br label %if.end5.sink.split

snd_hdac_read_parm.exit.i:                        ; preds = %if.then
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  %7 = and i32 %6, 15729152
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194816, i32 %7)
  %8 = icmp eq i32 %7, 4194816
  br i1 %8, label %if.end.i, label %snd_hdac_read_parm.exit.i.if.end5.sink.split_crit_edge

snd_hdac_read_parm.exit.i.if.end5.sink.split_crit_edge: ; preds = %snd_hdac_read_parm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.sink.split

if.end.i:                                         ; preds = %snd_hdac_read_parm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 @snd_hdac_read_parm_uncached(ptr noundef %hdev, i16 noundef zeroext %3, i32 noundef 21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, -1
  %and6.i = and i32 %call2.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %cmp2 = icmp ne i32 %and6.i, 0
  %not.or.cond38 = or i1 %cmp3.i, %cmp2
  %spec.select = zext i1 %not.or.cond38 to i8
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.end.i, %snd_hdac_read_parm.exit.i.if.end5.sink.split_crit_edge, %snd_hdac_read_parm.exit.thread.i
  %.sink = phi i8 [ 0, %snd_hdac_read_parm.exit.i.if.end5.sink.split_crit_edge ], [ 0, %snd_hdac_read_parm.exit.thread.i ], [ %spec.select, %if.end.i ]
  %mst_capable = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.044, i32 0, i32 2
  %9 = ptrtoint ptr %mst_capable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %mst_capable, align 2
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %for.body.if.end5_crit_edge
  %num_ports = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.044, i32 0, i32 4
  %10 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp739 = icmp sgt i32 %11, 0
  br i1 %cmp739, label %for.body8.lr.ph, label %if.end5.for.cond.loopexit_crit_edge

if.end5.for.cond.loopexit_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.body8.lr.ph:                                  ; preds = %if.end5
  %mst_capable9 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.044, i32 0, i32 2
  %ports = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.044, i32 0, i32 3
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body8.lr.ph
  %i.040 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.inc.for.body8_crit_edge ]
  %12 = ptrtoint ptr %mst_capable9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mst_capable9, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040)
  %cmp11 = icmp ne i32 %i.040, 0
  %or.cond = select i1 %tobool10.not, i1 %cmp11, i1 false
  br i1 %or.cond, label %for.body8.for.inc_crit_edge, label %if.end13

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end13:                                         ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.hdac_hdmi_port, ptr %15, i32 %i.040
  call fastcc void @hdac_hdmi_present_sense(ptr noundef %pin.044, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %for.body8.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %16 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_ports, align 4
  %cmp7 = icmp slt i32 %inc, %17
  br i1 %cmp7, label %for.inc.for.body8_crit_edge, label %for.inc.for.cond.loopexit_crit_edge

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

for.end20:                                        ; preds = %for.cond.loopexit.for.end20_crit_edge, %entry.for.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdac_hdmi_present_sense(ptr nocapture noundef readonly %pin, ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin, i32 0, i32 5
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pin_mutex = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %pin_mutex, i32 noundef 0) #11
  %eld = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 5
  %4 = ptrtoint ptr %eld to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %eld, align 4
  %mst_capable = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin, i32 0, i32 2
  %5 = ptrtoint ptr %mst_capable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mst_capable, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %port_id.0 = phi i32 [ %8, %if.then3 ], [ -1, %if.end.if.end4_crit_edge ]
  %nid = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin, i32 0, i32 1
  %9 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nid, align 4
  %eld_buffer = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 5, i32 3
  %call8 = tail call i32 @snd_hdac_acomp_get_eld(ptr noundef %1, i16 noundef zeroext %10, i32 noundef %port_id.0, ptr noundef %eld, ptr noundef %eld_buffer, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp sgt i32 %call8, 0
  br i1 %cmp, label %if.then9, label %if.end4.if.else_crit_edge

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then9:                                         ; preds = %if.end4
  %11 = tail call i32 @llvm.umin.i32(i32 %call8, i32 256)
  %12 = ptrtoint ptr %eld_buffer to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %eld_buffer, align 4
  %14 = lshr i8 %13, 3
  %trunc.i = trunc i8 %14 to i5
  %15 = zext i5 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.98)
  switch i5 %trunc.i, label %if.then9.if.else.sink.split_crit_edge [
    i5 2, label %if.then9.if.end.i_crit_edge
    i5 -1, label %if.then9.if.end.i_crit_edge175
  ]

if.then9.if.end.i_crit_edge175:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then9.if.else.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.sink.split

if.end.i:                                         ; preds = %if.then9.if.end.i_crit_edge, %if.then9.if.end.i_crit_edge175
  %arrayidx6.i = getelementptr %struct.hdac_hdmi_port, ptr %port, i32 0, i32 5, i32 3, i32 4
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6.i, align 4
  %18 = and i8 %17, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %18)
  %cmp10.i = icmp ugt i8 %18, 16
  br i1 %cmp10.i, label %if.end.i.if.else.sink.split_crit_edge, label %if.then20

if.end.i.if.else.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.sink.split

if.then20:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx20.i = getelementptr %struct.hdac_hdmi_port, ptr %port, i32 0, i32 5, i32 3, i32 7
  %19 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx20.i, align 1
  %info.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 5, i32 4
  %21 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %info.i, align 4
  %eld_valid17 = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %eld_valid17 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %eld_valid17, align 1, !range !251
  store i8 1, ptr %eld_valid17, align 1
  br label %if.end28

if.else.sink.split:                               ; preds = %if.end.i.if.else.sink.split_crit_edge, %if.then9.if.else.sink.split_crit_edge
  %.sink169 = phi i8 [ %14, %if.then9.if.else.sink.split_crit_edge ], [ %18, %if.end.i.if.else.sink.split_crit_edge ]
  %.str.24.sink = phi ptr [ @.str.24, %if.then9.if.else.sink.split_crit_edge ], [ @.str.27, %if.end.i.if.else.sink.split_crit_edge ]
  %24 = zext i8 %.sink169 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull %.str.24.sink, i32 noundef %24) #14
  br label %if.else

if.else:                                          ; preds = %if.else.sink.split, %if.end4.if.else_crit_edge
  %eld_valid17157 = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %eld_valid17157 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %eld_valid17157, align 1, !range !251
  store i8 0, ptr %eld_valid17157, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then20
  %.sink = phi i32 [ 0, %if.else ], [ %11, %if.then20 ]
  %tobool43.not = phi i1 [ true, %if.else ], [ false, %if.then20 ]
  %27 = phi i8 [ 0, %if.else ], [ 1, %if.then20 ]
  %28 = phi i8 [ %26, %if.else ], [ %23, %if.then20 ]
  %eld_size27 = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 5, i32 2
  %29 = ptrtoint ptr %eld_size27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %eld_size27, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %27)
  %cmp34.not = icmp eq i8 %28, %27
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i, align 4
  %pcm_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %pcm_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %pcm.049.i = load ptr, ptr %pcm_list.i, align 4
  %cmp.not50.i = icmp eq ptr %pcm.049.i, %pcm_list.i
  br i1 %cmp.not50.i, label %if.end28.hdac_hdmi_get_pcm.exit_crit_edge, label %for.body.lr.ph.i

if.end28.hdac_hdmi_get_pcm.exit_crit_edge:        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_get_pcm.exit

for.body.lr.ph.i:                                 ; preds = %if.end28
  %id14.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 1
  %pin.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc25.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pcm.051.i = phi ptr [ %pcm.049.i, %for.body.lr.ph.i ], [ %pcm.0.i, %for.inc25.i.for.body.i_crit_edge ]
  %port_list.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.051.i, i32 0, i32 2
  %33 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %port_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %34, %port_list.i
  br i1 %cmp.i.not.i, label %for.body.i.for.inc25.i_crit_edge, label %for.body13.lr.ph.i

for.body.i.for.inc25.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i

for.body13.lr.ph.i:                               ; preds = %for.body.i
  %35 = ptrtoint ptr %id14.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id14.i, align 4
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc.i.for.body13.i_crit_edge, %for.body13.lr.ph.i
  %p.048.i = phi ptr [ %34, %for.body13.lr.ph.i ], [ %p.0.i, %for.inc.i.for.body13.i_crit_edge ]
  %id.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %p.048.i, i32 0, i32 1
  %37 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp15.i = icmp eq i32 %38, %36
  br i1 %cmp15.i, label %land.lhs.true.i, label %for.body13.i.for.inc.i_crit_edge

for.body13.i.for.inc.i_crit_edge:                 ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body13.i
  %39 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pin.i, align 4
  %pin16.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %p.048.i, i32 0, i32 2
  %41 = ptrtoint ptr %pin16.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pin16.i, align 4
  %cmp17.i = icmp eq ptr %40, %42
  br i1 %cmp17.i, label %land.lhs.true.i.hdac_hdmi_get_pcm.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.hdac_hdmi_get_pcm.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_get_pcm.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body13.i.for.inc.i_crit_edge
  %43 = ptrtoint ptr %p.048.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %p.0.i = load ptr, ptr %p.048.i, align 4
  %cmp11.not.i = icmp eq ptr %p.0.i, %port_list.i
  br i1 %cmp11.not.i, label %for.inc.i.for.inc25.i_crit_edge, label %for.inc.i.for.body13.i_crit_edge

for.inc.i.for.body13.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13.i

for.inc.i.for.inc25.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %for.inc.i.for.inc25.i_crit_edge, %for.body.i.for.inc25.i_crit_edge
  %44 = ptrtoint ptr %pcm.051.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %pcm.0.i = load ptr, ptr %pcm.051.i, align 4
  %cmp.not.i = icmp eq ptr %pcm.0.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.inc25.i.hdac_hdmi_get_pcm.exit_crit_edge, label %for.inc25.i.for.body.i_crit_edge

for.inc25.i.for.body.i_crit_edge:                 ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc25.i.hdac_hdmi_get_pcm.exit_crit_edge:     ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_get_pcm.exit

hdac_hdmi_get_pcm.exit:                           ; preds = %for.inc25.i.hdac_hdmi_get_pcm.exit_crit_edge, %land.lhs.true.i.hdac_hdmi_get_pcm.exit_crit_edge, %if.end28.hdac_hdmi_get_pcm.exit_crit_edge
  %retval.0.i144 = phi ptr [ null, %if.end28.hdac_hdmi_get_pcm.exit_crit_edge ], [ %pcm.051.i, %land.lhs.true.i.hdac_hdmi_get_pcm.exit_crit_edge ], [ null, %for.inc25.i.hdac_hdmi_get_pcm.exit_crit_edge ]
  %45 = ptrtoint ptr %eld to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %eld, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool40.not = icmp eq i8 %46, 0
  %or.cond162 = or i1 %tobool43.not, %tobool40.not
  br i1 %or.cond162, label %do.end, label %if.then63

do.end:                                           ; preds = %hdac_hdmi_get_pcm.exit
  %47 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %nid, align 4
  %conv47 = zext i16 %48 to i32
  %id48 = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 1
  %49 = ptrtoint ptr %id48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %conv47, i32 noundef %50) #14
  %tobool49.not = icmp eq ptr %retval.0.i144, null
  br i1 %tobool49.not, label %do.end.if.end52_crit_edge, label %if.then50

do.end.if.end52_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then50:                                        ; preds = %do.end
  %is_connect2.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 7
  %51 = ptrtoint ptr %is_connect2.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %is_connect2.i, align 4
  %jack_event.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %retval.0.i144, i32 0, i32 11
  %52 = ptrtoint ptr %jack_event.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %jack_event.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp14.i = icmp eq i32 %53, 1
  br i1 %cmp14.i, label %if.then15.i, label %if.then50.if.end17.i146_crit_edge

if.then50.if.end17.i146_crit_edge:                ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i146

if.then15.i:                                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  %jack16.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %retval.0.i144, i32 0, i32 4
  %54 = ptrtoint ptr %jack16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %jack16.i, align 4
  tail call void @snd_soc_jack_report(ptr noundef %55, i32 noundef 0, i32 noundef 20) #11
  %56 = ptrtoint ptr %jack_event.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr.i = load i32, ptr %jack_event.i, align 4
  br label %if.end17.i146

if.end17.i146:                                    ; preds = %if.then15.i, %if.then50.if.end17.i146_crit_edge
  %57 = phi i32 [ %.pr.i, %if.then15.i ], [ %53, %if.then50.if.end17.i146_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp19.i = icmp sgt i32 %57, 0
  br i1 %cmp19.i, label %if.then20.i, label %if.end17.i146.hdac_hdmi_jack_report.exit_crit_edge

if.end17.i146.hdac_hdmi_jack_report.exit_crit_edge: ; preds = %if.end17.i146
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_jack_report.exit

if.then20.i:                                      ; preds = %if.end17.i146
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i = add nsw i32 %57, -1
  %58 = ptrtoint ptr %jack_event.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %dec.i, ptr %jack_event.i, align 4
  br label %hdac_hdmi_jack_report.exit

hdac_hdmi_jack_report.exit:                       ; preds = %if.then20.i, %if.end17.i146.hdac_hdmi_jack_report.exit_crit_edge
  %dapm_work = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %dapm_work) #11
  br label %if.end52

if.end52:                                         ; preds = %hdac_hdmi_jack_report.exit, %do.end.if.end52_crit_edge
  tail call void @mutex_unlock(ptr noundef %pin_mutex) #11
  br label %cleanup

if.then63:                                        ; preds = %hdac_hdmi_get_pcm.exit
  %tobool64.not = icmp eq ptr %retval.0.i144, null
  br i1 %tobool64.not, label %if.then63.do.body69_crit_edge, label %if.then65

if.then63.do.body69_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body69

if.then65:                                        ; preds = %if.then63
  %pin.i147 = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 2
  %60 = ptrtoint ptr %pin.i147 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pin.i147, align 4
  %hdev1.i148 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %hdev1.i148 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hdev1.i148, align 4
  %is_connect2.i149 = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 7
  %64 = ptrtoint ptr %is_connect2.i149 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %is_connect2.i149, align 4
  %jack_event.i150 = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %retval.0.i144, i32 0, i32 11
  %65 = ptrtoint ptr %jack_event.i150 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %jack_event.i150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i = icmp eq i32 %66, 0
  br i1 %cmp.i, label %do.body.i, label %if.then65.hdac_hdmi_jack_report.exit152_crit_edge

if.then65.hdac_hdmi_jack_report.exit152_crit_edge: ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_jack_report.exit152

do.body.i:                                        ; preds = %if.then65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_jack_report.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_present_sense, %if.then10.i)) #11
          to label %do.end.i151 [label %if.then10.i], !srcloc !250

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %pcm_id.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %retval.0.i144, i32 0, i32 1
  %67 = ptrtoint ptr %pcm_id.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pcm_id.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_jack_report.__UNIQUE_ID_ddebug239, ptr noundef %63, ptr noundef nonnull @.str.30, i32 noundef %68) #11
  br label %do.end.i151

do.end.i151:                                      ; preds = %if.then10.i, %do.body.i
  %jack.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %retval.0.i144, i32 0, i32 4
  %69 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %jack.i, align 4
  tail call void @snd_soc_jack_report(ptr noundef %70, i32 noundef 20, i32 noundef 20) #11
  br label %hdac_hdmi_jack_report.exit152

hdac_hdmi_jack_report.exit152:                    ; preds = %do.end.i151, %if.then65.hdac_hdmi_jack_report.exit152_crit_edge
  %71 = ptrtoint ptr %jack_event.i150 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %jack_event.i150, align 4
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %jack_event.i150, align 4
  %dapm_work66 = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %73 = load ptr, ptr @system_wq, align 4
  %call.i.i153 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %73, ptr noundef %dapm_work66) #11
  br label %do.body69

do.body69:                                        ; preds = %hdac_hdmi_jack_report.exit152, %if.then63.do.body69_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_present_sense.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_present_sense, %if.then76)) #11
          to label %if.end85 [label %if.then76], !srcloc !250

if.then76:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #13
  %eld_size81 = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 5, i32 2
  %74 = ptrtoint ptr %eld_size81 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %eld_size81, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %eld_buffer, i32 noundef %75, i1 noundef zeroext false) #11
  br label %if.end85

if.end85:                                         ; preds = %if.then76, %do.body69
  tail call void @mutex_unlock(ptr noundef %pin_mutex) #11
  %or.cond = select i1 %cmp34.not, i1 true, i1 %tobool64.not
  br i1 %or.cond, label %if.end85.cleanup_crit_edge, label %if.then91

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then91:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %card = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 2
  %76 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %card, align 4
  %eld_ctl = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %retval.0.i144, i32 0, i32 12
  %78 = ptrtoint ptr %eld_ctl to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %eld_ctl, align 4
  %id92 = getelementptr inbounds %struct.snd_kcontrol, ptr %79, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %77, i32 noundef 3, ptr noundef %id92) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %if.end85.cleanup_crit_edge, %if.end52, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_read_parm_uncached(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_acomp_get_eld(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hdac_ext_bus_get_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_codec_link_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_ext_bus_link_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_display_power(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_ext_bus_link_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_codec_link_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hdac_get_device_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_register_chmap_ops(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdac_hdmi_get_chmap(ptr nocapture noundef readonly %hdev, i32 noundef %pcm_idx, ptr nocapture noundef writeonly %chmap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %hdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pcm_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %1, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %pcm.0.in.i = phi ptr [ %pcm_list.i, %entry ], [ %pcm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %pcm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %pcm.0.i = load ptr, ptr %pcm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pcm.0.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.get_hdmi_pcm_from_id.exit_crit_edge, label %for.body.i

for.cond.i.get_hdmi_pcm_from_id.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_hdmi_pcm_from_id.exit

for.body.i:                                       ; preds = %for.cond.i
  %pcm_id.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %pcm_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pcm_id.i, align 4
  %cmp2.i = icmp eq i32 %4, %pcm_idx
  br i1 %cmp2.i, label %for.body.i.get_hdmi_pcm_from_id.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.get_hdmi_pcm_from_id.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_hdmi_pcm_from_id.exit

get_hdmi_pcm_from_id.exit:                        ; preds = %for.body.i.get_hdmi_pcm_from_id.exit_crit_edge, %for.cond.i.get_hdmi_pcm_from_id.exit_crit_edge
  %retval.0.i = phi ptr [ %pcm.0.i, %for.body.i.get_hdmi_pcm_from_id.exit_crit_edge ], [ null, %for.cond.i.get_hdmi_pcm_from_id.exit_crit_edge ]
  %chmap2 = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %retval.0.i, i32 0, i32 9
  %5 = ptrtoint ptr %chmap2 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %chmap2, align 1
  %7 = ptrtoint ptr %chmap to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %chmap, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdac_hdmi_set_chmap(ptr noundef %hdev, i32 noundef %pcm_idx, ptr nocapture noundef readonly %chmap, i32 noundef %prepared) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %hdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pcm_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %1, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %pcm.0.in.i = phi ptr [ %pcm_list.i, %entry ], [ %pcm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %pcm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %pcm.0.i = load ptr, ptr %pcm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pcm.0.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %pcm_id.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %pcm_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pcm_id.i, align 4
  %cmp2.i = icmp eq i32 %4, %pcm_idx
  br i1 %cmp2.i, label %get_hdmi_pcm_from_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

get_hdmi_pcm_from_id.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %pcm.0.i, null
  br i1 %tobool.not, label %get_hdmi_pcm_from_id.exit.cleanup_crit_edge, label %if.end

get_hdmi_pcm_from_id.exit.cleanup_crit_edge:      ; preds = %get_hdmi_pcm_from_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %get_hdmi_pcm_from_id.exit
  %port_list = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %port_list, align 4
  %cmp.i.not = icmp eq ptr %6, %port_list
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %chmap_set = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 8
  %7 = ptrtoint ptr %chmap_set to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %chmap_set, align 4
  %chmap6 = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 9
  %8 = ptrtoint ptr %chmap to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %chmap, align 1
  %10 = ptrtoint ptr %chmap6 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %chmap6, align 1
  %11 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %port.035 = load ptr, ptr %port_list, align 4
  %cmp.not36 = icmp eq ptr %port.035, %port_list
  br i1 %cmp.not36, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prepared)
  %tobool9.not = icmp eq i32 %prepared, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.037 = phi ptr [ %port.035, %for.body.lr.ph ], [ %port.0, %for.inc.for.body_crit_edge ]
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %if.then10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call fastcc i32 @hdac_hdmi_setup_audio_infoframe(ptr noundef %hdev, ptr noundef nonnull %pcm.0.i, ptr noundef %port.037)
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %port.037 to i32
  call void @__asan_load4_noabort(i32 %12)
  %port.0 = load ptr, ptr %port.037, align 4
  %cmp.not = icmp eq ptr %port.0, %port_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %get_hdmi_pcm_from_id.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @is_hdac_hdmi_pcm_attached(ptr nocapture noundef readonly %hdev, i32 noundef %pcm_idx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %hdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pcm_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %1, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %pcm.0.in.i = phi ptr [ %pcm_list.i, %entry ], [ %pcm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %pcm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %pcm.0.i = load ptr, ptr %pcm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pcm.0.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %pcm_id.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %pcm_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pcm_id.i, align 4
  %cmp2.i = icmp eq i32 %4, %pcm_idx
  br i1 %cmp2.i, label %get_hdmi_pcm_from_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

get_hdmi_pcm_from_id.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %pcm.0.i, null
  br i1 %tobool.not, label %get_hdmi_pcm_from_id.exit.cleanup_crit_edge, label %if.end

get_hdmi_pcm_from_id.exit.cleanup_crit_edge:      ; preds = %get_hdmi_pcm_from_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %get_hdmi_pcm_from_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  %port_list = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %port_list, align 4
  %cmp.i = icmp ne ptr %6, %port_list
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_hdmi_pcm_from_id.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %get_hdmi_pcm_from_id.exit.cleanup_crit_edge ], [ %cmp.i, %if.end ], [ false, %for.cond.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_get_spk_alloc(ptr nocapture noundef readonly %hdev, i32 noundef %pcm_idx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %hdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pcm_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %1, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %pcm.0.in.i = phi ptr [ %pcm_list.i, %entry ], [ %pcm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %pcm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %pcm.0.i = load ptr, ptr %pcm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pcm.0.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %pcm_id.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %pcm_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pcm_id.i, align 4
  %cmp2.i = icmp eq i32 %4, %pcm_idx
  br i1 %cmp2.i, label %get_hdmi_pcm_from_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

get_hdmi_pcm_from_id.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %pcm.0.i, null
  br i1 %tobool.not, label %get_hdmi_pcm_from_id.exit.cleanup_crit_edge, label %if.end

get_hdmi_pcm_from_id.exit.cleanup_crit_edge:      ; preds = %get_hdmi_pcm_from_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %get_hdmi_pcm_from_id.exit
  %port_list = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %port_list, align 4
  %cmp.i = icmp eq ptr %6, %port_list
  %tobool7.not = icmp eq ptr %6, null
  %or.cond = or i1 %cmp.i, %tobool7.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %eld_valid = getelementptr inbounds %struct.hdac_hdmi_port, ptr %6, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %eld_valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %eld_valid, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %info = getelementptr inbounds %struct.hdac_hdmi_port, ptr %6, i32 0, i32 5, i32 4
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %info, align 4
  %conv = zext i8 %10 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %get_hdmi_pcm_from_id.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end10 ], [ 0, %get_hdmi_pcm_from_id.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_refresh_widgets(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdac_hdmi_setup_audio_infoframe(ptr noundef %hdev, ptr noundef %pcm, ptr nocapture noundef readonly %port) unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [14 x i8], align 1
  %frame = alloca %struct.hdmi_audio_infoframe, align 4
  %dp_ai = alloca %struct.dp_audio_infoframe, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buffer) #11
  %0 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 1
  %1 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 2
  %2 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 3
  %3 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 4
  %4 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 5
  %5 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 6
  %6 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 7
  %7 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 8
  %8 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 9
  %9 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 10
  %10 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 11
  %11 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 12
  %12 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 13
  %13 = call ptr @memset(ptr %buffer, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %frame) #11
  %14 = call ptr @memset(ptr %frame, i32 255, i32 28)
  %pin1 = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 2
  %15 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pin1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dp_ai) #11
  %driver_data.i = getelementptr inbounds %struct.device, ptr %hdev, i32 0, i32 8
  %17 = ptrtoint ptr %dp_ai to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %dp_ai, align 8
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i, align 4
  %cvt2 = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm, i32 0, i32 3
  %20 = ptrtoint ptr %cvt2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cvt2, align 4
  %info = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 5, i32 4
  %22 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %info, align 4
  %conv = zext i8 %23 to i32
  %channels3 = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm, i32 0, i32 6
  %24 = ptrtoint ptr %channels3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channels3, align 4
  %chmap_set = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm, i32 0, i32 8
  %26 = ptrtoint ptr %chmap_set to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %chmap_set, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool = icmp ne i8 %27, 0
  %chmap = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm, i32 0, i32 9
  %call4 = tail call i32 @snd_hdac_channel_allocation(ptr noundef %hdev, i32 noundef %conv, i32 noundef %25, i1 noundef zeroext %tobool, i1 noundef zeroext true, ptr noundef %chmap) #11
  %call5 = tail call i32 @snd_hdac_get_active_channels(i32 noundef %call4) #11
  %chmap6 = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %19, i32 0, i32 11
  %set_channel_count = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %19, i32 0, i32 11, i32 1, i32 9
  %28 = ptrtoint ptr %set_channel_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_channel_count, align 4
  %nid = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nid, align 8
  tail call void %29(ptr noundef %hdev, i16 noundef zeroext %31, i32 noundef %call5) #11
  %nid8 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %16, i32 0, i32 1
  %32 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nid8, align 4
  %34 = ptrtoint ptr %channels3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channels3, align 4
  %36 = ptrtoint ptr %chmap_set to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %chmap_set, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool13 = icmp ne i8 %37, 0
  tail call void @snd_hdac_setup_channel_mapping(ptr noundef %chmap6, i16 noundef zeroext %33, i1 noundef zeroext false, i32 noundef %call4, i32 noundef %35, ptr noundef %chmap, i1 noundef zeroext %tobool13) #11
  %arrayidx.i = getelementptr %struct.hdac_hdmi_port, ptr %port, i32 0, i32 5, i32 3, i32 5
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i, align 1
  %40 = and i8 %39, 12
  %trunc = trunc i8 %40 to i4
  %41 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.99)
  switch i4 %trunc, label %do.end [
    i4 0, label %sw.bb
    i4 4, label %sw.bb25
  ]

sw.bb:                                            ; preds = %entry
  %call18 = call i32 @hdmi_audio_infoframe_init(ptr noundef nonnull %frame) #11
  %conv19 = trunc i32 %call5 to i8
  %channels20 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %frame, i32 0, i32 3
  %42 = ptrtoint ptr %channels20 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv19, ptr %channels20, align 2
  %conv21 = trunc i32 %call4 to i8
  %channel_allocation = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %frame, i32 0, i32 8
  %43 = ptrtoint ptr %channel_allocation to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv21, ptr %channel_allocation, align 4
  %call23 = call i32 @hdmi_audio_infoframe_pack(ptr noundef nonnull %frame, ptr noundef nonnull %buffer, i32 noundef 14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %44 = getelementptr inbounds %struct.dp_audio_infoframe, ptr %dp_ai, i32 0, i32 6
  %45 = getelementptr inbounds %struct.dp_audio_infoframe, ptr %dp_ai, i32 0, i32 3
  %46 = ptrtoint ptr %dp_ai to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 -8927467069541187584, ptr %dp_ai, align 8
  %47 = trunc i32 %call5 to i8
  %conv26 = add i8 %47, -1
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv26, ptr %45, align 1
  %conv27 = trunc i32 %call4 to i8
  %49 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv27, ptr %44, align 2
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv17 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hdev, ptr noundef nonnull @.str.45, i32 noundef %conv17) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb.sw.epilog_crit_edge
  %dip.0 = phi ptr [ %dp_ai, %sw.bb25 ], [ inttoptr (i32 -1 to ptr), %sw.bb.sw.epilog_crit_edge ]
  %50 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %nid8, align 4
  %call.i = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %51, i32 noundef 0, i32 noundef 1840, i32 noundef 0) #11
  %52 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %nid8, align 4
  %call32 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %53, i32 noundef 0, i32 noundef 1842, i32 noundef 0) #11
  %54 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %nid8, align 4
  %call.i109 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %55, i32 noundef 0, i32 noundef 1840, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp35 = icmp eq i8 %40, 0
  %56 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %nid8, align 4
  br i1 %cmp35, label %for.body.preheader, label %for.body46.preheader

for.body46.preheader:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %dip.0 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %dip.0, align 1
  %conv49 = zext i8 %59 to i32
  %call50 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %57, i32 noundef 0, i32 noundef 1841, i32 noundef %conv49) #11
  %60 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %nid8, align 4
  %arrayidx48.1 = getelementptr i8, ptr %dip.0, i32 1
  %62 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx48.1, align 1
  %conv49.1 = zext i8 %63 to i32
  %call50.1 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %61, i32 noundef 0, i32 noundef 1841, i32 noundef %conv49.1) #11
  %64 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %nid8, align 4
  %arrayidx48.2 = getelementptr i8, ptr %dip.0, i32 2
  %66 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx48.2, align 1
  %conv49.2 = zext i8 %67 to i32
  %call50.2 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %65, i32 noundef 0, i32 noundef 1841, i32 noundef %conv49.2) #11
  %68 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %nid8, align 4
  %arrayidx48.3 = getelementptr i8, ptr %dip.0, i32 3
  %70 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx48.3, align 1
  %conv49.3 = zext i8 %71 to i32
  %call50.3 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %69, i32 noundef 0, i32 noundef 1841, i32 noundef %conv49.3) #11
  %72 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %nid8, align 4
  %arrayidx48.4 = getelementptr i8, ptr %dip.0, i32 4
  %74 = ptrtoint ptr %arrayidx48.4 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx48.4, align 1
  %conv49.4 = zext i8 %75 to i32
  %call50.4 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %73, i32 noundef 0, i32 noundef 1841, i32 noundef %conv49.4) #11
  %76 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %nid8, align 4
  %arrayidx48.5 = getelementptr i8, ptr %dip.0, i32 5
  %78 = ptrtoint ptr %arrayidx48.5 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx48.5, align 1
  %conv49.5 = zext i8 %79 to i32
  %call50.5 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %77, i32 noundef 0, i32 noundef 1841, i32 noundef %conv49.5) #11
  %80 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %nid8, align 4
  %arrayidx48.6 = getelementptr i8, ptr %dip.0, i32 6
  %82 = ptrtoint ptr %arrayidx48.6 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx48.6, align 1
  %conv49.6 = zext i8 %83 to i32
  %call50.6 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %81, i32 noundef 0, i32 noundef 1841, i32 noundef %conv49.6) #11
  %arrayidx48.7 = getelementptr i8, ptr %dip.0, i32 7
  br label %if.end54

for.body.preheader:                               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %buffer, align 1
  %conv41 = zext i8 %85 to i32
  %call42 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %57, i32 noundef 0, i32 noundef 1841, i32 noundef %conv41) #11
  %86 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %nid8, align 4
  %88 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %0, align 1
  %conv41.1 = zext i8 %89 to i32
  %call42.1 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %87, i32 noundef 0, i32 noundef 1841, i32 noundef %conv41.1) #11
  %90 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %nid8, align 4
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %1, align 1
  %conv41.2 = zext i8 %93 to i32
  %call42.2 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %91, i32 noundef 0, i32 noundef 1841, i32 noundef %conv41.2) #11
  %94 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %nid8, align 4
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %2, align 1
  %conv41.3 = zext i8 %97 to i32
  %call42.3 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %95, i32 noundef 0, i32 noundef 1841, i32 noundef %conv41.3) #11
  %98 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %nid8, align 4
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %3, align 1
  %conv41.4 = zext i8 %101 to i32
  %call42.4 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %99, i32 noundef 0, i32 noundef 1841, i32 noundef %conv41.4) #11
  %102 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %nid8, align 4
  %104 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %4, align 1
  %conv41.5 = zext i8 %105 to i32
  %call42.5 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %103, i32 noundef 0, i32 noundef 1841, i32 noundef %conv41.5) #11
  %106 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %nid8, align 4
  %108 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %5, align 1
  %conv41.6 = zext i8 %109 to i32
  %call42.6 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %107, i32 noundef 0, i32 noundef 1841, i32 noundef %conv41.6) #11
  %110 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %nid8, align 4
  %112 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %6, align 1
  %conv41.7 = zext i8 %113 to i32
  %call42.7 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %111, i32 noundef 0, i32 noundef 1841, i32 noundef %conv41.7) #11
  %114 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %nid8, align 4
  %116 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %7, align 1
  %conv41.8 = zext i8 %117 to i32
  %call42.8 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %115, i32 noundef 0, i32 noundef 1841, i32 noundef %conv41.8) #11
  %118 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %nid8, align 4
  %120 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %8, align 1
  %conv41.9 = zext i8 %121 to i32
  %call42.9 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %119, i32 noundef 0, i32 noundef 1841, i32 noundef %conv41.9) #11
  %122 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %nid8, align 4
  %124 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %9, align 1
  %conv41.10 = zext i8 %125 to i32
  %call42.10 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %123, i32 noundef 0, i32 noundef 1841, i32 noundef %conv41.10) #11
  %126 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %nid8, align 4
  %128 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %10, align 1
  %conv41.11 = zext i8 %129 to i32
  %call42.11 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %127, i32 noundef 0, i32 noundef 1841, i32 noundef %conv41.11) #11
  %130 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %nid8, align 4
  %132 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %11, align 1
  %conv41.12 = zext i8 %133 to i32
  %call42.12 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %131, i32 noundef 0, i32 noundef 1841, i32 noundef %conv41.12) #11
  br label %if.end54

if.end54:                                         ; preds = %for.body.preheader, %for.body46.preheader
  %arrayidx48.7.sink = phi ptr [ %arrayidx48.7, %for.body46.preheader ], [ %12, %for.body.preheader ]
  %134 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %134)
  %.sink = load i16, ptr %nid8, align 4
  %135 = ptrtoint ptr %arrayidx48.7.sink to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx48.7.sink, align 1
  %conv49.7 = zext i8 %136 to i32
  %call50.7 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %.sink, i32 noundef 0, i32 noundef 1841, i32 noundef %conv49.7) #11
  %137 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %nid8, align 4
  %call.i110 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %138, i32 noundef 0, i32 noundef 1840, i32 noundef 0) #11
  %139 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %nid8, align 4
  %call57 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %140, i32 noundef 0, i32 noundef 1842, i32 noundef 192) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end54 ], [ %call23, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dp_ai) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %frame) #11
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buffer) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_channel_allocation(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_active_channels(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_setup_channel_mapping(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_sub_nodes(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_query_supported_pcm(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdac_hdmi_jack_dapm_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %is_connect.i = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %is_connect.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_connect.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %dapm1.i = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %dapm1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dapm1.i, align 4
  %jack_pin2.i = getelementptr i8, ptr %work, i32 -16
  %4 = ptrtoint ptr %jack_pin2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jack_pin2.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @snd_soc_dapm_enable_pin(ptr noundef %3, ptr noundef %5) #11
  br label %hdac_hdmi_port_dapm_update.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %3, ptr noundef %5) #11
  br label %hdac_hdmi_port_dapm_update.exit

hdac_hdmi_port_dapm_update.exit:                  ; preds = %if.else.i, %if.then.i
  %6 = ptrtoint ptr %dapm1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dapm1.i, align 4
  %call5.i = tail call i32 @snd_soc_dapm_sync(ptr noundef %7) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_set_tdm_slot.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_set_tdm_slot, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_set_tdm_slot.__UNIQUE_ID_ddebug241, ptr noundef %5, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef %tx_mask) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %cvt = getelementptr %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 3, i32 %7, i32 2
  %8 = ptrtoint ptr %cvt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cvt, align 4
  %pcm_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end
  %pcm.0.in.i = phi ptr [ %pcm_list.i, %do.end ], [ %pcm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %pcm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %pcm.0.i = load ptr, ptr %pcm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pcm.0.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end9_crit_edge, label %for.body.i

for.cond.i.if.end9_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.body.i:                                       ; preds = %for.cond.i
  %cvt2.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 3
  %11 = ptrtoint ptr %cvt2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cvt2.i, align 4
  %cmp3.i = icmp eq ptr %12, %9
  br i1 %cmp3.i, label %hdac_hdmi_get_pcm_from_cvt.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

hdac_hdmi_get_pcm_from_cvt.exit:                  ; preds = %for.body.i
  %tobool7.not = icmp eq ptr %pcm.0.i, null
  br i1 %tobool7.not, label %hdac_hdmi_get_pcm_from_cvt.exit.if.end9_crit_edge, label %if.then8

hdac_hdmi_get_pcm_from_cvt.exit.if.end9_crit_edge: ; preds = %hdac_hdmi_get_pcm_from_cvt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %hdac_hdmi_get_pcm_from_cvt.exit
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl i32 %tx_mask, 4
  %stream_tag = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 5
  %13 = ptrtoint ptr %stream_tag to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl, ptr %stream_tag, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %hdac_hdmi_get_pcm_from_cvt.exit.if.end9_crit_edge, %for.cond.i.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_pcm_open(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %cvt3 = getelementptr %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 3, i32 %7, i32 2
  %8 = ptrtoint ptr %cvt3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cvt3, align 4
  %call4 = tail call fastcc ptr @hdac_hdmi_get_port_from_cvt(ptr noundef %5, ptr noundef %3, ptr noundef %9)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %eld = getelementptr inbounds %struct.hdac_hdmi_port, ptr %call4, i32 0, i32 5
  %10 = ptrtoint ptr %eld to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %eld, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %eld_valid = getelementptr inbounds %struct.hdac_hdmi_port, ptr %call4, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %eld_valid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %eld_valid, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %lor.lhs.false.do.end_crit_edge, label %if.end18

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %14 = zext i8 %11 to i32
  %eld_valid13 = getelementptr inbounds %struct.hdac_hdmi_port, ptr %call4, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %eld_valid13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %eld_valid13, align 1, !range !251
  %17 = zext i8 %16 to i32
  %pin = getelementptr inbounds %struct.hdac_hdmi_port, ptr %call4, i32 0, i32 2
  %18 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pin, align 4
  %nid = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nid, align 4
  %conv16 = zext i16 %21 to i32
  %id17 = getelementptr inbounds %struct.hdac_hdmi_port, ptr %call4, i32 0, i32 1
  %22 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id17, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.67, i32 noundef %14, i32 noundef %17, i32 noundef %conv16, i32 noundef %23) #14
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %port19 = getelementptr %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 3, i32 %7, i32 1
  %24 = ptrtoint ptr %port19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call4, ptr %port19, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %25 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %runtime, align 4
  %eld_buffer = getelementptr inbounds %struct.hdac_hdmi_port, ptr %call4, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %eld_buffer to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %eld_buffer, align 1
  %29 = lshr i8 %28, 3
  %trunc.i.i = trunc i8 %29 to i5
  %30 = zext i5 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.100)
  switch i5 %trunc.i.i, label %if.end18.hdac_hdmi_eld_limit_formats.exit_crit_edge [
    i5 2, label %if.end18.if.end.i.i_crit_edge
    i5 -1, label %if.end18.if.end.i.i_crit_edge51
  ]

if.end18.if.end.i.i_crit_edge51:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end18.if.end.i.i_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end18.hdac_hdmi_eld_limit_formats.exit_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_eld_limit_formats.exit

if.end.i.i:                                       ; preds = %if.end18.if.end.i.i_crit_edge, %if.end18.if.end.i.i_crit_edge51
  %arrayidx.i.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call4, i32 0, i32 5, i32 3, i32 4
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i.i, align 1
  %33 = and i8 %32, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %33)
  %cmp4.i.i = icmp ugt i8 %33, 16
  br i1 %cmp4.i.i, label %if.end.i.i.hdac_hdmi_eld_limit_formats.exit_crit_edge, label %drm_eld_sad.exit.i

if.end.i.i.hdac_hdmi_eld_limit_formats.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_eld_limit_formats.exit

drm_eld_sad.exit.i:                               ; preds = %if.end.i.i
  %narrow.i.i = add nuw nsw i8 %33, 20
  %add.i.i = zext i8 %narrow.i.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %eld_buffer, i32 %add.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %drm_eld_sad.exit.i.hdac_hdmi_eld_limit_formats.exit_crit_edge, label %if.end.i

drm_eld_sad.exit.i.hdac_hdmi_eld_limit_formats.exit_crit_edge: ; preds = %drm_eld_sad.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_eld_limit_formats.exit

if.end.i:                                         ; preds = %drm_eld_sad.exit.i
  %arrayidx.i.i = getelementptr %struct.hdac_hdmi_port, ptr %call4, i32 0, i32 5, i32 3, i32 5
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %35)
  %cmp20.not.i = icmp ult i8 %35, 16
  br i1 %cmp20.not.i, label %if.end.i.hdac_hdmi_eld_limit_formats.exit_crit_edge, label %for.body.preheader.i

if.end.i.hdac_hdmi_eld_limit_formats.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_eld_limit_formats.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %36 = lshr i8 %35, 4
  %37 = zext i8 %36 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %sad.023.i = phi ptr [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i ]
  %i.022.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %37, %for.body.preheader.i ]
  %formats.021.i = phi i64 [ %formats.1.i, %for.inc.i.for.body.i_crit_edge ], [ 8, %for.body.preheader.i ]
  %38 = ptrtoint ptr %sad.023.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sad.023.i, align 1
  %.mask.i = and i8 %39, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %.mask.i)
  %cmp3.i = icmp eq i8 %.mask.i, 8
  br i1 %cmp3.i, label %if.then4.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i17.i = getelementptr i8, ptr %sad.023.i, i32 2
  %40 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i17.i, align 1
  %42 = and i8 %41, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool6.not.i = icmp eq i8 %42, 0
  %or.i = or i64 %formats.021.i, 2048
  %spec.select.i = select i1 %tobool6.not.i, i64 %formats.021.i, i64 %or.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %formats.1.i = phi i64 [ %formats.021.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.then4.i ]
  %dec.i = add nsw i32 %i.022.i, -1
  %add.ptr.i = getelementptr i8, ptr %sad.023.i, i32 3
  %cmp.i = icmp sgt i32 %i.022.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.hdac_hdmi_eld_limit_formats.exit_crit_edge

for.inc.i.hdac_hdmi_eld_limit_formats.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_eld_limit_formats.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

hdac_hdmi_eld_limit_formats.exit:                 ; preds = %for.inc.i.hdac_hdmi_eld_limit_formats.exit_crit_edge, %if.end.i.hdac_hdmi_eld_limit_formats.exit_crit_edge, %drm_eld_sad.exit.i.hdac_hdmi_eld_limit_formats.exit_crit_edge, %if.end.i.i.hdac_hdmi_eld_limit_formats.exit_crit_edge, %if.end18.hdac_hdmi_eld_limit_formats.exit_crit_edge
  %formats.2.i = phi i64 [ 8, %drm_eld_sad.exit.i.hdac_hdmi_eld_limit_formats.exit_crit_edge ], [ 8, %if.end18.hdac_hdmi_eld_limit_formats.exit_crit_edge ], [ 8, %if.end.i.i.hdac_hdmi_eld_limit_formats.exit_crit_edge ], [ 8, %if.end.i.hdac_hdmi_eld_limit_formats.exit_crit_edge ], [ %formats.1.i, %for.inc.i.hdac_hdmi_eld_limit_formats.exit_crit_edge ]
  %call10.i = tail call i32 @snd_pcm_hw_constraint_mask64(ptr noundef %26, i32 noundef 1, i64 noundef %formats.2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp = icmp slt i32 %call10.i, 0
  br i1 %cmp, label %hdac_hdmi_eld_limit_formats.exit.cleanup_crit_edge, label %if.end24

hdac_hdmi_eld_limit_formats.exit.cleanup_crit_edge: ; preds = %hdac_hdmi_eld_limit_formats.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %hdac_hdmi_eld_limit_formats.exit
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %runtime, align 4
  %call29 = tail call i32 @snd_pcm_hw_constraint_eld(ptr noundef %44, ptr noundef %eld_buffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %hdac_hdmi_eld_limit_formats.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end24 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call10.i, %hdac_hdmi_eld_limit_formats.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdac_hdmi_pcm_close(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %cvt = getelementptr %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 3, i32 %5, i32 2
  %6 = ptrtoint ptr %cvt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cvt, align 4
  %pcm_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %pcm.0.in.i = phi ptr [ %pcm_list.i, %entry ], [ %pcm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %pcm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %pcm.0.i = load ptr, ptr %pcm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pcm.0.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %cvt2.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %cvt2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cvt2.i, align 4
  %cmp3.i = icmp eq ptr %10, %7
  br i1 %cmp3.i, label %hdac_hdmi_get_pcm_from_cvt.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

hdac_hdmi_get_pcm_from_cvt.exit:                  ; preds = %for.body.i
  %tobool.not = icmp eq ptr %pcm.0.i, null
  br i1 %tobool.not, label %hdac_hdmi_get_pcm_from_cvt.exit.if.end_crit_edge, label %if.then

hdac_hdmi_get_pcm_from_cvt.exit.if.end_crit_edge: ; preds = %hdac_hdmi_get_pcm_from_cvt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %hdac_hdmi_get_pcm_from_cvt.exit
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %chmap_set = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 8
  %11 = ptrtoint ptr %chmap_set to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %chmap_set, align 4
  %chmap = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 9
  %12 = ptrtoint ptr %chmap to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %chmap, align 1
  %channels = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 6
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %channels, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %hdac_hdmi_get_pcm_from_cvt.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %port = getelementptr %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 3, i32 %5, i32 1
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %port, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_set_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %hparams, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hparams, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i20 = getelementptr %struct.snd_pcm_hw_params, ptr %hparams, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i20, align 4
  %arrayidx.i.i21 = getelementptr %struct.snd_pcm_hw_params, ptr %hparams, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %11, %entry.if.then.i.i_crit_edge ], [ %14, %for.inc.i.i.if.then.i.i_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #11, !range !253
  %add.i.i = or i32 %12, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hparams, i32 0, i32 1, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %15 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver, align 4
  %sig_bits = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %16, i32 0, i32 11, i32 7
  %17 = ptrtoint ptr %sig_bits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sig_bits, align 4
  %call5 = tail call i32 @snd_hdac_calc_stream_format(i32 noundef %7, i32 noundef %9, i32 noundef %retval.0.i.i, i32 noundef %18, i16 noundef zeroext 0) #11
  %cvt = getelementptr %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 3, i32 %5, i32 2
  %19 = ptrtoint ptr %cvt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cvt, align 4
  %pcm_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %params_format.exit
  %pcm.0.in.i = phi ptr [ %pcm_list.i, %params_format.exit ], [ %pcm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %21 = ptrtoint ptr %pcm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %pcm.0.i = load ptr, ptr %pcm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pcm.0.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %cvt2.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 3
  %22 = ptrtoint ptr %cvt2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cvt2.i, align 4
  %cmp3.i = icmp eq ptr %23, %20
  br i1 %cmp3.i, label %hdac_hdmi_get_pcm_from_cvt.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

hdac_hdmi_get_pcm_from_cvt.exit:                  ; preds = %for.body.i
  %tobool.not = icmp eq ptr %pcm.0.i, null
  br i1 %tobool.not, label %hdac_hdmi_get_pcm_from_cvt.exit.cleanup_crit_edge, label %if.end

hdac_hdmi_get_pcm_from_cvt.exit.cleanup_crit_edge: ; preds = %hdac_hdmi_get_pcm_from_cvt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %hdac_hdmi_get_pcm_from_cvt.exit
  call void @__sanitizer_cov_trace_pc() #13
  %format7 = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 7
  %24 = ptrtoint ptr %format7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call5, ptr %format7, align 4
  %25 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i20, align 4
  %channels = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 6
  %27 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %channels, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %hdac_hdmi_get_pcm_from_cvt.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %hdac_hdmi_get_pcm_from_cvt.exit.cleanup_crit_edge ], [ -5, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hdac_hdmi_get_port_from_cvt(ptr noundef %hdev, ptr noundef readonly %hdmi, ptr noundef readonly %cvt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_list = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %hdmi, i32 0, i32 6
  %0 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %pcm.081 = load ptr, ptr %pcm_list, align 4
  %cmp.not82 = icmp eq ptr %pcm.081, %pcm_list
  br i1 %cmp.not82, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %nid = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %cvt, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc43.for.body_crit_edge, %for.body.lr.ph
  %pcm.083 = phi ptr [ %pcm.081, %for.body.lr.ph ], [ %pcm.0, %for.inc43.for.body_crit_edge ]
  %cvt2 = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.083, i32 0, i32 3
  %1 = ptrtoint ptr %cvt2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cvt2, align 4
  %cmp3 = icmp eq ptr %2, %cvt
  br i1 %cmp3, label %if.then, label %for.body.for.inc43_crit_edge

for.body.for.inc43_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc43

if.then:                                          ; preds = %for.body
  %port_list = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.083, i32 0, i32 2
  %3 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %port_list, align 4
  %cmp.i.not = icmp eq ptr %4, %port_list
  br i1 %cmp.i.not, label %if.then.for.inc43_crit_edge, label %for.cond10.preheader

if.then.for.inc43_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc43

for.cond10.preheader:                             ; preds = %if.then
  %5 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %port.076 = load ptr, ptr %port_list, align 4
  %cmp13.not77 = icmp eq ptr %port.076, %port_list
  br i1 %cmp13.not77, label %for.cond10.preheader.for.inc43_crit_edge, label %for.body15.lr.ph

for.cond10.preheader.for.inc43_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc43

for.body15.lr.ph:                                 ; preds = %for.cond10.preheader
  %lock = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.083, i32 0, i32 10
  br label %for.body15

for.body15:                                       ; preds = %for.inc35.for.body15_crit_edge, %for.body15.lr.ph
  %port.078 = phi ptr [ %port.076, %for.body15.lr.ph ], [ %port.0, %for.inc35.for.body15_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %pin = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port.078, i32 0, i32 2
  %6 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pin, align 4
  %call16 = tail call fastcc i32 @hdac_hdmi_query_port_connlist(ptr noundef %hdev, ptr noundef %7, ptr noundef %port.078)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp18 = icmp slt i32 %call16, 0
  br i1 %cmp18, label %for.body15.for.inc35_crit_edge, label %for.cond21.preheader

for.body15.for.inc35_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc35

for.cond21.preheader:                             ; preds = %for.body15
  %num_mux_nids = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port.078, i32 0, i32 3
  %8 = ptrtoint ptr %num_mux_nids to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_mux_nids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2274 = icmp sgt i32 %9, 0
  br i1 %cmp2274, label %for.body23.lr.ph, label %for.cond21.preheader.for.inc35_crit_edge

for.cond21.preheader.for.inc35_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc35

for.body23.lr.ph:                                 ; preds = %for.cond21.preheader
  %10 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nid, align 8
  %eld = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port.078, i32 0, i32 5
  %eld_valid = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port.078, i32 0, i32 5, i32 1
  br label %for.body23

for.body23:                                       ; preds = %for.inc.for.body23_crit_edge, %for.body23.lr.ph
  %i.075 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc, %for.inc.for.body23_crit_edge ]
  %arrayidx = getelementptr %struct.hdac_hdmi_port, ptr %port.078, i32 0, i32 4, i32 %i.075
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %11)
  %cmp25 = icmp eq i16 %13, %11
  br i1 %cmp25, label %land.lhs.true, label %for.body23.for.inc_crit_edge

for.body23.for.inc_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body23
  %14 = ptrtoint ptr %eld to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %eld, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool27.not = icmp eq i8 %15, 0
  br i1 %tobool27.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true29

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true29:                                  ; preds = %land.lhs.true
  %16 = ptrtoint ptr %eld_valid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %eld_valid, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool31.not = icmp eq i8 %17, 0
  br i1 %tobool31.not, label %land.lhs.true29.for.inc_crit_edge, label %land.lhs.true29.cleanup_crit_edge

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true29.for.inc_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true29.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body23.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.for.inc35_crit_edge, label %for.inc.for.body23_crit_edge

for.inc.for.body23_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23

for.inc.for.inc35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc35

for.inc35:                                        ; preds = %for.inc.for.inc35_crit_edge, %for.cond21.preheader.for.inc35_crit_edge, %for.body15.for.inc35_crit_edge
  %18 = ptrtoint ptr %port.078 to i32
  call void @__asan_load4_noabort(i32 %18)
  %port.0 = load ptr, ptr %port.078, align 4
  %cmp13.not = icmp eq ptr %port.0, %port_list
  br i1 %cmp13.not, label %for.inc35.for.inc43_crit_edge, label %for.inc35.for.body15_crit_edge

for.inc35.for.body15_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15

for.inc35.for.inc43_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc43

for.inc43:                                        ; preds = %for.inc35.for.inc43_crit_edge, %for.cond10.preheader.for.inc43_crit_edge, %if.then.for.inc43_crit_edge, %for.body.for.inc43_crit_edge
  %19 = ptrtoint ptr %pcm.083 to i32
  call void @__asan_load4_noabort(i32 %19)
  %pcm.0 = load ptr, ptr %pcm.083, align 4
  %cmp.not = icmp eq ptr %pcm.0, %pcm_list
  br i1 %cmp.not, label %for.inc43.cleanup_crit_edge, label %for.inc43.for.body_crit_edge

for.inc43.for.body_crit_edge:                     ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc43.cleanup_crit_edge:                      ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc43.cleanup_crit_edge, %land.lhs.true29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %port.078, %land.lhs.true29.cleanup_crit_edge ], [ null, %for.inc43.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_eld(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdac_hdmi_query_port_connlist(ptr noundef %hdev, ptr nocapture noundef readonly %pin, ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  %val.i52 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nid = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin, i32 0, i32 1
  %0 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !252
  %call.i = call i32 @_snd_hdac_read_parm(ptr noundef %hdev, i16 noundef zeroext %1, i32 noundef 9, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_hdac_read_parm.exit.thread, label %snd_hdac_read_parm.exit

snd_hdac_read_parm.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %if.end

snd_hdac_read_parm.exit:                          ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %snd_hdac_read_parm.exit.if.end_crit_edge

snd_hdac_read_parm.exit.if.end_crit_edge:         ; preds = %snd_hdac_read_parm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %snd_hdac_read_parm.exit
  %5 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nid, align 4
  %conv = zext i16 %6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i52) #11
  %7 = ptrtoint ptr %val.i52 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i52, align 4, !annotation !252
  %call.i53 = call i32 @_snd_hdac_read_parm(ptr noundef %hdev, i16 noundef zeroext %6, i32 noundef 9, ptr noundef nonnull %val.i52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp.i54 = icmp slt i32 %call.i53, 0
  br i1 %cmp.i54, label %do.end.snd_hdac_read_parm.exit57_crit_edge, label %cond.false.i55

do.end.snd_hdac_read_parm.exit57_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_hdac_read_parm.exit57

cond.false.i55:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %val.i52 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i52, align 4
  br label %snd_hdac_read_parm.exit57

snd_hdac_read_parm.exit57:                        ; preds = %cond.false.i55, %do.end.snd_hdac_read_parm.exit57_crit_edge
  %cond.i56 = phi i32 [ %9, %cond.false.i55 ], [ -1, %do.end.snd_hdac_read_parm.exit57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i52) #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %hdev, ptr noundef nonnull @.str.69, i32 noundef %conv, i32 noundef %cond.i56) #14
  br label %return

if.end:                                           ; preds = %snd_hdac_read_parm.exit.if.end_crit_edge, %snd_hdac_read_parm.exit.thread
  %call4 = call fastcc i32 @hdac_hdmi_port_select_set(ptr noundef %hdev, ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end7

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nid, align 4
  %mux_nids = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 4
  %call9 = call i32 @snd_hdac_get_connections(ptr noundef %hdev, i16 noundef zeroext %11, ptr noundef %mux_nids, i32 noundef 32) #11
  %num_mux_nids = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 3
  %12 = ptrtoint ptr %num_mux_nids to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call9, ptr %num_mux_nids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp11 = icmp eq i32 %call9, 0
  br i1 %cmp11, label %do.end15, label %if.end7.do.body20_crit_edge

if.end7.do.body20_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nid, align 4
  %conv18 = zext i16 %14 to i32
  %id = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %hdev, ptr noundef nonnull @.str.72, i32 noundef %conv18, i32 noundef %16) #14
  br label %do.body20

do.body20:                                        ; preds = %do.end15, %if.end7.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_query_port_connlist.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_query_port_connlist, %if.then25)) #11
          to label %do.end32 [label %if.then25], !srcloc !250

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %num_mux_nids to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_mux_nids, align 4
  %19 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %nid, align 4
  %conv29 = zext i16 %20 to i32
  %id30 = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 1
  %21 = ptrtoint ptr %id30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id30, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_query_port_connlist.__UNIQUE_ID_ddebug242, ptr noundef %hdev, ptr noundef nonnull @.str.74, i32 noundef %18, i32 noundef %conv29, i32 noundef %22) #11
  br label %do.end32

do.end32:                                         ; preds = %if.then25, %do.body20
  %23 = ptrtoint ptr %num_mux_nids to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_mux_nids, align 4
  br label %return

return:                                           ; preds = %do.end32, %if.end.return_crit_edge, %snd_hdac_read_parm.exit57
  %retval.0 = phi i32 [ %24, %do.end32 ], [ -22, %snd_hdac_read_parm.exit57 ], [ -5, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdac_hdmi_port_select_set(ptr noundef %hdev, ptr nocapture noundef readonly %port) unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pin = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin, align 4
  %mst_capable = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mst_capable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mst_capable, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nid = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i, align 4, !annotation !252
  %call.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %hdev, i16 noundef zeroext %5, i32 noundef 9, ptr noundef nonnull %val.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %snd_hdac_read_parm.exit.thread.i, label %snd_hdac_read_parm.exit.i

snd_hdac_read_parm.exit.thread.i:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  br label %if.end3

snd_hdac_read_parm.exit.i:                        ; preds = %if.end
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  %9 = and i32 %8, 15729152
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194816, i32 %9)
  %10 = icmp eq i32 %9, 4194816
  br i1 %10, label %if.end.i, label %snd_hdac_read_parm.exit.i.if.end3_crit_edge

snd_hdac_read_parm.exit.i.if.end3_crit_edge:      ; preds = %snd_hdac_read_parm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end.i:                                         ; preds = %snd_hdac_read_parm.exit.i
  %call2.i = call i32 @snd_hdac_read_parm_uncached(ptr noundef %hdev, i16 noundef zeroext %5, i32 noundef 21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, -1
  %and6.i = and i32 %call2.i, 63
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end3_crit_edge

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.if.end3_crit_edge, %snd_hdac_read_parm.exit.i.if.end3_crit_edge, %snd_hdac_read_parm.exit.thread.i
  %retval.0.i34.ph = phi i32 [ 0, %snd_hdac_read_parm.exit.i.if.end3_crit_edge ], [ 0, %snd_hdac_read_parm.exit.thread.i ], [ %and6.i, %if.end.i.if.end3_crit_edge ]
  %add = add nuw nsw i32 %retval.0.i34.ph, 1
  %id = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %12)
  %cmp4 = icmp slt i32 %add, %12
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %13 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pin, align 4
  %nid8 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %nid8 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nid8, align 4
  %call10 = call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %16, i32 noundef 0, i32 noundef 1845, i32 noundef %12) #11
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %19 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pin, align 4
  %nid.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %nid.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %nid.i, align 4
  %call.i = call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %22, i32 noundef 0, i32 noundef 3893, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %call.i)
  %cmp13.not = icmp eq i32 %18, %call.i
  br i1 %cmp13.not, label %do.body, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_port_select_set.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_port_select_set, %if.then20)) #11
          to label %cleanup [label %if.then20], !srcloc !250

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_port_select_set.__UNIQUE_ID_ddebug240, ptr noundef %hdev, ptr noundef nonnull @.str.76, i32 noundef %24) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ -5, %if.end6.cleanup_crit_edge ], [ 0, %if.then20 ], [ -5, %if.end.i.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_connections(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_mask64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_calc_stream_format(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_codec_probe(ptr noundef %component) #0 align 64 {
entry:
  %kc_name.i.i = alloca [32 x i8], align 1
  %mux_items.i.i = alloca [32 x i8], align 1
  %items.i.i = alloca [32 x ptr], align 4
  %widget_name.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %component3 = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %component3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %component, ptr %component3, align 4
  %bus = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %entry.dev_name.exit_crit_edge ]
  %call5 = tail call ptr @snd_hdac_ext_bus_get_link(ptr noundef %8, ptr noundef %retval.0.i) #11
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.33) #14
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %call8 = tail call i32 @snd_hdac_ext_bus_link_get(ptr noundef %14, ptr noundef nonnull %call5) #11
  %dev.i58 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17, i32 2
  %15 = ptrtoint ptr %dev.i58 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i58, align 4
  %driver_data.i.i59 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i59, align 4
  %dai_drv2.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %dai_drv2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dai_drv2.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %widget_name.i) #11
  %cvt_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %18, i32 0, i32 5
  %21 = call ptr @memset(ptr %widget_name.i, i32 255, i32 32)
  %22 = ptrtoint ptr %cvt_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cvt_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, %cvt_list.i
  br i1 %cmp.i.not.i, label %if.end.create_fill_widget_route_map.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.create_fill_widget_route_map.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_fill_widget_route_map.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %pin_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %18, i32 0, i32 4
  %24 = ptrtoint ptr %pin_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %pin_list.i, align 4
  %cmp.i272.not.i = icmp eq ptr %25, %pin_list.i
  br i1 %cmp.i272.not.i, label %lor.lhs.false.i.create_fill_widget_route_map.exit.thread_crit_edge, label %if.end.i60

lor.lhs.false.i.create_fill_widget_route_map.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_fill_widget_route_map.exit.thread

if.end.i60:                                       ; preds = %lor.lhs.false.i
  %num_ports.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %18, i32 0, i32 9
  %26 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_ports.i, align 4
  %mul.i = shl i32 %27, 1
  %num_cvt.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %18, i32 0, i32 8
  %28 = ptrtoint ptr %num_cvt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_cvt.i, align 4
  %add.i = add i32 %mul.i, %29
  %mul7.i = mul i32 %add.i, 180
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef %mul7.i, i32 noundef 3520) #11
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.end.i60.create_fill_widget_route_map.exit.thread_crit_edge, label %for.cond.preheader.i

if.end.i60.create_fill_widget_route_map.exit.thread_crit_edge: ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_fill_widget_route_map.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i60
  %30 = ptrtoint ptr %cvt_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %cvt.0313.i = load ptr, ptr %cvt_list.i, align 4
  %cmp.not314.i = icmp eq ptr %cvt.0313.i, %cvt_list.i
  br i1 %cmp.not314.i, label %for.cond.preheader.i.for.cond36.preheader.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.cond36.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond36.preheader.i

for.cond36.preheader.i:                           ; preds = %if.end25.i.for.cond36.preheader.i_crit_edge, %for.cond.preheader.i.for.cond36.preheader.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.cond36.preheader.i_crit_edge ], [ %inc.i, %if.end25.i.for.cond36.preheader.i_crit_edge ]
  %31 = ptrtoint ptr %pin_list.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %pin.0321.i = load ptr, ptr %pin_list.i, align 4
  %cmp39.not322.i = icmp eq ptr %pin.0321.i, %pin_list.i
  br i1 %cmp39.not322.i, label %for.cond36.preheader.i.for.cond82.preheader.i_crit_edge, label %for.cond36.preheader.i.for.cond43.preheader.i_crit_edge

for.cond36.preheader.i.for.cond43.preheader.i_crit_edge: ; preds = %for.cond36.preheader.i
  br label %for.cond43.preheader.i

for.cond36.preheader.i.for.cond82.preheader.i_crit_edge: ; preds = %for.cond36.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond82.preheader.i

for.body.i:                                       ; preds = %if.end25.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %cvt.0316.i = phi ptr [ %cvt.0.i, %if.end25.i.for.body.i_crit_edge ], [ %cvt.0313.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.0315.i = phi i32 [ %inc.i, %if.end25.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %nid.i = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %cvt.0316.i, i32 0, i32 1
  %32 = ptrtoint ptr %nid.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nid.i, align 8
  %conv.i = zext i16 %33 to i32
  %call17.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %widget_name.i, ptr noundef nonnull @.str.83, i32 noundef %conv.i) #11
  %34 = ptrtoint ptr %dev.i58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i58, align 4
  %arrayidx.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.0315.i
  %playback.i = getelementptr %struct.snd_soc_dai_driver, ptr %20, i32 %i.0315.i, i32 11
  %36 = ptrtoint ptr %playback.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %playback.i, align 8
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 23, ptr %arrayidx.i, align 4
  %call.i274.i = call noalias ptr @devm_kstrdup(ptr noundef %35, ptr noundef nonnull %widget_name.i, i32 noundef 3264) #11
  %name.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.0315.i, i32 1
  %39 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i274.i, ptr %name.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i274.i, null
  br i1 %tobool.not.i.i, label %for.body.i.create_fill_widget_route_map.exit.thread_crit_edge, label %if.end25.i

for.body.i.create_fill_widget_route_map.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_fill_widget_route_map.exit.thread

if.end25.i:                                       ; preds = %for.body.i
  %sname.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.0315.i, i32 2
  %40 = ptrtoint ptr %sname.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %sname.i.i, align 4
  %reg.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.0315.i, i32 8
  %41 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %reg.i.i, align 4
  %shift.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.0315.i, i32 9
  %42 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %shift.i.i, align 4
  %kcontrol_news.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.0315.i, i32 19
  %43 = ptrtoint ptr %kcontrol_news.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %kcontrol_news.i.i, align 4
  %num_kcontrols.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.0315.i, i32 18
  %44 = ptrtoint ptr %num_kcontrols.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %num_kcontrols.i.i, align 4
  %priv3.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.0315.i, i32 5
  %45 = ptrtoint ptr %priv3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %cvt.0316.i, ptr %priv3.i.i, align 4
  %event4.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.0315.i, i32 17
  %46 = ptrtoint ptr %event4.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @hdac_hdmi_cvt_output_widget_event, ptr %event4.i.i, align 4
  %event_flags5.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.0315.i, i32 16
  %47 = ptrtoint ptr %event_flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 9, ptr %event_flags5.i.i, align 4
  %inc.i = add i32 %i.0315.i, 1
  %48 = ptrtoint ptr %cvt.0316.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %cvt.0.i = load ptr, ptr %cvt.0316.i, align 4
  %cmp.not.i = icmp eq ptr %cvt.0.i, %cvt_list.i
  br i1 %cmp.not.i, label %if.end25.i.for.cond36.preheader.i_crit_edge, label %if.end25.i.for.body.i_crit_edge

if.end25.i.for.body.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end25.i.for.cond36.preheader.i_crit_edge:      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond36.preheader.i

for.cond36.loopexit.i:                            ; preds = %if.end62.i.for.cond36.loopexit.i_crit_edge, %for.cond43.preheader.i.for.cond36.loopexit.i_crit_edge
  %i.2.lcssa.i = phi i32 [ %i.1323.i, %for.cond43.preheader.i.for.cond36.loopexit.i_crit_edge ], [ %inc66.i, %if.end62.i.for.cond36.loopexit.i_crit_edge ]
  %49 = ptrtoint ptr %pin.0324.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %pin.0.i = load ptr, ptr %pin.0324.i, align 4
  %cmp39.not.i = icmp eq ptr %pin.0.i, %pin_list.i
  br i1 %cmp39.not.i, label %for.cond36.loopexit.i.for.cond82.preheader.i_crit_edge, label %for.cond36.loopexit.i.for.cond43.preheader.i_crit_edge

for.cond36.loopexit.i.for.cond43.preheader.i_crit_edge: ; preds = %for.cond36.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond43.preheader.i

for.cond36.loopexit.i.for.cond82.preheader.i_crit_edge: ; preds = %for.cond36.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond82.preheader.i

for.cond43.preheader.i:                           ; preds = %for.cond36.loopexit.i.for.cond43.preheader.i_crit_edge, %for.cond36.preheader.i.for.cond43.preheader.i_crit_edge
  %pin.0324.i = phi ptr [ %pin.0.i, %for.cond36.loopexit.i.for.cond43.preheader.i_crit_edge ], [ %pin.0321.i, %for.cond36.preheader.i.for.cond43.preheader.i_crit_edge ]
  %i.1323.i = phi i32 [ %i.2.lcssa.i, %for.cond36.loopexit.i.for.cond43.preheader.i_crit_edge ], [ %i.0.lcssa.i, %for.cond36.preheader.i.for.cond43.preheader.i_crit_edge ]
  %num_ports44.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.0324.i, i32 0, i32 4
  %50 = ptrtoint ptr %num_ports44.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_ports44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp45317.i = icmp sgt i32 %51, 0
  br i1 %cmp45317.i, label %for.body47.lr.ph.i, label %for.cond43.preheader.i.for.cond36.loopexit.i_crit_edge

for.cond43.preheader.i.for.cond36.loopexit.i_crit_edge: ; preds = %for.cond43.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond36.loopexit.i

for.body47.lr.ph.i:                               ; preds = %for.cond43.preheader.i
  %nid49.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.0324.i, i32 0, i32 1
  %ports.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.0324.i, i32 0, i32 3
  br label %for.body47.i

for.cond82.preheader.i:                           ; preds = %for.cond36.loopexit.i.for.cond82.preheader.i_crit_edge, %for.cond36.preheader.i.for.cond82.preheader.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.0.lcssa.i, %for.cond36.preheader.i.for.cond82.preheader.i_crit_edge ], [ %i.2.lcssa.i, %for.cond36.loopexit.i.for.cond82.preheader.i_crit_edge ]
  %52 = ptrtoint ptr %pin_list.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %pin.1332.i = load ptr, ptr %pin_list.i, align 4
  %cmp85.not333.i = icmp eq ptr %pin.1332.i, %pin_list.i
  br i1 %cmp85.not333.i, label %for.cond82.preheader.i.for.end123.i_crit_edge, label %for.cond89.preheader.lr.ph.i

for.cond82.preheader.i.for.end123.i_crit_edge:    ; preds = %for.cond82.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end123.i

for.cond89.preheader.lr.ph.i:                     ; preds = %for.cond82.preheader.i
  %53 = getelementptr inbounds i8, ptr %items.i.i, i32 4
  br label %for.cond89.preheader.i

for.body47.i:                                     ; preds = %if.end62.i.for.body47.i_crit_edge, %for.body47.lr.ph.i
  %i.2319.i = phi i32 [ %i.1323.i, %for.body47.lr.ph.i ], [ %inc66.i, %if.end62.i.for.body47.i_crit_edge ]
  %j.0318.i = phi i32 [ 0, %for.body47.lr.ph.i ], [ %inc68.i, %if.end62.i.for.body47.i_crit_edge ]
  %54 = ptrtoint ptr %nid49.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %nid49.i, align 4
  %conv50.i = zext i16 %55 to i32
  %56 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ports.i, align 4
  %id.i = getelementptr %struct.hdac_hdmi_port, ptr %57, i32 %j.0318.i, i32 1
  %58 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id.i, align 4
  %call52.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %widget_name.i, ptr noundef nonnull @.str.84, i32 noundef %conv50.i, i32 noundef %59) #11
  %60 = ptrtoint ptr %dev.i58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i58, align 4
  %arrayidx54.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.2319.i
  %62 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ports.i, align 4
  %64 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %arrayidx54.i, align 4
  %call.i275.i = call noalias ptr @devm_kstrdup(ptr noundef %61, ptr noundef nonnull %widget_name.i, i32 noundef 3264) #11
  %name.i276.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.2319.i, i32 1
  %65 = ptrtoint ptr %name.i276.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i275.i, ptr %name.i276.i, align 4
  %tobool.not.i277.i = icmp eq ptr %call.i275.i, null
  br i1 %tobool.not.i277.i, label %for.body47.i.create_fill_widget_route_map.exit.thread_crit_edge, label %if.end62.i

for.body47.i.create_fill_widget_route_map.exit.thread_crit_edge: ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_fill_widget_route_map.exit.thread

if.end62.i:                                       ; preds = %for.body47.i
  %arrayidx56.i = getelementptr %struct.hdac_hdmi_port, ptr %63, i32 %j.0318.i
  %sname.i278.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.2319.i, i32 2
  %66 = ptrtoint ptr %sname.i278.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %sname.i278.i, align 4
  %reg.i279.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.2319.i, i32 8
  %67 = ptrtoint ptr %reg.i279.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %reg.i279.i, align 4
  %shift.i280.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.2319.i, i32 9
  %68 = ptrtoint ptr %shift.i280.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %shift.i280.i, align 4
  %kcontrol_news.i281.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.2319.i, i32 19
  %69 = ptrtoint ptr %kcontrol_news.i281.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %kcontrol_news.i281.i, align 4
  %num_kcontrols.i282.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.2319.i, i32 18
  %70 = ptrtoint ptr %num_kcontrols.i282.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %num_kcontrols.i282.i, align 4
  %priv3.i283.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.2319.i, i32 5
  %71 = ptrtoint ptr %priv3.i283.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx56.i, ptr %priv3.i283.i, align 4
  %event4.i284.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.2319.i, i32 17
  %72 = ptrtoint ptr %event4.i284.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @hdac_hdmi_pin_output_widget_event, ptr %event4.i284.i, align 4
  %event_flags5.i285.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.2319.i, i32 16
  %73 = ptrtoint ptr %event_flags5.i285.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 9, ptr %event_flags5.i285.i, align 4
  %74 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ports.i, align 4
  %output_pin.i = getelementptr %struct.hdac_hdmi_port, ptr %75, i32 %j.0318.i, i32 9
  %76 = ptrtoint ptr %output_pin.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i275.i, ptr %output_pin.i, align 4
  %inc66.i = add i32 %i.2319.i, 1
  %inc68.i = add nuw nsw i32 %j.0318.i, 1
  %77 = ptrtoint ptr %num_ports44.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_ports44.i, align 4
  %cmp45.i = icmp slt i32 %inc68.i, %78
  br i1 %cmp45.i, label %if.end62.i.for.body47.i_crit_edge, label %if.end62.i.for.cond36.loopexit.i_crit_edge

if.end62.i.for.cond36.loopexit.i_crit_edge:       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond36.loopexit.i

if.end62.i.for.body47.i_crit_edge:                ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body47.i

for.cond82.loopexit.i:                            ; preds = %if.end109.i.for.cond82.loopexit.i_crit_edge, %for.cond89.preheader.i.for.cond82.loopexit.i_crit_edge
  %num_routes.1.lcssa.i = phi i32 [ %num_routes.0334.i, %for.cond89.preheader.i.for.cond82.loopexit.i_crit_edge ], [ %inc113.i, %if.end109.i.for.cond82.loopexit.i_crit_edge ]
  %i.4.lcssa.i = phi i32 [ %i.3335.i, %for.cond89.preheader.i.for.cond82.loopexit.i_crit_edge ], [ %inc110.i, %if.end109.i.for.cond82.loopexit.i_crit_edge ]
  %79 = ptrtoint ptr %pin.1336.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %pin.1.i = load ptr, ptr %pin.1336.i, align 4
  %cmp85.not.i = icmp eq ptr %pin.1.i, %pin_list.i
  br i1 %cmp85.not.i, label %for.cond82.loopexit.i.for.end123.i_crit_edge, label %for.cond82.loopexit.i.for.cond89.preheader.i_crit_edge

for.cond82.loopexit.i.for.cond89.preheader.i_crit_edge: ; preds = %for.cond82.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond89.preheader.i

for.cond82.loopexit.i.for.end123.i_crit_edge:     ; preds = %for.cond82.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end123.i

for.cond89.preheader.i:                           ; preds = %for.cond82.loopexit.i.for.cond89.preheader.i_crit_edge, %for.cond89.preheader.lr.ph.i
  %pin.1336.i = phi ptr [ %pin.1332.i, %for.cond89.preheader.lr.ph.i ], [ %pin.1.i, %for.cond82.loopexit.i.for.cond89.preheader.i_crit_edge ]
  %i.3335.i = phi i32 [ %i.1.lcssa.i, %for.cond89.preheader.lr.ph.i ], [ %i.4.lcssa.i, %for.cond82.loopexit.i.for.cond89.preheader.i_crit_edge ]
  %num_routes.0334.i = phi i32 [ 0, %for.cond89.preheader.lr.ph.i ], [ %num_routes.1.lcssa.i, %for.cond82.loopexit.i.for.cond89.preheader.i_crit_edge ]
  %num_ports90.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.1336.i, i32 0, i32 4
  %80 = ptrtoint ptr %num_ports90.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_ports90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp91326.i = icmp sgt i32 %81, 0
  br i1 %cmp91326.i, label %for.body93.lr.ph.i, label %for.cond89.preheader.i.for.cond82.loopexit.i_crit_edge

for.cond89.preheader.i.for.cond82.loopexit.i_crit_edge: ; preds = %for.cond89.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond82.loopexit.i

for.body93.lr.ph.i:                               ; preds = %for.cond89.preheader.i
  %nid95.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.1336.i, i32 0, i32 1
  %ports97.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.1336.i, i32 0, i32 3
  br label %for.body93.i

for.body93.i:                                     ; preds = %if.end109.i.for.body93.i_crit_edge, %for.body93.lr.ph.i
  %i.4329.i = phi i32 [ %i.3335.i, %for.body93.lr.ph.i ], [ %inc110.i, %if.end109.i.for.body93.i_crit_edge ]
  %num_routes.1328.i = phi i32 [ %num_routes.0334.i, %for.body93.lr.ph.i ], [ %inc113.i, %if.end109.i.for.body93.i_crit_edge ]
  %j.1327.i = phi i32 [ 0, %for.body93.lr.ph.i ], [ %inc115.i, %if.end109.i.for.body93.i_crit_edge ]
  %82 = ptrtoint ptr %nid95.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %nid95.i, align 4
  %conv96.i = zext i16 %83 to i32
  %84 = ptrtoint ptr %ports97.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ports97.i, align 4
  %id99.i = getelementptr %struct.hdac_hdmi_port, ptr %85, i32 %j.1327.i, i32 1
  %86 = ptrtoint ptr %id99.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %id99.i, align 4
  %call100.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %widget_name.i, ptr noundef nonnull @.str.85, i32 noundef %conv96.i, i32 noundef %87) #11
  %88 = ptrtoint ptr %ports97.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ports97.i, align 4
  %arrayidx102.i = getelementptr %struct.hdac_hdmi_port, ptr %89, i32 %j.1327.i
  %arrayidx103.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.4329.i
  %90 = ptrtoint ptr %driver_data.i.i59 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %driver_data.i.i59, align 4
  %pin1.i.i = getelementptr %struct.hdac_hdmi_port, ptr %89, i32 %j.1327.i, i32 2
  %92 = ptrtoint ptr %pin1.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pin1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %kc_name.i.i) #11
  %94 = call ptr @memset(ptr %kc_name.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mux_items.i.i) #11
  %95 = call ptr @memset(ptr %mux_items.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %items.i.i) #11
  %96 = call ptr @memset(ptr %53, i32 255, i32 124)
  %num_cvt.i.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %91, i32 0, i32 8
  %97 = ptrtoint ptr %num_cvt.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_cvt.i.i, align 4
  %add.i.i = add i32 %98, 1
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 48, i32 noundef 3520) #11
  %tobool.not.i289.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i289.i, label %for.body93.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge, label %if.end.i290.i

for.body93.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge: ; preds = %for.body93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_create_pin_port_muxs.exit.thread.i

if.end.i290.i:                                    ; preds = %for.body93.i
  %call.i136.i.i = call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 64, i32 noundef 3520) #11
  %tobool6.not.i.i = icmp eq ptr %call.i136.i.i, null
  br i1 %tobool6.not.i.i, label %if.end.i290.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge, label %if.end8.i.i

if.end.i290.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge: ; preds = %if.end.i290.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_create_pin_port_muxs.exit.thread.i

if.end8.i.i:                                      ; preds = %if.end.i290.i
  %nid.i.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %93, i32 0, i32 1
  %99 = ptrtoint ptr %nid.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %nid.i.i, align 4
  %conv.i291.i = zext i16 %100 to i32
  %id.i.i = getelementptr %struct.hdac_hdmi_port, ptr %89, i32 %j.1327.i, i32 1
  %101 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %id.i.i, align 4
  %call9.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %kc_name.i.i, i32 noundef 32, ptr noundef nonnull @.str.91, i32 noundef %conv.i291.i, i32 noundef %102) #11
  %call12.i.i = call noalias ptr @devm_kstrdup(ptr noundef %16, ptr noundef nonnull %kc_name.i.i, i32 noundef 3264) #11
  %name.i292.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call.i.i.i, i32 0, i32 3
  %103 = ptrtoint ptr %name.i292.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call12.i.i, ptr %name.i292.i, align 4
  %tobool14.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool14.not.i.i, label %if.end8.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge, label %if.end16.i.i

if.end8.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_create_pin_port_muxs.exit.thread.i

if.end16.i.i:                                     ; preds = %if.end8.i.i
  %104 = ptrtoint ptr %call.i136.i.i to i32
  %private_value.i.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call.i.i.i, i32 0, i32 11
  %105 = ptrtoint ptr %private_value.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %private_value.i.i, align 4
  %106 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2, ptr %call.i.i.i, align 4
  %access.i.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call.i.i.i, i32 0, i32 5
  %107 = ptrtoint ptr %access.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %access.i.i, align 4
  %info.i.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call.i.i.i, i32 0, i32 7
  %108 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @snd_soc_info_enum_double, ptr %info.i.i, align 4
  %put.i.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call.i.i.i, i32 0, i32 9
  %109 = ptrtoint ptr %put.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @hdac_hdmi_set_pin_port_mux, ptr %put.i.i, align 4
  %get.i.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %call.i.i.i, i32 0, i32 8
  %110 = ptrtoint ptr %get.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @snd_soc_dapm_get_enum_double, ptr %get.i.i, align 4
  %111 = ptrtoint ptr %call.i136.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %call.i136.i.i, align 4
  %items17.i.i = getelementptr inbounds %struct.soc_enum, ptr %call.i136.i.i, i32 0, i32 3
  %112 = ptrtoint ptr %items17.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add.i.i, ptr %items17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.i293.i = icmp eq i32 %98, 0
  %113 = call i32 @llvm.ctlz.i32(i32 %98, i1 true) #11, !range !253
  %sub.i.i.i.i.i = sub nuw nsw i32 32, %113
  %notmask = shl nsw i32 -1, %sub.i.i.i.i.i
  %sub.i.i.op.i.i.i.op = xor i32 %notmask, -1
  %sub48.i.i = select i1 %cmp.i293.i, i32 0, i32 %sub.i.i.op.i.i.i.op
  %mask.i.i = getelementptr inbounds %struct.soc_enum, ptr %call.i136.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %sub48.i.i, ptr %mask.i.i, align 4
  %115 = call ptr @memcpy(ptr %mux_items.i.i, ptr @.str.92, i32 5)
  %call53.i.i = call noalias ptr @devm_kstrdup(ptr noundef %16, ptr noundef nonnull %mux_items.i.i, i32 noundef 3264) #11
  %116 = ptrtoint ptr %items.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call53.i.i, ptr %items.i.i, align 4
  %tobool55.not.i.i = icmp eq ptr %call53.i.i, null
  br i1 %tobool55.not.i.i, label %if.end16.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge, label %if.end57.i.i

if.end16.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_create_pin_port_muxs.exit.thread.i

if.end57.i.i:                                     ; preds = %if.end16.i.i
  %cvt_list.i.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %91, i32 0, i32 5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end57.i.i
  %cvt.0.in.i.i = phi ptr [ %cvt_list.i.i, %if.end57.i.i ], [ %cvt.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %i.0.i.i = phi i32 [ 0, %if.end57.i.i ], [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %117 = ptrtoint ptr %cvt.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %cvt.0.i.i = load ptr, ptr %cvt.0.in.i.i, align 4
  %cmp59.not.i.i = icmp eq ptr %cvt.0.i.i, %cvt_list.i.i
  br i1 %cmp59.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %inc.i.i = add i32 %i.0.i.i, 1
  %nid62.i.i = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %cvt.0.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %nid62.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %nid62.i.i, align 8
  %conv63.i.i = zext i16 %119 to i32
  %call64.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %mux_items.i.i, ptr noundef nonnull @.str.59, i32 noundef %conv63.i.i) #11
  %call67.i.i = call noalias ptr @devm_kstrdup(ptr noundef %16, ptr noundef nonnull %mux_items.i.i, i32 noundef 3264) #11
  %arrayidx68.i.i = getelementptr [32 x ptr], ptr %items.i.i, i32 0, i32 %inc.i.i
  %120 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call67.i.i, ptr %arrayidx68.i.i, align 4
  %tobool70.not.i.i = icmp eq ptr %call67.i.i, null
  br i1 %tobool70.not.i.i, label %for.body.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

for.body.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_create_pin_port_muxs.exit.thread.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %mul.i.i = shl i32 %add.i.i, 2
  %call80.i.i = call ptr @devm_kmemdup(ptr noundef %16, ptr noundef nonnull %items.i.i, i32 noundef %mul.i.i, i32 noundef 3264) #11
  %texts.i.i = getelementptr inbounds %struct.soc_enum, ptr %call.i136.i.i, i32 0, i32 5
  %121 = ptrtoint ptr %texts.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call80.i.i, ptr %texts.i.i, align 4
  %tobool82.not.i.i = icmp eq ptr %call80.i.i, null
  br i1 %tobool82.not.i.i, label %for.end.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge, label %if.end84.i.i

for.end.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_create_pin_port_muxs.exit.thread.i

if.end84.i.i:                                     ; preds = %for.end.i.i
  %122 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 2, ptr %arrayidx103.i, align 4
  %call.i137.i.i = call noalias ptr @devm_kstrdup(ptr noundef %16, ptr noundef nonnull %widget_name.i, i32 noundef 3264) #11
  %name.i.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.4329.i, i32 1
  %123 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i137.i.i, ptr %name.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call.i137.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end84.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge, label %if.end109.i

if.end84.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge: ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_create_pin_port_muxs.exit.thread.i

hdac_hdmi_create_pin_port_muxs.exit.thread.i:     ; preds = %if.end84.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge, %for.end.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge, %for.body.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge, %if.end16.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge, %if.end8.i.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge, %if.end.i290.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge, %for.body93.i.hdac_hdmi_create_pin_port_muxs.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %items.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mux_items.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %kc_name.i.i) #11
  br label %create_fill_widget_route_map.exit.thread

if.end109.i:                                      ; preds = %if.end84.i.i
  %sname.i.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.4329.i, i32 2
  %124 = ptrtoint ptr %sname.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %sname.i.i.i, align 4
  %reg.i.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.4329.i, i32 8
  %125 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %reg.i.i.i, align 4
  %shift.i.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.4329.i, i32 9
  %126 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %shift.i.i.i, align 4
  %kcontrol_news.i.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.4329.i, i32 19
  %127 = ptrtoint ptr %kcontrol_news.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i.i.i, ptr %kcontrol_news.i.i.i, align 4
  %num_kcontrols.i.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.4329.i, i32 18
  %128 = ptrtoint ptr %num_kcontrols.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %num_kcontrols.i.i.i, align 4
  %priv3.i.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.4329.i, i32 5
  %129 = ptrtoint ptr %priv3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %arrayidx102.i, ptr %priv3.i.i.i, align 4
  %event4.i.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.4329.i, i32 17
  %130 = ptrtoint ptr %event4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @hdac_hdmi_pin_mux_widget_event, ptr %event4.i.i.i, align 4
  %event_flags5.i.i.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.4329.i, i32 16
  %131 = ptrtoint ptr %event_flags5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 33, ptr %event_flags5.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %items.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mux_items.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %kc_name.i.i) #11
  %inc110.i = add i32 %i.4329.i, 1
  %132 = ptrtoint ptr %num_cvt.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %num_cvt.i, align 4
  %add112.i = add i32 %num_routes.1328.i, 1
  %inc113.i = add i32 %add112.i, %133
  %inc115.i = add nuw nsw i32 %j.1327.i, 1
  %134 = ptrtoint ptr %num_ports90.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %num_ports90.i, align 4
  %cmp91.i = icmp slt i32 %inc115.i, %135
  br i1 %cmp91.i, label %if.end109.i.for.body93.i_crit_edge, label %if.end109.i.for.cond82.loopexit.i_crit_edge

if.end109.i.for.cond82.loopexit.i_crit_edge:      ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond82.loopexit.i

if.end109.i.for.body93.i_crit_edge:               ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body93.i

for.end123.i:                                     ; preds = %for.cond82.loopexit.i.for.end123.i_crit_edge, %for.cond82.preheader.i.for.end123.i_crit_edge
  %num_routes.0.lcssa.i = phi i32 [ 0, %for.cond82.preheader.i.for.end123.i_crit_edge ], [ %num_routes.1.lcssa.i, %for.cond82.loopexit.i.for.end123.i_crit_edge ]
  %136 = ptrtoint ptr %dev.i58 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i58, align 4
  %mul125.i = mul i32 %num_routes.0.lcssa.i, 52
  %call.i295.i = call noalias ptr @devm_kmalloc(ptr noundef %137, i32 noundef %mul125.i, i32 noundef 3520) #11
  %tobool127.not.i = icmp eq ptr %call.i295.i, null
  br i1 %tobool127.not.i, label %for.end123.i.create_fill_widget_route_map.exit.thread_crit_edge, label %for.cond135.preheader.i

for.end123.i.create_fill_widget_route_map.exit.thread_crit_edge: ; preds = %for.end123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_fill_widget_route_map.exit.thread

for.cond135.preheader.i:                          ; preds = %for.end123.i
  %138 = ptrtoint ptr %pin_list.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %pin.2342.i = load ptr, ptr %pin_list.i, align 4
  %cmp138.not343.i = icmp eq ptr %pin.2342.i, %pin_list.i
  br i1 %cmp138.not343.i, label %for.cond135.preheader.i.if.end11_crit_edge, label %for.cond142.preheader.lr.ph.i

for.cond135.preheader.i.if.end11_crit_edge:       ; preds = %for.cond135.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.cond142.preheader.lr.ph.i:                    ; preds = %for.cond135.preheader.i
  %num_pin.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %18, i32 0, i32 7
  br label %for.cond142.preheader.i

for.cond135.loopexit.i:                           ; preds = %for.body146.i.for.cond135.loopexit.i_crit_edge, %for.cond142.preheader.i.for.cond135.loopexit.i_crit_edge
  %i.6.lcssa.i = phi i32 [ %i.5344.i, %for.cond142.preheader.i.for.cond135.loopexit.i_crit_edge ], [ %inc157.i, %for.body146.i.for.cond135.loopexit.i_crit_edge ]
  %139 = ptrtoint ptr %pin.2345.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %pin.2.i = load ptr, ptr %pin.2345.i, align 4
  %cmp138.not.i = icmp eq ptr %pin.2.i, %pin_list.i
  br i1 %cmp138.not.i, label %for.cond135.loopexit.i.if.end11_crit_edge, label %for.cond135.loopexit.i.for.cond142.preheader.i_crit_edge

for.cond135.loopexit.i.for.cond142.preheader.i_crit_edge: ; preds = %for.cond135.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond142.preheader.i

for.cond135.loopexit.i.if.end11_crit_edge:        ; preds = %for.cond135.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.cond142.preheader.i:                          ; preds = %for.cond135.loopexit.i.for.cond142.preheader.i_crit_edge, %for.cond142.preheader.lr.ph.i
  %pin.2345.i = phi ptr [ %pin.2342.i, %for.cond142.preheader.lr.ph.i ], [ %pin.2.i, %for.cond135.loopexit.i.for.cond142.preheader.i_crit_edge ]
  %i.5344.i = phi i32 [ 0, %for.cond142.preheader.lr.ph.i ], [ %i.6.lcssa.i, %for.cond135.loopexit.i.for.cond142.preheader.i_crit_edge ]
  %num_ports143.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.2345.i, i32 0, i32 4
  %140 = ptrtoint ptr %num_ports143.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %num_ports143.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp144338.i = icmp sgt i32 %141, 0
  br i1 %cmp144338.i, label %for.cond142.preheader.i.for.body146.i_crit_edge, label %for.cond142.preheader.i.for.cond135.loopexit.i_crit_edge

for.cond142.preheader.i.for.cond135.loopexit.i_crit_edge: ; preds = %for.cond142.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond135.loopexit.i

for.cond142.preheader.i.for.body146.i_crit_edge:  ; preds = %for.cond142.preheader.i
  br label %for.body146.i

for.body146.i:                                    ; preds = %for.body146.i.for.body146.i_crit_edge, %for.cond142.preheader.i.for.body146.i_crit_edge
  %142 = phi i32 [ %156, %for.body146.i.for.body146.i_crit_edge ], [ %141, %for.cond142.preheader.i.for.body146.i_crit_edge ]
  %i.6340.i = phi i32 [ %inc157.i, %for.body146.i.for.body146.i_crit_edge ], [ %i.5344.i, %for.cond142.preheader.i.for.body146.i_crit_edge ]
  %j.2339.i = phi i32 [ %inc159.i, %for.body146.i.for.body146.i_crit_edge ], [ 0, %for.cond142.preheader.i.for.body146.i_crit_edge ]
  %143 = ptrtoint ptr %num_cvt.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %num_cvt.i, align 4
  %add148.i = add i32 %144, %i.6340.i
  %145 = ptrtoint ptr %num_pin.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num_pin.i, align 4
  %mul150.i = mul i32 %146, %142
  %add151.i = add i32 %mul150.i, %add148.i
  %arrayidx152.i = getelementptr %struct.snd_soc_dapm_route, ptr %call.i295.i, i32 %i.6340.i
  %name154.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %add148.i, i32 1
  %147 = ptrtoint ptr %name154.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name154.i, align 4
  %name156.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %add151.i, i32 1
  %149 = ptrtoint ptr %name156.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %name156.i, align 4
  %151 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %148, ptr %arrayidx152.i, align 4
  %source.i.i = getelementptr %struct.snd_soc_dapm_route, ptr %call.i295.i, i32 %i.6340.i, i32 2
  %152 = ptrtoint ptr %source.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %150, ptr %source.i.i, align 4
  %control2.i.i = getelementptr %struct.snd_soc_dapm_route, ptr %call.i295.i, i32 %i.6340.i, i32 1
  %153 = ptrtoint ptr %control2.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %control2.i.i, align 4
  %connected.i.i = getelementptr %struct.snd_soc_dapm_route, ptr %call.i295.i, i32 %i.6340.i, i32 3
  %154 = ptrtoint ptr %connected.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %connected.i.i, align 4
  %inc157.i = add i32 %i.6340.i, 1
  %inc159.i = add nuw nsw i32 %j.2339.i, 1
  %155 = ptrtoint ptr %num_ports143.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %num_ports143.i, align 4
  %cmp144.i = icmp slt i32 %inc159.i, %156
  br i1 %cmp144.i, label %for.body146.i.for.body146.i_crit_edge, label %for.body146.i.for.cond135.loopexit.i_crit_edge

for.body146.i.for.cond135.loopexit.i_crit_edge:   ; preds = %for.body146.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond135.loopexit.i

for.body146.i.for.body146.i_crit_edge:            ; preds = %for.body146.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body146.i

create_fill_widget_route_map.exit.thread:         ; preds = %for.end123.i.create_fill_widget_route_map.exit.thread_crit_edge, %hdac_hdmi_create_pin_port_muxs.exit.thread.i, %for.body47.i.create_fill_widget_route_map.exit.thread_crit_edge, %for.body.i.create_fill_widget_route_map.exit.thread_crit_edge, %if.end.i60.create_fill_widget_route_map.exit.thread_crit_edge, %lor.lhs.false.i.create_fill_widget_route_map.exit.thread_crit_edge, %if.end.create_fill_widget_route_map.exit.thread_crit_edge
  %retval.0.i61.ph = phi i32 [ -12, %hdac_hdmi_create_pin_port_muxs.exit.thread.i ], [ -12, %for.end123.i.create_fill_widget_route_map.exit.thread_crit_edge ], [ -12, %if.end.i60.create_fill_widget_route_map.exit.thread_crit_edge ], [ -22, %if.end.create_fill_widget_route_map.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.create_fill_widget_route_map.exit.thread_crit_edge ], [ -12, %for.body47.i.create_fill_widget_route_map.exit.thread_crit_edge ], [ -12, %for.body.i.create_fill_widget_route_map.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %widget_name.i) #11
  br label %cleanup

if.end11:                                         ; preds = %for.cond135.loopexit.i.if.end11_crit_edge, %for.cond135.preheader.i.if.end11_crit_edge
  %i.5.lcssa.i = phi i32 [ 0, %for.cond135.preheader.i.if.end11_crit_edge ], [ %i.6.lcssa.i, %for.cond135.loopexit.i.if.end11_crit_edge ]
  call fastcc void @hdac_hdmi_add_pinmux_cvt_route(ptr noundef %16, ptr noundef nonnull %call.i.i, ptr noundef nonnull %call.i295.i, i32 noundef %i.5.lcssa.i) #11
  %157 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %num_ports.i, align 4
  %mul169.i = shl i32 %158, 1
  %159 = ptrtoint ptr %num_cvt.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_cvt.i, align 4
  %add171.i = add i32 %mul169.i, %160
  %call172.i = call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull %call.i.i, i32 noundef %add171.i) #11
  %call173.i = call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull %call.i295.i, i32 noundef %num_routes.0.lcssa.i) #11
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17, i32 4
  %161 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %card.i, align 4
  %call174.i = call i32 @snd_soc_dapm_new_widgets(ptr noundef %162) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %widget_name.i) #11
  store ptr %5, ptr @aops, align 4
  %163 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bus, align 4
  %call13 = call i32 @snd_hdac_acomp_register_notifier(ptr noundef %164, ptr noundef nonnull @aops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.81, i32 noundef %call13) #14
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @hdac_hdmi_present_sense_all_pins(ptr noundef %5, ptr noundef %3, i1 noundef zeroext true)
  %165 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %card.i, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %166, i32 0, i32 6
  %167 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %snd_card, align 4
  %card21 = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %3, i32 0, i32 2
  %169 = ptrtoint ptr %card21 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %168, ptr %card21, align 4
  %card22 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 4
  %170 = ptrtoint ptr %card22 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %card22, align 4
  %dev23 = getelementptr inbounds %struct.snd_soc_card, ptr %171, i32 0, i32 5
  %172 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev23, align 4
  %call25 = call ptr @device_link_add(ptr noundef %173, ptr noundef %5, i32 noundef 10) #11
  call void @pm_runtime_enable(ptr noundef %5) #11
  %call.i = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #11
  %call.i62 = call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end18, %create_fill_widget_route_map.exit.thread, %do.end
  %retval.0 = phi i32 [ %call13, %do.end18 ], [ 0, %if.end20 ], [ -5, %do.end ], [ %retval.0.i61.ph, %create_fill_widget_route_map.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_codec_remove(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bus = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %call2 = tail call i32 @snd_hdac_acomp_register_notifier(ptr noundef %7, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.96, i32 noundef %call2) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_acomp_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_cvt_output_widget_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kc, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %2 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dapm, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_cvt_output_widget_event.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_cvt_output_widget_event, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_cvt_output_widget_event.__UNIQUE_ID_ddebug245, ptr noundef %5, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, ptr noundef %9, i32 noundef %event) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pcm_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %7, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end
  %pcm.0.in.i = phi ptr [ %pcm_list.i, %do.end ], [ %pcm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %pcm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %pcm.0.i = load ptr, ptr %pcm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pcm.0.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %cvt2.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 3
  %11 = ptrtoint ptr %cvt2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cvt2.i, align 4
  %cmp3.i = icmp eq ptr %12, %1
  br i1 %cmp3.i, label %hdac_hdmi_get_pcm_from_cvt.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

hdac_hdmi_get_pcm_from_cvt.exit:                  ; preds = %for.body.i
  %tobool8.not = icmp eq ptr %pcm.0.i, null
  br i1 %tobool8.not, label %hdac_hdmi_get_pcm_from_cvt.exit.cleanup_crit_edge, label %if.end10

hdac_hdmi_get_pcm_from_cvt.exit.cleanup_crit_edge: ; preds = %hdac_hdmi_get_pcm_from_cvt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %hdac_hdmi_get_pcm_from_cvt.exit
  %13 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %event, label %if.end10.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb19
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %nid = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nid, align 8
  tail call fastcc void @hdac_hdmi_set_power_state(ptr noundef %5, i16 noundef zeroext %15, i32 noundef 0)
  %16 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nid, align 8
  %call12 = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %17, i32 noundef 0, i32 noundef 1805, i32 noundef 1) #11
  %18 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nid, align 8
  %call14 = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %19, i32 noundef 0, i32 noundef 1806, i32 noundef 0) #11
  %20 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nid, align 8
  %stream_tag = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 5
  %22 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stream_tag, align 4
  %call16 = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %21, i32 noundef 0, i32 noundef 1798, i32 noundef %23) #11
  %24 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nid, align 8
  %format = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0.i, i32 0, i32 7
  %26 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %format, align 4
  %call18 = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %25, i32 noundef 0, i32 noundef 512, i32 noundef %27) #11
  tail call fastcc void @hdac_hdmi_verify_connect_sel_all_pins(ptr noundef %5)
  br label %cleanup

sw.bb19:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %nid20 = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %nid20 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nid20, align 8
  %call21 = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %29, i32 noundef 0, i32 noundef 1798, i32 noundef 0) #11
  %30 = ptrtoint ptr %nid20 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nid20, align 8
  %call23 = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %31, i32 noundef 0, i32 noundef 512, i32 noundef 0) #11
  %32 = ptrtoint ptr %nid20 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nid20, align 8
  tail call fastcc void @hdac_hdmi_set_power_state(ptr noundef %5, i16 noundef zeroext %33, i32 noundef 3)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb19, %sw.bb, %if.end10.cleanup_crit_edge, %hdac_hdmi_get_pcm_from_cvt.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %hdac_hdmi_get_pcm_from_cvt.exit.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %sw.bb19 ], [ 0, %sw.bb ], [ -5, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_pin_output_widget_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kc, i32 noundef %event) #0 align 64 {
entry:
  %val.i.i50 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %2 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dapm, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_pin_output_widget_event.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_pin_output_widget_event, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_pin_output_widget_event.__UNIQUE_ID_ddebug244, ptr noundef %5, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.90, ptr noundef %7, i32 noundef %event) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %pcm_list.i = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %pcm_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %pcm.049.i = load ptr, ptr %pcm_list.i, align 4
  %cmp.not50.i = icmp eq ptr %pcm.049.i, %pcm_list.i
  br i1 %cmp.not50.i, label %do.end.cleanup_crit_edge, label %for.body.lr.ph.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %do.end
  %id14.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %1, i32 0, i32 1
  %pin.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc25.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pcm.051.i = phi ptr [ %pcm.049.i, %for.body.lr.ph.i ], [ %pcm.0.i, %for.inc25.i.for.body.i_crit_edge ]
  %port_list.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.051.i, i32 0, i32 2
  %11 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %port_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %port_list.i
  br i1 %cmp.i.not.i, label %for.body.i.for.inc25.i_crit_edge, label %for.body13.lr.ph.i

for.body.i.for.inc25.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i

for.body13.lr.ph.i:                               ; preds = %for.body.i
  %13 = ptrtoint ptr %id14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id14.i, align 4
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc.i.for.body13.i_crit_edge, %for.body13.lr.ph.i
  %p.048.i = phi ptr [ %12, %for.body13.lr.ph.i ], [ %p.0.i, %for.inc.i.for.body13.i_crit_edge ]
  %id.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %p.048.i, i32 0, i32 1
  %15 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp15.i = icmp eq i32 %16, %14
  br i1 %cmp15.i, label %land.lhs.true.i, label %for.body13.i.for.inc.i_crit_edge

for.body13.i.for.inc.i_crit_edge:                 ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body13.i
  %17 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pin.i, align 4
  %pin16.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %p.048.i, i32 0, i32 2
  %19 = ptrtoint ptr %pin16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pin16.i, align 4
  %cmp17.i = icmp eq ptr %18, %20
  br i1 %cmp17.i, label %hdac_hdmi_get_pcm.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body13.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %p.048.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %p.0.i = load ptr, ptr %p.048.i, align 4
  %cmp11.not.i = icmp eq ptr %p.0.i, %port_list.i
  br i1 %cmp11.not.i, label %for.inc.i.for.inc25.i_crit_edge, label %for.inc.i.for.body13.i_crit_edge

for.inc.i.for.body13.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13.i

for.inc.i.for.inc25.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %for.inc.i.for.inc25.i_crit_edge, %for.body.i.for.inc25.i_crit_edge
  %22 = ptrtoint ptr %pcm.051.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %pcm.0.i = load ptr, ptr %pcm.051.i, align 4
  %cmp.not.i = icmp eq ptr %pcm.0.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.inc25.i.cleanup_crit_edge, label %for.inc25.i.for.body.i_crit_edge

for.inc25.i.for.body.i_crit_edge:                 ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc25.i.cleanup_crit_edge:                    ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

hdac_hdmi_get_pcm.exit:                           ; preds = %land.lhs.true.i
  %tobool6.not = icmp eq ptr %pcm.051.i, null
  br i1 %tobool6.not, label %hdac_hdmi_get_pcm.exit.cleanup_crit_edge, label %if.end8

hdac_hdmi_get_pcm.exit.cleanup_crit_edge:         ; preds = %hdac_hdmi_get_pcm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %hdac_hdmi_get_pcm.exit
  %call9 = tail call fastcc i32 @hdac_hdmi_port_select_set(ptr noundef %5, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %23 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %event, label %if.end11.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb18
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  %24 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pin.i, align 4
  %nid = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nid, align 4
  tail call fastcc void @hdac_hdmi_set_power_state(ptr noundef %5, i16 noundef zeroext %27, i32 noundef 0)
  %28 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pin.i, align 4
  %nid13 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %nid13 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nid13, align 4
  %call14 = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %31, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #11
  %32 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pin.i, align 4
  %nid16 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %nid16 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nid16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %36 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %val.i.i, align 4, !annotation !252
  %call.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %5, i16 noundef zeroext %35, i32 noundef 9, ptr noundef nonnull %val.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %snd_hdac_read_parm.exit.thread.i, label %snd_hdac_read_parm.exit.i

snd_hdac_read_parm.exit.thread.i:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  br label %if.then.i

snd_hdac_read_parm.exit.i:                        ; preds = %sw.bb
  %37 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  %and.i = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %snd_hdac_read_parm.exit.i.hdac_hdmi_set_amp.exit_crit_edge, label %snd_hdac_read_parm.exit.i.if.then.i_crit_edge

snd_hdac_read_parm.exit.i.if.then.i_crit_edge:    ; preds = %snd_hdac_read_parm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

snd_hdac_read_parm.exit.i.hdac_hdmi_set_amp.exit_crit_edge: ; preds = %snd_hdac_read_parm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_set_amp.exit

if.then.i:                                        ; preds = %snd_hdac_read_parm.exit.i.if.then.i_crit_edge, %snd_hdac_read_parm.exit.thread.i
  %call1.i = call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %35, i32 noundef 0, i32 noundef 768, i32 noundef 45056) #11
  br label %hdac_hdmi_set_amp.exit

hdac_hdmi_set_amp.exit:                           ; preds = %if.then.i, %snd_hdac_read_parm.exit.i.hdac_hdmi_set_amp.exit_crit_edge
  %call17 = call fastcc i32 @hdac_hdmi_setup_audio_infoframe(ptr noundef %5, ptr noundef nonnull %pcm.051.i, ptr noundef %1)
  br label %cleanup

sw.bb18:                                          ; preds = %if.end11
  %39 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pin.i, align 4
  %nid20 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %nid20 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %nid20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i50) #11
  %43 = ptrtoint ptr %val.i.i50 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %val.i.i50, align 4, !annotation !252
  %call.i.i51 = call i32 @_snd_hdac_read_parm(ptr noundef %5, i16 noundef zeroext %42, i32 noundef 9, ptr noundef nonnull %val.i.i50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp.i.i52 = icmp slt i32 %call.i.i51, 0
  br i1 %cmp.i.i52, label %snd_hdac_read_parm.exit.thread.i53, label %snd_hdac_read_parm.exit.i56

snd_hdac_read_parm.exit.thread.i53:               ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i50) #11
  br label %if.then.i58

snd_hdac_read_parm.exit.i56:                      ; preds = %sw.bb18
  %44 = ptrtoint ptr %val.i.i50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val.i.i50, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i50) #11
  %and.i54 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %tobool.not.i55 = icmp eq i32 %and.i54, 0
  br i1 %tobool.not.i55, label %snd_hdac_read_parm.exit.i56.hdac_hdmi_set_amp.exit59_crit_edge, label %snd_hdac_read_parm.exit.i56.if.then.i58_crit_edge

snd_hdac_read_parm.exit.i56.if.then.i58_crit_edge: ; preds = %snd_hdac_read_parm.exit.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i58

snd_hdac_read_parm.exit.i56.hdac_hdmi_set_amp.exit59_crit_edge: ; preds = %snd_hdac_read_parm.exit.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_set_amp.exit59

if.then.i58:                                      ; preds = %snd_hdac_read_parm.exit.i56.if.then.i58_crit_edge, %snd_hdac_read_parm.exit.thread.i53
  %call1.i57 = call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %42, i32 noundef 0, i32 noundef 768, i32 noundef 45184) #11
  br label %hdac_hdmi_set_amp.exit59

hdac_hdmi_set_amp.exit59:                         ; preds = %if.then.i58, %snd_hdac_read_parm.exit.i56.hdac_hdmi_set_amp.exit59_crit_edge
  %46 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pin.i, align 4
  %nid22 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %nid22 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %nid22, align 4
  %call23 = call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %49, i32 noundef 0, i32 noundef 1799, i32 noundef 0) #11
  %50 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pin.i, align 4
  %nid25 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %nid25 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %nid25, align 4
  call fastcc void @hdac_hdmi_set_power_state(ptr noundef %5, i16 noundef zeroext %53, i32 noundef 3)
  br label %cleanup

cleanup:                                          ; preds = %hdac_hdmi_set_amp.exit59, %hdac_hdmi_set_amp.exit, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %hdac_hdmi_get_pcm.exit.cleanup_crit_edge, %for.inc25.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %hdac_hdmi_set_amp.exit ], [ -5, %hdac_hdmi_get_pcm.exit.cleanup_crit_edge ], [ -5, %if.end8.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %hdac_hdmi_set_amp.exit59 ], [ -5, %do.end.cleanup_crit_edge ], [ -5, %for.inc25.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdac_hdmi_add_pinmux_cvt_route(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %widgets, ptr nocapture noundef writeonly %route, i32 noundef %rindex) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %hdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_cvt = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %1, i32 0, i32 8
  %num_ports = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp32 = icmp sgt i32 %3, 0
  br i1 %cmp32, label %for.body.preheader, label %entry.for.end16_crit_edge

entry.for.end16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

for.body.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %num_cvt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cvt, align 4
  %add = add i32 %3, %5
  br label %for.body

for.bodythread-pre-split:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %inc13 = add i32 %mux_index.034, 1
  %6 = ptrtoint ptr %num_cvt to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %num_cvt, align 4
  br label %for.body

for.body:                                         ; preds = %for.bodythread-pre-split, %for.body.preheader
  %7 = phi i32 [ %.pr, %for.bodythread-pre-split ], [ %5, %for.body.preheader ]
  %i.036 = phi i32 [ %inc15, %for.bodythread-pre-split ], [ 0, %for.body.preheader ]
  %mux_index.034 = phi i32 [ %inc13, %for.bodythread-pre-split ], [ %add, %for.body.preheader ]
  %rindex.addr.033 = phi i32 [ %rindex.addr.1.lcssa, %for.bodythread-pre-split ], [ %rindex, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp429 = icmp sgt i32 %7, 0
  br i1 %cmp429, label %for.body5.lr.ph, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body5.lr.ph:                                  ; preds = %for.body
  %kcontrol_news = getelementptr %struct.snd_soc_dapm_widget, ptr %widgets, i32 %mux_index.034, i32 19
  %8 = ptrtoint ptr %kcontrol_news to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kcontrol_news, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %private_value, align 4
  %12 = inttoptr i32 %11 to ptr
  %name = getelementptr %struct.snd_soc_dapm_widget, ptr %widgets, i32 %mux_index.034, i32 1
  %texts = getelementptr inbounds %struct.soc_enum, ptr %12, i32 0, i32 5
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body5.lr.ph
  %j.031 = phi i32 [ 0, %for.body5.lr.ph ], [ %add8, %for.body5.for.body5_crit_edge ]
  %rindex.addr.130 = phi i32 [ %rindex.addr.033, %for.body5.lr.ph ], [ %inc, %for.body5.for.body5_crit_edge ]
  %arrayidx6 = getelementptr %struct.snd_soc_dapm_route, ptr %route, i32 %rindex.addr.130
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %15 = ptrtoint ptr %texts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %texts, align 4
  %add8 = add nuw nsw i32 %j.031, 1
  %arrayidx9 = getelementptr ptr, ptr %16, i32 %add8
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx9, align 4
  %name11 = getelementptr %struct.snd_soc_dapm_widget, ptr %widgets, i32 %j.031, i32 1
  %19 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name11, align 4
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %14, ptr %arrayidx6, align 4
  %source.i = getelementptr %struct.snd_soc_dapm_route, ptr %route, i32 %rindex.addr.130, i32 2
  %22 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %source.i, align 4
  %control2.i = getelementptr %struct.snd_soc_dapm_route, ptr %route, i32 %rindex.addr.130, i32 1
  %23 = ptrtoint ptr %control2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %18, ptr %control2.i, align 4
  %connected.i = getelementptr %struct.snd_soc_dapm_route, ptr %route, i32 %rindex.addr.130, i32 3
  %24 = ptrtoint ptr %connected.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %connected.i, align 4
  %inc = add i32 %rindex.addr.130, 1
  %25 = ptrtoint ptr %num_cvt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_cvt, align 4
  %cmp4 = icmp slt i32 %add8, %26
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.end_crit_edge

for.body5.for.end_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5

for.end:                                          ; preds = %for.body5.for.end_crit_edge, %for.body.for.end_crit_edge
  %rindex.addr.1.lcssa = phi i32 [ %rindex.addr.033, %for.body.for.end_crit_edge ], [ %inc, %for.body5.for.end_crit_edge ]
  %inc15 = add nuw nsw i32 %i.036, 1
  %27 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_ports, align 4
  %cmp = icmp slt i32 %inc15, %28
  br i1 %cmp, label %for.bodythread-pre-split, label %for.end.for.end16_crit_edge

for.end.for.end16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

for.end16:                                        ; preds = %for.end.for.end16_crit_edge, %entry.for.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdac_hdmi_set_power_state(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef %pwr_state) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !252
  %call.i = call i32 @_snd_hdac_read_parm(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef 9, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_hdac_read_parm.exit.thread, label %snd_hdac_read_parm.exit

snd_hdac_read_parm.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %if.then

snd_hdac_read_parm.exit:                          ; preds = %entry
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %snd_hdac_read_parm.exit.if.end9_crit_edge, label %snd_hdac_read_parm.exit.if.then_crit_edge

snd_hdac_read_parm.exit.if.then_crit_edge:        ; preds = %snd_hdac_read_parm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

snd_hdac_read_parm.exit.if.end9_crit_edge:        ; preds = %snd_hdac_read_parm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %snd_hdac_read_parm.exit.if.then_crit_edge, %snd_hdac_read_parm.exit.thread
  %call1 = call zeroext i1 @snd_hdac_check_power_state(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef %pwr_state) #11
  br i1 %call1, label %if.then.if.end9_crit_edge, label %for.body.preheader

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.body.preheader:                               ; preds = %if.then
  %call3 = call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1797, i32 noundef %pwr_state) #11
  %call4 = call i32 @snd_hdac_sync_power_state(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef %pwr_state) #11
  %and5 = and i32 %call4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %for.body.preheader.if.end9_crit_edge, label %for.cond

for.body.preheader.if.end9_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.cond:                                         ; preds = %for.body.preheader
  %call3.1 = call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1797, i32 noundef %pwr_state) #11
  %call4.1 = call i32 @snd_hdac_sync_power_state(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef %pwr_state) #11
  %and5.1 = and i32 %call4.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.1)
  %tobool6.not.1 = icmp eq i32 %and5.1, 0
  br i1 %tobool6.not.1, label %for.cond.if.end9_crit_edge, label %for.cond.1

for.cond.if.end9_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.cond.1:                                       ; preds = %for.cond
  %call3.2 = call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1797, i32 noundef %pwr_state) #11
  %call4.2 = call i32 @snd_hdac_sync_power_state(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef %pwr_state) #11
  %and5.2 = and i32 %call4.2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.2)
  %tobool6.not.2 = icmp eq i32 %and5.2, 0
  br i1 %tobool6.not.2, label %for.cond.1.if.end9_crit_edge, label %for.cond.2

for.cond.1.if.end9_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.cond.2:                                       ; preds = %for.cond.1
  %call3.3 = call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1797, i32 noundef %pwr_state) #11
  %call4.3 = call i32 @snd_hdac_sync_power_state(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef %pwr_state) #11
  %and5.3 = and i32 %call4.3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.3)
  %tobool6.not.3 = icmp eq i32 %and5.3, 0
  br i1 %tobool6.not.3, label %for.cond.2.if.end9_crit_edge, label %for.cond.3

for.cond.2.if.end9_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.cond.3:                                       ; preds = %for.cond.2
  %call3.4 = call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1797, i32 noundef %pwr_state) #11
  %call4.4 = call i32 @snd_hdac_sync_power_state(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef %pwr_state) #11
  %and5.4 = and i32 %call4.4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.4)
  %tobool6.not.4 = icmp eq i32 %and5.4, 0
  br i1 %tobool6.not.4, label %for.cond.3.if.end9_crit_edge, label %for.cond.4

for.cond.3.if.end9_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.cond.4:                                       ; preds = %for.cond.3
  %call3.5 = call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1797, i32 noundef %pwr_state) #11
  %call4.5 = call i32 @snd_hdac_sync_power_state(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef %pwr_state) #11
  %and5.5 = and i32 %call4.5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.5)
  %tobool6.not.5 = icmp eq i32 %and5.5, 0
  br i1 %tobool6.not.5, label %for.cond.4.if.end9_crit_edge, label %for.cond.5

for.cond.4.if.end9_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.cond.5:                                       ; preds = %for.cond.4
  %call3.6 = call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1797, i32 noundef %pwr_state) #11
  %call4.6 = call i32 @snd_hdac_sync_power_state(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef %pwr_state) #11
  %and5.6 = and i32 %call4.6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.6)
  %tobool6.not.6 = icmp eq i32 %and5.6, 0
  br i1 %tobool6.not.6, label %for.cond.5.if.end9_crit_edge, label %for.cond.6

for.cond.5.if.end9_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.cond.6:                                       ; preds = %for.cond.5
  %call3.7 = call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1797, i32 noundef %pwr_state) #11
  %call4.7 = call i32 @snd_hdac_sync_power_state(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef %pwr_state) #11
  %and5.7 = and i32 %call4.7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.7)
  %tobool6.not.7 = icmp eq i32 %and5.7, 0
  br i1 %tobool6.not.7, label %for.cond.6.if.end9_crit_edge, label %for.cond.7

for.cond.6.if.end9_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.cond.7:                                       ; preds = %for.cond.6
  %call3.8 = call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1797, i32 noundef %pwr_state) #11
  %call4.8 = call i32 @snd_hdac_sync_power_state(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef %pwr_state) #11
  %and5.8 = and i32 %call4.8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.8)
  %tobool6.not.8 = icmp eq i32 %and5.8, 0
  br i1 %tobool6.not.8, label %for.cond.7.if.end9_crit_edge, label %for.cond.8

for.cond.7.if.end9_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #13
  %call3.9 = call i32 @snd_hdac_codec_read(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1797, i32 noundef %pwr_state) #11
  %call4.9 = call i32 @snd_hdac_sync_power_state(ptr noundef %hdev, i16 noundef zeroext %nid, i32 noundef %pwr_state) #11
  br label %if.end9

if.end9:                                          ; preds = %for.cond.8, %for.cond.7.if.end9_crit_edge, %for.cond.6.if.end9_crit_edge, %for.cond.5.if.end9_crit_edge, %for.cond.4.if.end9_crit_edge, %for.cond.3.if.end9_crit_edge, %for.cond.2.if.end9_crit_edge, %for.cond.1.if.end9_crit_edge, %for.cond.if.end9_crit_edge, %for.body.preheader.if.end9_crit_edge, %if.then.if.end9_crit_edge, %snd_hdac_read_parm.exit.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdac_hdmi_verify_connect_sel_all_pins(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %hdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cvt_list = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cvt_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %cvt.036 = load ptr, ptr %cvt_list, align 4
  %cmp.not37 = icmp eq ptr %cvt.036, %cvt_list
  br i1 %cmp.not37, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %entry.for.body_crit_edge
  %cvt.039 = phi ptr [ %cvt.0, %if.end16.for.body_crit_edge ], [ %cvt.036, %entry.for.body_crit_edge ]
  %cvt_idx.038 = phi i32 [ %inc, %if.end16.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call2 = tail call fastcc ptr @hdac_hdmi_get_port_from_cvt(ptr noundef %hdev, ptr noundef %1, ptr noundef %cvt.039)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.if.end16_crit_edge, label %land.lhs.true

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %for.body
  %pin = getelementptr inbounds %struct.hdac_hdmi_port, ptr %call2, i32 0, i32 2
  %3 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pin, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %land.lhs.true.if.end16_crit_edge, label %if.then

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %nid = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nid, align 4
  %call5 = tail call i32 @snd_hdac_codec_write(ptr noundef %hdev, i16 noundef zeroext %6, i32 noundef 0, i32 noundef 1793, i32 noundef %cvt_idx.038) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_verify_connect_sel_all_pins.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_verify_connect_sel_all_pins, %if.then12)) #11
          to label %if.end16 [label %if.then12], !srcloc !250

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %cvt.039, i32 0, i32 2
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %9 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pin, align 4
  %nid15 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %nid15 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nid15, align 4
  %conv = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_verify_connect_sel_all_pins.__UNIQUE_ID_ddebug243, ptr noundef %hdev, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88, ptr noundef %8, i32 noundef %conv, i32 noundef %cvt_idx.038) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then, %land.lhs.true.if.end16_crit_edge, %for.body.if.end16_crit_edge
  %inc = add i32 %cvt_idx.038, 1
  %13 = ptrtoint ptr %cvt.039 to i32
  call void @__asan_load4_noabort(i32 %13)
  %cvt.0 = load ptr, ptr %cvt.039, align 4
  %cmp.not = icmp eq ptr %cvt.0, %cvt_list
  br i1 %cmp.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_hdac_check_power_state(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_sync_power_state(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_set_pin_port_mux(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #11
  %dapm1 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %dapm1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dapm1, align 4
  %priv = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  %texts = getelementptr inbounds %struct.soc_enum, ptr %2, i32 0, i32 5
  %11 = ptrtoint ptr %texts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %texts, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 8
  %arrayidx4 = getelementptr ptr, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx4, align 4
  %call5 = tail call i32 @snd_soc_dapm_put_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp6 = icmp eq ptr %6, null
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %pin_mutex = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %10, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %pin_mutex, i32 noundef 0) #11
  %pcm_list = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %10, i32 0, i32 6
  %17 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %pcm.0143 = load ptr, ptr %pcm_list, align 4
  %cmp13.not144 = icmp eq ptr %pcm.0143, %pcm_list
  br i1 %cmp13.not144, label %if.end8.for.cond59.preheader_crit_edge, label %for.body.lr.ph

if.end8.for.cond59.preheader_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond59.preheader

for.body.lr.ph:                                   ; preds = %if.end8
  %is_connect2.i.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %6, i32 0, i32 7
  %dapm1.i.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %6, i32 0, i32 8
  %jack_pin2.i.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %6, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  br label %for.body

for.cond59.preheader:                             ; preds = %for.inc47.for.cond59.preheader_crit_edge, %if.end8.for.cond59.preheader_crit_edge
  %18 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %pcm.1146 = load ptr, ptr %pcm_list, align 4
  %cmp62.not147 = icmp eq ptr %pcm.1146, %pcm_list
  br i1 %cmp62.not147, label %for.cond59.preheader.cleanup.sink.split_crit_edge, label %for.body64.lr.ph

for.cond59.preheader.cleanup.sink.split_crit_edge: ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.body64.lr.ph:                                 ; preds = %for.cond59.preheader
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %eld = getelementptr inbounds %struct.hdac_hdmi_port, ptr %6, i32 0, i32 5
  %eld_valid = getelementptr inbounds %struct.hdac_hdmi_port, ptr %6, i32 0, i32 5, i32 1
  br label %for.body64

for.body:                                         ; preds = %for.inc47.for.body_crit_edge, %for.body.lr.ph
  %pcm.0145 = phi ptr [ %pcm.0143, %for.body.lr.ph ], [ %pcm.0, %for.inc47.for.body_crit_edge ]
  %port_list = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0145, i32 0, i32 2
  %19 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %port_list, align 4
  %cmp.i.not = icmp eq ptr %20, %port_list
  br i1 %cmp.i.not, label %for.body.for.inc47_crit_edge, label %for.cond27.preheader

for.body.for.inc47_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc47

for.cond27.preheader:                             ; preds = %for.body
  %jack_event.i.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0145, i32 0, i32 11
  %jack16.i.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.0145, i32 0, i32 4
  br label %for.body32

for.body32:                                       ; preds = %for.inc.for.body32_crit_edge, %for.cond27.preheader
  %p.0140 = phi ptr [ %20, %for.cond27.preheader ], [ %p_next.0142, %for.inc.for.body32_crit_edge ]
  %21 = ptrtoint ptr %p.0140 to i32
  call void @__asan_load4_noabort(i32 %21)
  %p_next.0142 = load ptr, ptr %p.0140, align 4
  %cmp33 = icmp eq ptr %p.0140, %6
  br i1 %cmp33, label %if.then39, label %for.body32.for.inc_crit_edge

for.body32.for.inc_crit_edge:                     ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then39:                                        ; preds = %for.body32
  %22 = ptrtoint ptr %is_connect2.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %is_connect2.i.i, align 4
  %23 = ptrtoint ptr %jack_event.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %jack_event.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp14.i.i = icmp eq i32 %24, 1
  br i1 %cmp14.i.i, label %if.then15.i.i, label %if.then39.if.end17.i.i_crit_edge

if.then39.if.end17.i.i_crit_edge:                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i.i

if.then15.i.i:                                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %jack16.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %jack16.i.i, align 4
  tail call void @snd_soc_jack_report(ptr noundef %26, i32 noundef 0, i32 noundef 20) #11
  %27 = ptrtoint ptr %jack_event.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr.i.i = load i32, ptr %jack_event.i.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then15.i.i, %if.then39.if.end17.i.i_crit_edge
  %28 = phi i32 [ %.pr.i.i, %if.then15.i.i ], [ %24, %if.then39.if.end17.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp19.i.i = icmp sgt i32 %28, 0
  br i1 %cmp19.i.i, label %if.then20.i.i, label %if.end17.i.i.hdac_hdmi_jack_report.exit.i_crit_edge

if.end17.i.i.hdac_hdmi_jack_report.exit.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_jack_report.exit.i

if.then20.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i.i = add nsw i32 %28, -1
  %29 = ptrtoint ptr %jack_event.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dec.i.i, ptr %jack_event.i.i, align 4
  br label %hdac_hdmi_jack_report.exit.i

hdac_hdmi_jack_report.exit.i:                     ; preds = %if.then20.i.i, %if.end17.i.i.hdac_hdmi_jack_report.exit.i_crit_edge
  %30 = ptrtoint ptr %is_connect2.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_connect2.i.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  %32 = ptrtoint ptr %dapm1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dapm1.i.i, align 4
  %34 = ptrtoint ptr %jack_pin2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %jack_pin2.i.i, align 4
  br i1 %tobool.not.i.i, label %if.else.i3.i, label %if.then.i2.i

if.then.i2.i:                                     ; preds = %hdac_hdmi_jack_report.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 @snd_soc_dapm_enable_pin(ptr noundef %33, ptr noundef %35) #11
  br label %hdac_hdmi_jack_report_sync.exit

if.else.i3.i:                                     ; preds = %hdac_hdmi_jack_report.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %33, ptr noundef %35) #11
  br label %hdac_hdmi_jack_report_sync.exit

hdac_hdmi_jack_report_sync.exit:                  ; preds = %if.else.i3.i, %if.then.i2.i
  %36 = ptrtoint ptr %dapm1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dapm1.i.i, align 4
  %call5.i.i = tail call i32 @snd_soc_dapm_sync(ptr noundef %37) #11
  %call.i.i133 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %6) #11
  br i1 %call.i.i133, label %if.end.i.i, label %hdac_hdmi_jack_report_sync.exit.list_del.exit_crit_edge

hdac_hdmi_jack_report_sync.exit.list_del.exit_crit_edge: ; preds = %hdac_hdmi_jack_report_sync.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %hdac_hdmi_jack_report_sync.exit
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %hdac_hdmi_jack_report_sync.exit.list_del.exit_crit_edge
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body32.for.inc_crit_edge
  %cmp30.not = icmp eq ptr %p_next.0142, %port_list
  br i1 %cmp30.not, label %for.inc.for.inc47_crit_edge, label %for.inc.for.body32_crit_edge

for.inc.for.body32_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body32

for.inc.for.inc47_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc47

for.inc47:                                        ; preds = %for.inc.for.inc47_crit_edge, %for.body.for.inc47_crit_edge
  %46 = ptrtoint ptr %pcm.0145 to i32
  call void @__asan_load4_noabort(i32 %46)
  %pcm.0 = load ptr, ptr %pcm.0145, align 4
  %cmp13.not = icmp eq ptr %pcm.0, %pcm_list
  br i1 %cmp13.not, label %for.inc47.for.cond59.preheader_crit_edge, label %for.inc47.for.body_crit_edge

for.inc47.for.body_crit_edge:                     ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc47.for.cond59.preheader_crit_edge:         ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond59.preheader

for.body64:                                       ; preds = %for.inc78.for.body64_crit_edge, %for.body64.lr.ph
  %pcm.1148 = phi ptr [ %pcm.1146, %for.body64.lr.ph ], [ %pcm.1, %for.inc78.for.body64_crit_edge ]
  %cvt = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.1148, i32 0, i32 3
  %47 = ptrtoint ptr %cvt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cvt, align 4
  %name = getelementptr inbounds %struct.hdac_hdmi_cvt, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name, align 4
  %call65 = tail call i32 @strcmp(ptr noundef %16, ptr noundef %50) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %for.body64.for.inc78_crit_edge

for.body64.for.inc78_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc78

if.then67:                                        ; preds = %for.body64
  %port_list69 = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.1148, i32 0, i32 2
  %prev.i134 = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm.1148, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %prev.i134 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i134, align 4
  %call.i.i135 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %6, ptr noundef %52, ptr noundef %port_list69) #11
  br i1 %call.i.i135, label %if.end.i.i136, label %if.then67.list_add_tail.exit_crit_edge

if.then67.list_add_tail.exit_crit_edge:           ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i136:                                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %prev.i134 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %6, ptr %prev.i134, align 4
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %port_list69, ptr %6, align 4
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %6, ptr %52, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i136, %if.then67.list_add_tail.exit_crit_edge
  %57 = ptrtoint ptr %eld to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %eld, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool70.not = icmp eq i8 %58, 0
  br i1 %tobool70.not, label %list_add_tail.exit.for.inc78_crit_edge, label %land.lhs.true71

list_add_tail.exit.for.inc78_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc78

land.lhs.true71:                                  ; preds = %list_add_tail.exit
  %59 = ptrtoint ptr %eld_valid to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %eld_valid, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool73.not = icmp eq i8 %60, 0
  br i1 %tobool73.not, label %land.lhs.true71.for.inc78_crit_edge, label %if.then74

land.lhs.true71.for.inc78_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc78

if.then74:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hdac_hdmi_jack_report_sync(ptr noundef %pcm.1148, ptr noundef nonnull %6, i1 noundef zeroext true)
  br label %cleanup.sink.split

for.inc78:                                        ; preds = %land.lhs.true71.for.inc78_crit_edge, %list_add_tail.exit.for.inc78_crit_edge, %for.body64.for.inc78_crit_edge
  %61 = ptrtoint ptr %pcm.1148 to i32
  call void @__asan_load4_noabort(i32 %61)
  %pcm.1 = load ptr, ptr %pcm.1148, align 4
  %cmp62.not = icmp eq ptr %pcm.1, %pcm_list
  br i1 %cmp62.not, label %for.inc78.cleanup.sink.split_crit_edge, label %for.inc78.for.body64_crit_edge

for.inc78.for.body64_crit_edge:                   ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body64

for.inc78.cleanup.sink.split_crit_edge:           ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc78.cleanup.sink.split_crit_edge, %if.then74, %for.cond59.preheader.cleanup.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef %pin_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdac_hdmi_pin_mux_widget_event(ptr nocapture noundef readonly %w, ptr noundef %kc, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %2 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dapm, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_pin_mux_widget_event.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_pin_mux_widget_event, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_pin_mux_widget_event.__UNIQUE_ID_ddebug246, ptr noundef %5, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.93, ptr noundef %7, i32 noundef %event) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %kc, null
  br i1 %tobool5.not, label %if.then6, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %8 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kcontrols, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  %kc.addr.0 = phi ptr [ %kc, %do.end.if.end7_crit_edge ], [ %11, %if.then6 ]
  %call8 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %kc.addr.0) #11
  %call9 = tail call fastcc i32 @hdac_hdmi_port_select_set(ptr noundef %5, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp12 = icmp sgt i32 %call8, 0
  br i1 %cmp12, label %if.then13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %pin = getelementptr inbounds %struct.hdac_hdmi_port, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pin, align 4
  %nid = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nid, align 4
  %sub = add nsw i32 %call8, -1
  %call14 = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %15, i32 noundef 0, i32 noundef 1793, i32 noundef %sub) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end7.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_widget(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdac_hdmi_jack_report_sync(ptr nocapture noundef %pcm, ptr nocapture noundef %port, i1 noundef zeroext %is_connect) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool.i = zext i1 %is_connect to i8
  %pin.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin.i, align 4
  %hdev1.i = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i, align 4
  %is_connect2.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 7
  %4 = ptrtoint ptr %is_connect2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool.i, ptr %is_connect2.i, align 4
  %jack_event.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm, i32 0, i32 11
  %5 = ptrtoint ptr %jack_event.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %jack_event.i, align 4
  br i1 %is_connect, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %do.body.i, label %if.then.i.if.end11.i_crit_edge

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

do.body.i:                                        ; preds = %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_jack_report.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_jack_report_sync, %if.then10.i)) #11
          to label %do.end.i [label %if.then10.i], !srcloc !250

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %pcm_id.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm, i32 0, i32 1
  %7 = ptrtoint ptr %pcm_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pcm_id.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_jack_report.__UNIQUE_ID_ddebug239, ptr noundef %3, ptr noundef nonnull @.str.30, i32 noundef %8) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i
  %jack.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm, i32 0, i32 4
  %9 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %jack.i, align 4
  tail call void @snd_soc_jack_report(ptr noundef %10, i32 noundef 20, i32 noundef 20) #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.then.i.if.end11.i_crit_edge
  %11 = ptrtoint ptr %jack_event.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %jack_event.i, align 4
  %inc.i = add i32 %12, 1
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp14.i = icmp eq i32 %6, 1
  br i1 %cmp14.i, label %if.then15.i, label %if.else.i.if.end17.i_crit_edge

if.else.i.if.end17.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %jack16.i = getelementptr inbounds %struct.hdac_hdmi_pcm, ptr %pcm, i32 0, i32 4
  %13 = ptrtoint ptr %jack16.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %jack16.i, align 4
  tail call void @snd_soc_jack_report(ptr noundef %14, i32 noundef 0, i32 noundef 20) #11
  %15 = ptrtoint ptr %jack_event.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load i32, ptr %jack_event.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.else.i.if.end17.i_crit_edge
  %16 = phi i32 [ %.pr.i, %if.then15.i ], [ %6, %if.else.i.if.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp19.i = icmp sgt i32 %16, 0
  br i1 %cmp19.i, label %if.then20.i, label %if.end17.i.hdac_hdmi_jack_report.exit_crit_edge

if.end17.i.hdac_hdmi_jack_report.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdac_hdmi_jack_report.exit

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i = add nsw i32 %16, -1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.then20.i, %if.end11.i
  %dec.sink.i = phi i32 [ %dec.i, %if.then20.i ], [ %inc.i, %if.end11.i ]
  %17 = ptrtoint ptr %jack_event.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dec.sink.i, ptr %jack_event.i, align 4
  br label %hdac_hdmi_jack_report.exit

hdac_hdmi_jack_report.exit:                       ; preds = %if.end23.sink.split.i, %if.end17.i.hdac_hdmi_jack_report.exit_crit_edge
  %18 = ptrtoint ptr %is_connect2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_connect2.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %dapm1.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 8
  %20 = ptrtoint ptr %dapm1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dapm1.i, align 4
  %jack_pin2.i = getelementptr inbounds %struct.hdac_hdmi_port, ptr %port, i32 0, i32 6
  %22 = ptrtoint ptr %jack_pin2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %jack_pin2.i, align 4
  br i1 %tobool.not.i, label %if.else.i3, label %if.then.i2

if.then.i2:                                       ; preds = %hdac_hdmi_jack_report.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @snd_soc_dapm_enable_pin(ptr noundef %21, ptr noundef %23) #11
  br label %hdac_hdmi_port_dapm_update.exit

if.else.i3:                                       ; preds = %hdac_hdmi_jack_report.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %21, ptr noundef %23) #11
  br label %hdac_hdmi_port_dapm_update.exit

hdac_hdmi_port_dapm_update.exit:                  ; preds = %if.else.i3, %if.then.i2
  %24 = ptrtoint ptr %dapm1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dapm1.i, align 4
  %call5.i = tail call i32 @snd_soc_dapm_sync(ptr noundef %25) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dapm_kcontrol_get_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdac_hdmi_eld_notify_cb(ptr noundef %aptr, i32 noundef %port, i32 noundef %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %aptr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %component1 = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component1, align 4
  %4 = trunc i32 %port to i16
  %conv = add i16 %4, 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdac_hdmi_eld_notify_cb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdac_hdmi_eld_notify_cb, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv6 = zext i16 %conv to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdac_hdmi_eld_notify_cb.__UNIQUE_ID_ddebug254, ptr noundef %aptr, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94, i32 noundef %conv6, i32 noundef %pipe) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %snd_card, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 38
  %9 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %power_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %in_pm = getelementptr inbounds %struct.hdac_device, ptr %aptr, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_pm, i32 noundef 4) #11
  %11 = ptrtoint ptr %in_pm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %in_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %pin_list = getelementptr inbounds %struct.hdac_hdmi_priv, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %pin_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %pin.084 = load ptr, ptr %pin_list, align 4
  %cmp17.not85 = icmp eq ptr %pin.084, %pin_list
  br i1 %cmp17.not85, label %if.end14.cleanup_crit_edge, label %for.body.lr.ph

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pipe)
  %cmp27 = icmp eq i32 %pipe, -1
  br label %for.body

for.body:                                         ; preds = %for.inc47.for.body_crit_edge, %for.body.lr.ph
  %pin.087 = phi ptr [ %pin.084, %for.body.lr.ph ], [ %pin.0, %for.inc47.for.body_crit_edge ]
  %hport.086 = phi ptr [ null, %for.body.lr.ph ], [ %hport.2, %for.inc47.for.body_crit_edge ]
  %nid = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.087, i32 0, i32 1
  %14 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nid, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %conv)
  %cmp23.not = icmp eq i16 %15, %conv
  br i1 %cmp23.not, label %if.end26, label %for.body.for.inc47_crit_edge

for.body.for.inc47_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc47

if.end26:                                         ; preds = %for.body
  br i1 %cmp27, label %if.then29, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %if.end26
  %num_ports = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.087, i32 0, i32 4
  %16 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3182 = icmp sgt i32 %17, 0
  br i1 %cmp3182, label %for.body33.lr.ph, label %for.cond30.preheader.if.end43_crit_edge

for.cond30.preheader.if.end43_crit_edge:          ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

for.body33.lr.ph:                                 ; preds = %for.cond30.preheader
  %mst_capable34 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.087, i32 0, i32 2
  %ports35 = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.087, i32 0, i32 3
  br label %for.body33

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %mst_capable = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.087, i32 0, i32 2
  %18 = ptrtoint ptr %mst_capable to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %mst_capable, align 2
  %ports = getelementptr inbounds %struct.hdac_hdmi_pin, ptr %pin.087, i32 0, i32 3
  %19 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ports, align 4
  br label %if.end43

for.body33:                                       ; preds = %for.inc.for.body33_crit_edge, %for.body33.lr.ph
  %i.083 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc, %for.inc.for.body33_crit_edge ]
  %21 = ptrtoint ptr %mst_capable34 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %mst_capable34, align 2
  %22 = ptrtoint ptr %ports35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ports35, align 4
  %id = getelementptr %struct.hdac_hdmi_port, ptr %23, i32 %i.083, i32 1
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %pipe)
  %cmp37 = icmp eq i32 %25, %pipe
  br i1 %cmp37, label %if.then39, label %for.inc

if.then39:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx36 = getelementptr %struct.hdac_hdmi_port, ptr %23, i32 %i.083
  br label %if.end43

for.inc:                                          ; preds = %for.body33
  %inc = add nuw nsw i32 %i.083, 1
  %26 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_ports, align 4
  %cmp31 = icmp slt i32 %inc, %27
  br i1 %cmp31, label %for.inc.for.body33_crit_edge, label %for.inc.if.end43_crit_edge

for.inc.if.end43_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

for.inc.for.body33_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body33

if.end43:                                         ; preds = %for.inc.if.end43_crit_edge, %if.then39, %if.then29, %for.cond30.preheader.if.end43_crit_edge
  %hport.1 = phi ptr [ %20, %if.then29 ], [ %arrayidx36, %if.then39 ], [ %hport.086, %for.cond30.preheader.if.end43_crit_edge ], [ %hport.086, %for.inc.if.end43_crit_edge ]
  %tobool44.not = icmp eq ptr %hport.1, null
  br i1 %tobool44.not, label %if.end43.for.inc47_crit_edge, label %if.then45

if.end43.for.inc47_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc47

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @hdac_hdmi_present_sense(ptr noundef %pin.087, ptr noundef nonnull %hport.1)
  br label %for.inc47

for.inc47:                                        ; preds = %if.then45, %if.end43.for.inc47_crit_edge, %for.body.for.inc47_crit_edge
  %hport.2 = phi ptr [ %hport.086, %for.body.for.inc47_crit_edge ], [ %hport.1, %if.then45 ], [ null, %if.end43.for.inc47_crit_edge ]
  %28 = ptrtoint ptr %pin.087 to i32
  call void @__asan_load4_noabort(i32 %28)
  %pin.0 = load ptr, ptr %pin.087, align 4
  %cmp17.not = icmp eq ptr %pin.0, %pin_list
  br i1 %cmp17.not, label %for.inc47.cleanup_crit_edge, label %for.inc47.for.body_crit_edge

for.inc47.for.body_crit_edge:                     ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc47.cleanup_crit_edge:                      ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc47.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hdac_hdmi_pin2port(ptr nocapture noundef readnone %aptr, i32 noundef %pin) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %pin, -4
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_ext_driver_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !49, !51, !53, !54, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !117, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !133, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !153, !154, !155, !156, !158, !159, !161, !163, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !199, !200, !201, !203, !204, !205, !207, !209, !211, !213, !214, !215, !217, !218, !219, !221, !222, !224, !226, !228, !229, !231, !233, !234, !235, !237, !238, !239}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1832, i32 37}
!2 = !{ptr @__ksymtab_hdac_hdmi_jack_port_init, !3, !"__ksymtab_hdac_hdmi_jack_port_init", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1880, i32 1}
!4 = !{ptr @hdac_hdmi_jack_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1903, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1909, i32 4}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hdac_hdmi_jack_init._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @hdac_hdmi_jack_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1919, i32 3}
!17 = !{ptr @hdac_hdmi_jack_init._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @hdac_hdmi_jack_init._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_hdac_hdmi_jack_init, !20, !"__ksymtab_hdac_hdmi_jack_init", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1929, i32 1}
!21 = !{ptr @__initcall__kmod_snd_soc_hdac_hdmi__257_2337_hdmi_init6, !22, !"__initcall__kmod_snd_soc_hdac_hdmi__257_2337_hdmi_init6", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2337, i32 1}
!23 = !{ptr @__exitcall_hdmi_exit, !24, !"__exitcall_hdmi_exit", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2338, i32 1}
!25 = !{ptr @__UNIQUE_ID_file258, !26, !"__UNIQUE_ID_file258", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2340, i32 1}
!27 = !{ptr @__UNIQUE_ID_license259, !26, !"__UNIQUE_ID_license259", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_description260, !29, !"__UNIQUE_ID_description260", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2341, i32 1}
!30 = !{ptr @__UNIQUE_ID_author261, !31, !"__UNIQUE_ID_author261", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2342, i32 1}
!32 = !{ptr @__UNIQUE_ID_author262, !33, !"__UNIQUE_ID_author262", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2343, i32 1}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1788, i32 39}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1527, i32 11}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1441, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hdac_hdmi_eld_ctl_info.__UNIQUE_ID_ddebug250, !39, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1447, i32 3}
!45 = !{ptr @hdac_hdmi_eld_ctl_info.__UNIQUE_ID_ddebug251, !44, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1481, i32 3}
!48 = !{ptr @hdac_hdmi_eld_ctl_get.__UNIQUE_ID_ddebug252, !47, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!49 = !{ptr @hdac_hdmi_eld_ctl_get.__UNIQUE_ID_ddebug253, !50, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1487, i32 3}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1504, i32 4}
!53 = !{ptr @hdac_hdmi_eld_ctl_get._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @hdac_hdmi_eld_ctl_get._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1506, i32 4}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2319, i32 13}
!59 = !{ptr @hdmi_driver, !60, !"hdmi_driver", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2317, i32 27}
!61 = !{ptr @hdac_hdmi_pm, !62, !"hdac_hdmi_pm", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2299, i32 32}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1295, i32 3}
!65 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @hdac_hdmi_present_sense._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @hdac_hdmi_present_sense._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1318, i32 3}
!70 = !{ptr @hdac_hdmi_present_sense.__UNIQUE_ID_ddebug249, !69, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!71 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1228, i32 3}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @hdac_hdmi_parse_eld._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @hdac_hdmi_parse_eld._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1236, i32 3}
!79 = !{ptr @hdac_hdmi_parse_eld._entry.26, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @hdac_hdmi_parse_eld._entry_ptr.28, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 170, i32 4}
!83 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @hdac_hdmi_jack_report.__UNIQUE_ID_ddebug239, !82, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2232, i32 2}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @hdac_hdmi_runtime_suspend.__UNIQUE_ID_ddebug255, !86, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2250, i32 3}
!91 = !{ptr @hdac_hdmi_runtime_suspend._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @hdac_hdmi_runtime_suspend._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2268, i32 2}
!95 = !{ptr @hdac_hdmi_runtime_resume.__UNIQUE_ID_ddebug256, !94, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!96 = !{ptr @hdac_hdmi_runtime_resume._entry, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2276, i32 3}
!98 = !{ptr @hdac_hdmi_runtime_resume._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2305, i32 2}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2306, i32 2}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2307, i32 2}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2308, i32 2}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2310, i32 2}
!109 = !{ptr @hdmi_list, !110, !"hdmi_list", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2304, i32 35}
!111 = !{ptr @intel_glk_drv_data, !112, !"intel_glk_drv_data", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2129, i32 34}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2150, i32 3}
!115 = !{ptr @hdac_hdmi_dev_probe._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @hdac_hdmi_dev_probe._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @hdac_hdmi_dev_probe.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2181, i32 2}
!119 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2191, i32 3}
!122 = !{ptr @hdac_hdmi_dev_probe._entry.42, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @hdac_hdmi_dev_probe._entry_ptr.44, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 409, i32 3}
!126 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @hdac_hdmi_setup_audio_infoframe._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @hdac_hdmi_setup_audio_infoframe._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @intel_drv_data, !130, !"intel_drv_data", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2133, i32 34}
!131 = !{ptr @.str.47, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1636, i32 3}
!133 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @hdac_hdmi_parse_and_map_nid._entry, !132, !"_entry", i1 false, i1 false}
!136 = !{ptr @hdac_hdmi_parse_and_map_nid._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1668, i32 3}
!139 = !{ptr @hdac_hdmi_parse_and_map_nid._entry.50, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @hdac_hdmi_parse_and_map_nid._entry_ptr.52, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1674, i32 3}
!143 = !{ptr @hdac_hdmi_parse_and_map_nid._entry.53, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @hdac_hdmi_parse_and_map_nid._entry_ptr.55, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1682, i32 3}
!147 = !{ptr @hdac_hdmi_parse_and_map_nid._entry.56, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @hdac_hdmi_parse_and_map_nid._entry_ptr.58, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1208, i32 16}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 670, i32 3}
!153 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @hdac_hdmi_query_cvt_params._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @hdac_hdmi_query_cvt_params._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @hdac_hdmi_add_ports.__key, !157, !"__key", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1351, i32 3}
!158 = !{ptr @.str.62, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1585, i32 21}
!161 = !{ptr @.str.64, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1592, i32 32}
!163 = !{ptr @hdmi_dai_ops, !164, !"hdmi_dai_ops", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1543, i32 37}
!165 = !{ptr @.str.65, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 448, i32 2}
!167 = !{ptr @.str.66, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @hdac_hdmi_set_tdm_slot.__UNIQUE_ID_ddebug241, !166, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!169 = !{ptr @.str.67, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 607, i32 3}
!171 = !{ptr @.str.68, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @hdac_hdmi_pcm_open._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @hdac_hdmi_pcm_open._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 489, i32 3}
!176 = !{ptr @.str.70, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @hdac_hdmi_query_port_connlist._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @hdac_hdmi_query_port_connlist._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.72, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 501, i32 3}
!181 = !{ptr @hdac_hdmi_query_port_connlist._entry.71, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @hdac_hdmi_query_port_connlist._entry_ptr.73, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.74, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 505, i32 2}
!185 = !{ptr @hdac_hdmi_query_port_connlist.__UNIQUE_ID_ddebug242, !184, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!186 = !{ptr @.str.75, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 277, i32 2}
!188 = !{ptr @.str.76, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @hdac_hdmi_port_select_set.__UNIQUE_ID_ddebug240, !187, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!190 = !{ptr @.str.77, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1188, i32 4}
!192 = !{ptr @.str.78, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @hdac_hdmi_init_dai_map._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @hdac_hdmi_init_dai_map._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @hdmi_hda_codec, !196, !"hdmi_hda_codec", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2056, i32 46}
!197 = !{ptr @.str.79, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1972, i32 3}
!199 = !{ptr @hdmi_codec_probe._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @hdmi_codec_probe._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.81, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1985, i32 3}
!203 = !{ptr @hdmi_codec_probe._entry.80, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @hdmi_codec_probe._entry_ptr.82, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.83, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1090, i32 24}
!207 = !{ptr @.str.84, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1103, i32 25}
!209 = !{ptr @.str.85, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1121, i32 25}
!211 = !{ptr @.str.86, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 815, i32 2}
!213 = !{ptr @.str.87, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @hdac_hdmi_cvt_output_widget_event.__UNIQUE_ID_ddebug245, !212, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!215 = !{ptr @.str.88, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 571, i32 4}
!217 = !{ptr @.str.89, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @hdac_hdmi_verify_connect_sel_all_pins.__UNIQUE_ID_ddebug243, !216, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!219 = !{ptr @.str.90, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 769, i32 2}
!221 = !{ptr @hdac_hdmi_pin_output_widget_event.__UNIQUE_ID_ddebug244, !220, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!222 = !{ptr @.str.91, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 980, i32 31}
!224 = !{ptr @.str.92, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 999, i32 21}
!226 = !{ptr @.str.93, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 869, i32 2}
!228 = !{ptr @hdac_hdmi_pin_mux_widget_event.__UNIQUE_ID_ddebug246, !227, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!229 = !{ptr @aops, !230, !"aops", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1745, i32 45}
!231 = !{ptr @.str.94, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 1704, i32 2}
!233 = !{ptr @.str.95, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @hdac_hdmi_eld_notify_cb.__UNIQUE_ID_ddebug254, !232, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!235 = !{ptr @.str.96, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/hdac_hdmi.c", i32 2023, i32 3}
!237 = !{ptr @.str.97, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @hdmi_codec_remove._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @hdmi_codec_remove._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{!"branch_weights", i32 1, i32 2000}
!250 = !{i64 2148814472, i64 2148814477, i64 2148814490, i64 2148814534, i64 2148814568, i64 2148814589}
!251 = !{i8 0, i8 2}
!252 = !{!"auto-init"}
!253 = !{i32 0, i32 33}
