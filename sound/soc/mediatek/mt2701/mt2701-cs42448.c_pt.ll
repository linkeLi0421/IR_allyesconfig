; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt2701/mt2701-cs42448.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt2701/mt2701-cs42448.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.mt2701_cs42448_private = type { i32, i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_mt2701_cs42448__238_433_mt2701_cs42448_machine_init6 = internal global ptr @mt2701_cs42448_machine_init, section ".initcall6.init", align 4
@mt2701_cs42448_machine = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt2701_cs42448_machine_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt2701_cs42448_machine_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt2701_cs42448_machine_exit = internal global ptr @mt2701_cs42448_machine_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [66 x i8] c"mt2701_cs42448.description=MT2701 CS42448 ALSA SoC machine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [53 x i8] c"mt2701_cs42448.author=Ir Lian <ir.lian@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [61 x i8] c"mt2701_cs42448.file=sound/soc/mediatek/mt2701/mt2701-cs42448\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [30 x i8] c"mt2701_cs42448.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [45 x i8] c"mt2701_cs42448.alias=mt2701 cs42448 soc card\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt2701-cs42448\00", [17 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-cs42448-machine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt2701_cs42448_soc_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt2701_cs42448_dai_links, i32 10, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr @mt2701_cs42448_controls, i32 6, ptr @mt2701_cs42448_asoc_card_dapm_widgets, i32 5, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,platform\00", [46 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Property 'platform' missing or invalid\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt2701_cs42448_machine_probe\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sound/soc/mediatek/mt2701/mt2701-cs42448.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_probe._entry_ptr = internal global ptr @mt2701_cs42448_machine_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,audio-codec\00", [43 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 360, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Property 'audio-codec' missing or invalid\0A\00", [53 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_probe._entry_ptr.10 = internal global ptr @mt2701_cs42448_machine_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mediatek,audio-codec-bt-mrg\00", [36 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 373, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Property 'audio-codec-bt-mrg' missing or invalid\0A\00", [46 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_probe._entry_ptr.14 = internal global ptr @mt2701_cs42448_machine_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio-routing\00", [18 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 381, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to parse audio-routing: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_probe._entry_ptr.18 = internal global ptr @mt2701_cs42448_machine_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2s1-in-sel-gpio1\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i2s1_in_mux_gpio_sel_1\00", [41 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 392, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s devm_gpio_request fail %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_probe._entry_ptr.24 = internal global ptr @mt2701_cs42448_machine_probe._entry.21, section ".printk_index", align 4
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2s1-in-sel-gpio2\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i2s1_in_mux_gpio_sel_2\00", [41 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 403, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s devm_gpio_request fail2 %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_probe._entry_ptr.29 = internal global ptr @mt2701_cs42448_machine_probe._entry.27, section ".printk_index", align 4
@mt2701_cs42448_machine_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 412, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s snd_soc_register_card fail %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mt2701_cs42448_machine_probe._entry_ptr.32 = internal global ptr @mt2701_cs42448_machine_probe._entry.30, section ".printk_index", align 4
@mt2701_cs42448_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt2701_cs42448_i2sin1_mux_get, ptr @mt2701_cs42448_i2sin1_mux_set, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2sin_mux_enum to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Out Jack Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Line Out Jack\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AMIC Switch\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Tuner In Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Tuner In\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Satellite Tuner In Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Satellite Tuner In\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AUX In Switch\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AUX In\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I2SIN1_MUX_Switch\00", [46 x i8] zeroinitializer }, align 32
@i2sin_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 4, i32 0, ptr @i2sin_mux_switch_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mt2701_cs42448_i2sin1_mux_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 72, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s invalid setting\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mt2701_cs42448_i2sin1_mux_set\00", [34 x i8] zeroinitializer }, align 32
@mt2701_cs42448_i2sin1_mux_set._entry_ptr = internal global ptr @mt2701_cs42448_i2sin1_mux_set._entry, section ".printk_index", align 4
@i2sin_mux_switch_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC_SDOUT2\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC_SDOUT3\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S_IN_1\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S_IN_2\00", [23 x i8] zeroinitializer }, align 32
@mt2701_cs42448_asoc_card_dapm_widgets = internal constant { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [252 x i8] } { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [252 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt2701-cs42448-multi-ch-out\00", [36 x i8] zeroinitializer }, align 32
@fe_multi_ch_out_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.64 }], [20 x i8] zeroinitializer }, align 32
@fe_multi_ch_out_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.65, ptr null, ptr @.str.66 }], [20 x i8] zeroinitializer }, align 32
@fe_multi_ch_out_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt2701_cs42448_48k_fe_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt2701_cs42448_fe_ops_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt2701-cs42448-pcm0\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt2701-cs42448-pcm0-data-UL\00", [36 x i8] zeroinitializer }, align 32
@fe_pcm0_in_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@fe_pcm0_in_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.65, ptr null, ptr @.str.66 }], [20 x i8] zeroinitializer }, align 32
@fe_pcm0_in_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt2701-cs42448-pcm1-data-UL\00", [36 x i8] zeroinitializer }, align 32
@fe_pcm1_in_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.70 }], [20 x i8] zeroinitializer }, align 32
@fe_pcm1_in_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.65, ptr null, ptr @.str.66 }], [20 x i8] zeroinitializer }, align 32
@fe_pcm1_in_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt2701-cs42448-pcm-BT-out\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt2701-cs42448-pcm-BT\00", [42 x i8] zeroinitializer }, align 32
@fe_bt_out_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.71 }], [20 x i8] zeroinitializer }, align 32
@fe_bt_out_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.65, ptr null, ptr @.str.66 }], [20 x i8] zeroinitializer }, align 32
@fe_bt_out_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt2701-cs42448-pcm-BT-in\00", [39 x i8] zeroinitializer }, align 32
@fe_bt_in_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.72 }], [20 x i8] zeroinitializer }, align 32
@fe_bt_in_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.65, ptr null, ptr @.str.66 }], [20 x i8] zeroinitializer }, align 32
@fe_bt_in_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt2701-cs42448-I2S0\00", [44 x i8] zeroinitializer }, align 32
@be_i2s0_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.73 }], [20 x i8] zeroinitializer }, align 32
@be_i2s0_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.74 }], [20 x i8] zeroinitializer }, align 32
@be_i2s0_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt2701_cs42448_be_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt2701_cs42448_be_ops_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt2701-cs42448-I2S1\00", [44 x i8] zeroinitializer }, align 32
@be_i2s1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.75 }], [20 x i8] zeroinitializer }, align 32
@be_i2s1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.74 }], [20 x i8] zeroinitializer }, align 32
@be_i2s1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt2701-cs42448-I2S2\00", [44 x i8] zeroinitializer }, align 32
@be_i2s2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.76 }], [20 x i8] zeroinitializer }, align 32
@be_i2s2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.74 }], [20 x i8] zeroinitializer }, align 32
@be_i2s2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt2701-cs42448-I2S3\00", [44 x i8] zeroinitializer }, align 32
@be_i2s3_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@be_i2s3_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.74 }], [20 x i8] zeroinitializer }, align 32
@be_i2s3_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt2701-cs42448-MRG-BT\00", [42 x i8] zeroinitializer }, align 32
@be_mrg_bt_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.78 }], [20 x i8] zeroinitializer }, align 32
@be_mrg_bt_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.79 }], [20 x i8] zeroinitializer }, align 32
@be_mrg_bt_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt2701_cs42448_dai_links = internal global { [10 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [312 x i8] } { [10 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.51, ptr @.str.51, ptr @fe_multi_ch_out_cpus, i32 1, ptr @fe_multi_ch_out_codecs, i32 1, ptr @fe_multi_ch_out_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt2701_cs42448_48k_fe_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.52, ptr @.str.53, ptr @fe_pcm0_in_cpus, i32 1, ptr @fe_pcm0_in_codecs, i32 1, ptr @fe_pcm0_in_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt2701_cs42448_48k_fe_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.54, ptr @.str.54, ptr @fe_pcm1_in_cpus, i32 1, ptr @fe_pcm1_in_codecs, i32 1, ptr @fe_pcm1_in_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt2701_cs42448_48k_fe_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.55, ptr @.str.56, ptr @fe_bt_out_cpus, i32 1, ptr @fe_bt_out_codecs, i32 1, ptr @fe_bt_out_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.57, ptr @.str.56, ptr @fe_bt_in_cpus, i32 1, ptr @fe_bt_in_codecs, i32 1, ptr @fe_bt_in_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.58, ptr null, ptr @be_i2s0_cpus, i32 1, ptr @be_i2s0_codecs, i32 1, ptr @be_i2s0_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt2701_cs42448_be_ops, ptr null, i8 1, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.59, ptr null, ptr @be_i2s1_cpus, i32 1, ptr @be_i2s1_codecs, i32 1, ptr @be_i2s1_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt2701_cs42448_be_ops, ptr null, i8 1, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.60, ptr null, ptr @be_i2s2_cpus, i32 1, ptr @be_i2s2_codecs, i32 1, ptr @be_i2s2_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt2701_cs42448_be_ops, ptr null, i8 1, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.61, ptr null, ptr @be_i2s3_cpus, i32 1, ptr @be_i2s3_codecs, i32 1, ptr @be_i2s3_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt2701_cs42448_be_ops, ptr null, i8 1, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.62, ptr null, ptr @be_mrg_bt_cpus, i32 1, ptr @be_mrg_bt_codecs, i32 1, ptr @be_mrg_bt_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }], [312 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCM_multi\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@mt2701_cs42448_constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt2701_cs42448_sampling_rates, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt2701_cs42448_fe_ops_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 117, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s snd_pcm_hw_constraint_list failed: 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mt2701_cs42448_fe_ops_startup\00", [34 x i8] zeroinitializer }, align 32
@mt2701_cs42448_fe_ops_startup._entry_ptr = internal global ptr @mt2701_cs42448_fe_ops_startup._entry, section ".printk_index", align 4
@mt2701_cs42448_sampling_rates = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCM0\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCM1\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCM_BT_DL\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCM_BT_UL\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S0\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cs42448\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S1\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S2\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S3\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MRG BT\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bt-sco-pcm-wb\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.80 = private unnamed_addr constant [23 x i8] c"mt2701_cs42448_machine\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 423, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 425, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant [32 x i8] c"mt2701_cs42448_machine_dt_match\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 417, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"mt2701_cs42448_soc_card\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 316, i32 28 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 343, i32 7 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 345, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 357, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 359, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 370, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 372, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 379, i32 45 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 381, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 386, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 389, i32 6 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 391, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 397, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 400, i32 6 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 402, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 411, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [24 x i8] c"mt2701_cs42448_controls\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 88, i32 38 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 89, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 90, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 91, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 92, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 93, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 94, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [15 x i8] c"i2sin_mux_enum\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 32, i32 30 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 72, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [22 x i8] c"i2sin_mux_switch_text\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 25, i32 27 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 26, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 27, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 28, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 29, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [38 x i8] c"mt2701_cs42448_asoc_card_dapm_widgets\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 80, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 219, i32 11 }
@___asan_gen_.242 = private unnamed_addr constant [21 x i8] c"fe_multi_ch_out_cpus\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [23 x i8] c"fe_multi_ch_out_codecs\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [26 x i8] c"fe_multi_ch_out_platforms\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [26 x i8] c"mt2701_cs42448_48k_fe_ops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 123, i32 33 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 229, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 230, i32 18 }
@___asan_gen_.260 = private unnamed_addr constant [16 x i8] c"fe_pcm0_in_cpus\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [18 x i8] c"fe_pcm0_in_codecs\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [21 x i8] c"fe_pcm0_in_platforms\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 239, i32 11 }
@___asan_gen_.272 = private unnamed_addr constant [16 x i8] c"fe_pcm1_in_cpus\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [18 x i8] c"fe_pcm1_in_codecs\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [21 x i8] c"fe_pcm1_in_platforms\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 249, i32 11 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 250, i32 18 }
@___asan_gen_.287 = private unnamed_addr constant [15 x i8] c"fe_bt_out_cpus\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"fe_bt_out_codecs\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [20 x i8] c"fe_bt_out_platforms\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 258, i32 11 }
@___asan_gen_.299 = private unnamed_addr constant [14 x i8] c"fe_bt_in_cpus\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [16 x i8] c"fe_bt_in_codecs\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [19 x i8] c"fe_bt_in_platforms\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 268, i32 11 }
@___asan_gen_.311 = private unnamed_addr constant [13 x i8] c"be_i2s0_cpus\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [15 x i8] c"be_i2s0_codecs\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [18 x i8] c"be_i2s0_platforms\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [22 x i8] c"mt2701_cs42448_be_ops\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 149, i32 33 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 278, i32 11 }
@___asan_gen_.326 = private unnamed_addr constant [13 x i8] c"be_i2s1_cpus\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [15 x i8] c"be_i2s1_codecs\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [18 x i8] c"be_i2s1_platforms\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 288, i32 11 }
@___asan_gen_.338 = private unnamed_addr constant [13 x i8] c"be_i2s2_cpus\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [15 x i8] c"be_i2s2_codecs\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [18 x i8] c"be_i2s2_platforms\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 298, i32 11 }
@___asan_gen_.350 = private unnamed_addr constant [13 x i8] c"be_i2s3_cpus\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [15 x i8] c"be_i2s3_codecs\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [18 x i8] c"be_i2s3_platforms\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 308, i32 11 }
@___asan_gen_.362 = private unnamed_addr constant [15 x i8] c"be_mrg_bt_cpus\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"be_mrg_bt_codecs\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c"be_mrg_bt_platforms\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [25 x i8] c"mt2701_cs42448_dai_links\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 216, i32 32 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 166, i32 1 }
@___asan_gen_.383 = private unnamed_addr constant [33 x i8] c"mt2701_cs42448_constraints_rates\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 101, i32 48 }
@___asan_gen_.386 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 115, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [30 x i8] c"mt2701_cs42448_sampling_rates\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 99, i32 27 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 171, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 176, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 181, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 186, i32 1 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 191, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 196, i32 1 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 201, i32 1 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 206, i32 1 }
@___asan_gen_.428 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.429 = private constant [46 x i8] c"../sound/soc/mediatek/mt2701/mt2701-cs42448.c\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 211, i32 1 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_mt2701_cs42448_machine_exit, ptr @__initcall__kmod_mt2701_cs42448__238_433_mt2701_cs42448_machine_init6, ptr @mt2701_cs42448_fe_ops_startup._entry, ptr @mt2701_cs42448_fe_ops_startup._entry_ptr, ptr @mt2701_cs42448_i2sin1_mux_set._entry, ptr @mt2701_cs42448_i2sin1_mux_set._entry_ptr, ptr @mt2701_cs42448_machine_exit, ptr @mt2701_cs42448_machine_probe._entry, ptr @mt2701_cs42448_machine_probe._entry.12, ptr @mt2701_cs42448_machine_probe._entry.16, ptr @mt2701_cs42448_machine_probe._entry.21, ptr @mt2701_cs42448_machine_probe._entry.27, ptr @mt2701_cs42448_machine_probe._entry.30, ptr @mt2701_cs42448_machine_probe._entry.8, ptr @mt2701_cs42448_machine_probe._entry_ptr, ptr @mt2701_cs42448_machine_probe._entry_ptr.10, ptr @mt2701_cs42448_machine_probe._entry_ptr.14, ptr @mt2701_cs42448_machine_probe._entry_ptr.18, ptr @mt2701_cs42448_machine_probe._entry_ptr.24, ptr @mt2701_cs42448_machine_probe._entry_ptr.29, ptr @mt2701_cs42448_machine_probe._entry_ptr.32, ptr @mt2701_cs42448_machine, ptr @.str, ptr @mt2701_cs42448_machine_dt_match, ptr @mt2701_cs42448_soc_card, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @mt2701_cs42448_controls, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @i2sin_mux_enum, ptr @.str.44, ptr @.str.45, ptr @i2sin_mux_switch_text, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @mt2701_cs42448_asoc_card_dapm_widgets, ptr @.str.51, ptr @fe_multi_ch_out_cpus, ptr @fe_multi_ch_out_codecs, ptr @fe_multi_ch_out_platforms, ptr @mt2701_cs42448_48k_fe_ops, ptr @.str.52, ptr @.str.53, ptr @fe_pcm0_in_cpus, ptr @fe_pcm0_in_codecs, ptr @fe_pcm0_in_platforms, ptr @.str.54, ptr @fe_pcm1_in_cpus, ptr @fe_pcm1_in_codecs, ptr @fe_pcm1_in_platforms, ptr @.str.55, ptr @.str.56, ptr @fe_bt_out_cpus, ptr @fe_bt_out_codecs, ptr @fe_bt_out_platforms, ptr @.str.57, ptr @fe_bt_in_cpus, ptr @fe_bt_in_codecs, ptr @fe_bt_in_platforms, ptr @.str.58, ptr @be_i2s0_cpus, ptr @be_i2s0_codecs, ptr @be_i2s0_platforms, ptr @mt2701_cs42448_be_ops, ptr @.str.59, ptr @be_i2s1_cpus, ptr @be_i2s1_codecs, ptr @be_i2s1_platforms, ptr @.str.60, ptr @be_i2s2_cpus, ptr @be_i2s2_codecs, ptr @be_i2s2_platforms, ptr @.str.61, ptr @be_i2s3_cpus, ptr @be_i2s3_codecs, ptr @be_i2s3_platforms, ptr @.str.62, ptr @be_mrg_bt_cpus, ptr @be_mrg_bt_codecs, ptr @be_mrg_bt_platforms, ptr @mt2701_cs42448_dai_links, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @mt2701_cs42448_constraints_rates, ptr @.str.67, ptr @.str.68, ptr @mt2701_cs42448_sampling_rates, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_machine to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_machine_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_soc_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_machine_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_machine_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_machine_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_machine_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_machine_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_machine_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_machine_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sin_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_i2sin1_mux_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sin_mux_switch_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_asoc_card_dapm_widgets to i32), i32 900, i32 1152, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_multi_ch_out_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_multi_ch_out_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_multi_ch_out_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_48k_fe_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_pcm0_in_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_pcm0_in_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_pcm0_in_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_pcm1_in_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_pcm1_in_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_pcm1_in_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_bt_out_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_bt_out_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_bt_out_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_bt_in_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_bt_in_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_bt_in_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_i2s0_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_i2s0_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_i2s0_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_be_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_i2s1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_i2s1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_i2s1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_i2s2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_i2s2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_i2s2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_i2s3_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_i2s3_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_i2s3_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_mrg_bt_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_mrg_bt_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_mrg_bt_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_dai_links to i32), i32 1160, i32 1472, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_fe_ops_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_cs42448_sampling_rates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_cs42448_machine_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt2701_cs42448_machine, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt2701_cs42448_machine_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt2701_cs42448_machine) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_cs42448_machine_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i174 = alloca %struct.of_phandle_args, align 4
  %args.i168 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i167 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %tobool.not.i = icmp eq i32 %call.i167, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %do.end

of_parse_phandle.exit:                            ; preds = %if.end
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %of_parse_phandle.exit.do.end_crit_edge, label %for.cond.preheader

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.preheader:                               ; preds = %of_parse_phandle.exit
  %5 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt2701_cs42448_soc_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp191 = icmp sgt i32 %5, 0
  br i1 %cmp191, label %for.cond.preheader.land.rhs_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %i.0192 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %6 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt2701_cs42448_soc_card, i32 0, i32 24), align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %6, i32 %i.0192
  %tobool10.not = icmp eq ptr %arrayidx, null
  br i1 %tobool10.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %platforms = getelementptr %struct.snd_soc_dai_link, ptr %6, i32 %i.0192, i32 6
  %7 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platforms, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.end13, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %of_node15 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %of_node15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %4, ptr %of_node15, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0192, 1
  %12 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt2701_cs42448_soc_card, i32 0, i32 25), align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  store ptr %dev, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt2701_cs42448_soc_card, i32 0, i32 5), align 4
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i168) #6
  %15 = call ptr @memset(ptr %args.i168, i32 255, i32 72)
  %call.i169 = call i32 @__of_parse_phandle_with_args(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i168) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool.not.i170 = icmp eq i32 %call.i169, 0
  br i1 %tobool.not.i170, label %of_parse_phandle.exit173, label %of_parse_phandle.exit173.thread

of_parse_phandle.exit173.thread:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i168) #6
  br label %do.end24

of_parse_phandle.exit173:                         ; preds = %for.end
  %16 = ptrtoint ptr %args.i168 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args.i168, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i168) #6
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %of_parse_phandle.exit173.do.end24_crit_edge, label %for.cond27.preheader

of_parse_phandle.exit173.do.end24_crit_edge:      ; preds = %of_parse_phandle.exit173
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

for.cond27.preheader:                             ; preds = %of_parse_phandle.exit173
  %18 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt2701_cs42448_soc_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp29193 = icmp sgt i32 %18, 0
  br i1 %cmp29193, label %for.cond27.preheader.land.rhs30_crit_edge, label %for.cond27.preheader.for.end44_crit_edge

for.cond27.preheader.for.end44_crit_edge:         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end44

for.cond27.preheader.land.rhs30_crit_edge:        ; preds = %for.cond27.preheader
  br label %land.rhs30

do.end24:                                         ; preds = %of_parse_phandle.exit173.do.end24_crit_edge, %of_parse_phandle.exit173.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

land.rhs30:                                       ; preds = %for.inc42.land.rhs30_crit_edge, %for.cond27.preheader.land.rhs30_crit_edge
  %i.1194 = phi i32 [ %inc43, %for.inc42.land.rhs30_crit_edge ], [ 0, %for.cond27.preheader.land.rhs30_crit_edge ]
  %19 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt2701_cs42448_soc_card, i32 0, i32 24), align 4
  %arrayidx32 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.1194
  %tobool33.not = icmp eq ptr %arrayidx32, null
  br i1 %tobool33.not, label %land.rhs30.for.end44_crit_edge, label %for.body35

land.rhs30.for.end44_crit_edge:                   ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end44

for.body35:                                       ; preds = %land.rhs30
  %codecs = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.1194, i32 4
  %20 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %codecs, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool37.not = icmp eq ptr %23, null
  br i1 %tobool37.not, label %if.end39, label %for.body35.for.inc42_crit_edge

for.body35.for.inc42_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc42

if.end39:                                         ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #8
  %of_node41 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %of_node41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %17, ptr %of_node41, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %if.end39, %for.body35.for.inc42_crit_edge
  %inc43 = add nuw nsw i32 %i.1194, 1
  %25 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt2701_cs42448_soc_card, i32 0, i32 25), align 4
  %cmp29 = icmp slt i32 %inc43, %25
  br i1 %cmp29, label %for.inc42.land.rhs30_crit_edge, label %for.inc42.for.end44_crit_edge

for.inc42.for.end44_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end44

for.inc42.land.rhs30_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs30

for.end44:                                        ; preds = %for.inc42.for.end44_crit_edge, %land.rhs30.for.end44_crit_edge, %for.cond27.preheader.for.end44_crit_edge
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i174) #6
  %28 = call ptr @memset(ptr %args.i174, i32 255, i32 72)
  %call.i175 = call i32 @__of_parse_phandle_with_args(ptr noundef %27, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i174) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool.not.i176 = icmp eq i32 %call.i175, 0
  br i1 %tobool.not.i176, label %of_parse_phandle.exit179, label %of_parse_phandle.exit179.thread

of_parse_phandle.exit179.thread:                  ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i174) #6
  br label %do.end52

of_parse_phandle.exit179:                         ; preds = %for.end44
  %29 = ptrtoint ptr %args.i174 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %args.i174, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i174) #6
  %tobool48.not = icmp eq ptr %30, null
  br i1 %tobool48.not, label %of_parse_phandle.exit179.do.end52_crit_edge, label %if.end54

of_parse_phandle.exit179.do.end52_crit_edge:      ; preds = %of_parse_phandle.exit179
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end52

do.end52:                                         ; preds = %of_parse_phandle.exit179.do.end52_crit_edge, %of_parse_phandle.exit179.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end54:                                         ; preds = %of_parse_phandle.exit179
  %31 = load ptr, ptr getelementptr inbounds ([10 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @mt2701_cs42448_dai_links, i32 0, i32 9, i32 4), align 4
  %of_node55 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %of_node55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %of_node55, align 4
  %call56 = call i32 @snd_soc_of_parse_audio_routing(ptr noundef nonnull @mt2701_cs42448_soc_card, ptr noundef nonnull @.str.15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call56) #9
  br label %cleanup

if.end63:                                         ; preds = %if.end54
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %call.i180 = call i32 @of_get_named_gpio_flags(ptr noundef %34, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef null) #6
  %i2s1_in_mux_gpio_sel_1 = getelementptr inbounds %struct.mt2701_cs42448_private, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %i2s1_in_mux_gpio_sel_1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i180, ptr %i2s1_in_mux_gpio_sel_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i180)
  %36 = icmp ult i32 %call.i180, 2048
  br i1 %36, label %if.then68, label %if.end63.if.end80_crit_edge

if.end63.if.end80_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then68:                                        ; preds = %if.end63
  %call70 = call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %call.i180, ptr noundef nonnull @.str.20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then68.if.end77_crit_edge, label %do.end75

if.then68.if.end77_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

do.end75:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, i32 noundef %call70) #9
  br label %if.end77

if.end77:                                         ; preds = %do.end75, %if.then68.if.end77_crit_edge
  %37 = ptrtoint ptr %i2s1_in_mux_gpio_sel_1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i2s1_in_mux_gpio_sel_1, align 4
  %call.i181 = call ptr @gpio_to_desc(i32 noundef %38) #6
  %call1.i = call i32 @gpiod_direction_output_raw(ptr noundef %call.i181, i32 noundef 0) #6
  br label %if.end80

if.end80:                                         ; preds = %if.end77, %if.end63.if.end80_crit_edge
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %call.i182 = call i32 @of_get_named_gpio_flags(ptr noundef %40, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef null) #6
  %i2s1_in_mux_gpio_sel_2 = getelementptr inbounds %struct.mt2701_cs42448_private, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %i2s1_in_mux_gpio_sel_2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call.i182, ptr %i2s1_in_mux_gpio_sel_2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i182)
  %42 = icmp ult i32 %call.i182, 2048
  br i1 %42, label %if.then85, label %if.end80.if.end97_crit_edge

if.end80.if.end97_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then85:                                        ; preds = %if.end80
  %call87 = call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %call.i182, ptr noundef nonnull @.str.26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then85.if.end94_crit_edge, label %do.end92

if.then85.if.end94_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

do.end92:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.3, i32 noundef %call87) #9
  br label %if.end94

if.end94:                                         ; preds = %do.end92, %if.then85.if.end94_crit_edge
  %43 = ptrtoint ptr %i2s1_in_mux_gpio_sel_2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i2s1_in_mux_gpio_sel_2, align 4
  %call.i183 = call ptr @gpio_to_desc(i32 noundef %44) #6
  %call1.i184 = call i32 @gpiod_direction_output_raw(ptr noundef %call.i183, i32 noundef 0) #6
  br label %if.end97

if.end97:                                         ; preds = %if.end94, %if.end80.if.end97_crit_edge
  store ptr %call.i, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt2701_cs42448_soc_card, i32 0, i32 57), align 4
  %call99 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull @mt2701_cs42448_soc_card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end97.cleanup_crit_edge, label %do.end104

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end104:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.3, i32 noundef %call99) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end104, %if.end97.cleanup_crit_edge, %do.end61, %do.end52, %do.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call56, %do.end61 ], [ -22, %do.end52 ], [ -22, %do.end24 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call99, %do.end104 ], [ 0, %if.end97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt2701_cs42448_i2sin1_mux_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_cs42448_i2sin1_mux_set(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb6
    i32 3, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %i2s1_in_mux_gpio_sel_1 = getelementptr inbounds %struct.mt2701_cs42448_private, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %i2s1_in_mux_gpio_sel_1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i2s1_in_mux_gpio_sel_1, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %10) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #6
  %i2s1_in_mux_gpio_sel_2 = getelementptr inbounds %struct.mt2701_cs42448_private, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %i2s1_in_mux_gpio_sel_2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2s1_in_mux_gpio_sel_2, align 4
  %call.i28 = tail call ptr @gpio_to_desc(i32 noundef %12) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i28, i32 noundef 0) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %i2s1_in_mux_gpio_sel_14 = getelementptr inbounds %struct.mt2701_cs42448_private, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %i2s1_in_mux_gpio_sel_14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i2s1_in_mux_gpio_sel_14, align 4
  %call.i29 = tail call ptr @gpio_to_desc(i32 noundef %14) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i29, i32 noundef 1) #6
  %i2s1_in_mux_gpio_sel_25 = getelementptr inbounds %struct.mt2701_cs42448_private, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %i2s1_in_mux_gpio_sel_25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i2s1_in_mux_gpio_sel_25, align 4
  %call.i30 = tail call ptr @gpio_to_desc(i32 noundef %16) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i30, i32 noundef 0) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %i2s1_in_mux_gpio_sel_17 = getelementptr inbounds %struct.mt2701_cs42448_private, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %i2s1_in_mux_gpio_sel_17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i2s1_in_mux_gpio_sel_17, align 4
  %call.i31 = tail call ptr @gpio_to_desc(i32 noundef %18) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i31, i32 noundef 0) #6
  %i2s1_in_mux_gpio_sel_28 = getelementptr inbounds %struct.mt2701_cs42448_private, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %i2s1_in_mux_gpio_sel_28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i2s1_in_mux_gpio_sel_28, align 4
  %call.i32 = tail call ptr @gpio_to_desc(i32 noundef %20) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i32, i32 noundef 1) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %i2s1_in_mux_gpio_sel_110 = getelementptr inbounds %struct.mt2701_cs42448_private, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %i2s1_in_mux_gpio_sel_110 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i2s1_in_mux_gpio_sel_110, align 4
  %call.i33 = tail call ptr @gpio_to_desc(i32 noundef %22) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i33, i32 noundef 1) #6
  %i2s1_in_mux_gpio_sel_211 = getelementptr inbounds %struct.mt2701_cs42448_private, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %i2s1_in_mux_gpio_sel_211 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i2s1_in_mux_gpio_sel_211, align 4
  %call.i34 = tail call ptr @gpio_to_desc(i32 noundef %24) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i34, i32 noundef 1) #6
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb
  %27 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value, align 8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_cs42448_fe_ops_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @mt2701_cs42448_constraints_rates) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_cs42448_be_ops_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
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
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cpus, align 4
  %arrayidx2 = getelementptr ptr, ptr %3, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192000, i32 %11)
  %cmp = icmp ugt i32 %11, 192000
  %cond = select i1 %cmp, i32 2, i32 4
  %mul = shl i32 %11, 6
  %mul3 = mul i32 %cond, %mul
  %call4 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %5, i32 noundef 0, i32 noundef %mul3, i32 noundef 1) #6
  %call5 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 0, i32 noundef %mul3, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !86, !88, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !136, !137, !138, !140, !142, !143, !144, !145, !147, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !174, !175, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !197, !198}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__initcall__kmod_mt2701_cs42448__238_433_mt2701_cs42448_machine_init6, !1, !"__initcall__kmod_mt2701_cs42448__238_433_mt2701_cs42448_machine_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 433, i32 1}
!2 = !{ptr @__exitcall_mt2701_cs42448_machine_exit, !1, !"__exitcall_mt2701_cs42448_machine_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 436, i32 1}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 437, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 438, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias243, !11, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 439, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 425, i32 11}
!14 = !{ptr @mt2701_cs42448_machine, !15, !"mt2701_cs42448_machine", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 423, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 343, i32 7}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 345, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt2701_cs42448_machine_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mt2701_cs42448_machine_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 357, i32 11}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 359, i32 3}
!30 = !{ptr @mt2701_cs42448_machine_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mt2701_cs42448_machine_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 370, i32 11}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 372, i32 3}
!36 = !{ptr @mt2701_cs42448_machine_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mt2701_cs42448_machine_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 379, i32 45}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 381, i32 3}
!42 = !{ptr @mt2701_cs42448_machine_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mt2701_cs42448_machine_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 386, i32 35}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 389, i32 6}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 391, i32 4}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mt2701_cs42448_machine_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @mt2701_cs42448_machine_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 397, i32 35}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 400, i32 6}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 402, i32 4}
!59 = !{ptr @mt2701_cs42448_machine_probe._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mt2701_cs42448_machine_probe._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 411, i32 3}
!63 = !{ptr @mt2701_cs42448_machine_probe._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mt2701_cs42448_machine_probe._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @mt2701_cs42448_soc_card, !66, !"mt2701_cs42448_soc_card", i1 false, i1 false}
!66 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 316, i32 28}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 89, i32 2}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 90, i32 2}
!72 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 91, i32 2}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 92, i32 2}
!78 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 93, i32 2}
!81 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 94, i32 2}
!84 = !{ptr @mt2701_cs42448_controls, !85, !"mt2701_cs42448_controls", i1 false, i1 false}
!85 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 88, i32 38}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 72, i32 3}
!88 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mt2701_cs42448_i2sin1_mux_set._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @mt2701_cs42448_i2sin1_mux_set._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @i2sin_mux_enum, !92, !"i2sin_mux_enum", i1 false, i1 false}
!92 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 32, i32 30}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 26, i32 2}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 27, i32 2}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 28, i32 2}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 29, i32 2}
!101 = !{ptr @i2sin_mux_switch_text, !102, !"i2sin_mux_switch_text", i1 false, i1 false}
!102 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 25, i32 27}
!103 = !{ptr @mt2701_cs42448_asoc_card_dapm_widgets, !104, !"mt2701_cs42448_asoc_card_dapm_widgets", i1 false, i1 false}
!104 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 80, i32 4}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 219, i32 11}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 229, i32 11}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 230, i32 18}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 239, i32 11}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 249, i32 11}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 250, i32 18}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 258, i32 11}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 268, i32 11}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 278, i32 11}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 288, i32 11}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 298, i32 11}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 308, i32 11}
!129 = !{ptr @mt2701_cs42448_dai_links, !130, !"mt2701_cs42448_dai_links", i1 false, i1 false}
!130 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 216, i32 32}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 166, i32 1}
!133 = !{ptr @fe_multi_ch_out_cpus, !132, !"fe_multi_ch_out_cpus", i1 false, i1 false}
!134 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @fe_multi_ch_out_codecs, !132, !"fe_multi_ch_out_codecs", i1 false, i1 false}
!137 = !{ptr @fe_multi_ch_out_platforms, !132, !"fe_multi_ch_out_platforms", i1 false, i1 false}
!138 = !{ptr @mt2701_cs42448_48k_fe_ops, !139, !"mt2701_cs42448_48k_fe_ops", i1 false, i1 false}
!139 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 123, i32 33}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 115, i32 3}
!142 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @mt2701_cs42448_fe_ops_startup._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @mt2701_cs42448_fe_ops_startup._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @mt2701_cs42448_constraints_rates, !146, !"mt2701_cs42448_constraints_rates", i1 false, i1 false}
!146 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 101, i32 48}
!147 = !{ptr @mt2701_cs42448_sampling_rates, !148, !"mt2701_cs42448_sampling_rates", i1 false, i1 false}
!148 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 99, i32 27}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 171, i32 1}
!151 = !{ptr @fe_pcm0_in_cpus, !150, !"fe_pcm0_in_cpus", i1 false, i1 false}
!152 = !{ptr @fe_pcm0_in_codecs, !150, !"fe_pcm0_in_codecs", i1 false, i1 false}
!153 = !{ptr @fe_pcm0_in_platforms, !150, !"fe_pcm0_in_platforms", i1 false, i1 false}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 176, i32 1}
!156 = !{ptr @fe_pcm1_in_cpus, !155, !"fe_pcm1_in_cpus", i1 false, i1 false}
!157 = !{ptr @fe_pcm1_in_codecs, !155, !"fe_pcm1_in_codecs", i1 false, i1 false}
!158 = !{ptr @fe_pcm1_in_platforms, !155, !"fe_pcm1_in_platforms", i1 false, i1 false}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 181, i32 1}
!161 = !{ptr @fe_bt_out_cpus, !160, !"fe_bt_out_cpus", i1 false, i1 false}
!162 = !{ptr @fe_bt_out_codecs, !160, !"fe_bt_out_codecs", i1 false, i1 false}
!163 = !{ptr @fe_bt_out_platforms, !160, !"fe_bt_out_platforms", i1 false, i1 false}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 186, i32 1}
!166 = !{ptr @fe_bt_in_cpus, !165, !"fe_bt_in_cpus", i1 false, i1 false}
!167 = !{ptr @fe_bt_in_codecs, !165, !"fe_bt_in_codecs", i1 false, i1 false}
!168 = !{ptr @fe_bt_in_platforms, !165, !"fe_bt_in_platforms", i1 false, i1 false}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 191, i32 1}
!171 = !{ptr @be_i2s0_cpus, !170, !"be_i2s0_cpus", i1 false, i1 false}
!172 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @be_i2s0_codecs, !170, !"be_i2s0_codecs", i1 false, i1 false}
!174 = !{ptr @be_i2s0_platforms, !170, !"be_i2s0_platforms", i1 false, i1 false}
!175 = !{ptr @mt2701_cs42448_be_ops, !176, !"mt2701_cs42448_be_ops", i1 false, i1 false}
!176 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 149, i32 33}
!177 = !{ptr @.str.75, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 196, i32 1}
!179 = !{ptr @be_i2s1_cpus, !178, !"be_i2s1_cpus", i1 false, i1 false}
!180 = !{ptr @be_i2s1_codecs, !178, !"be_i2s1_codecs", i1 false, i1 false}
!181 = !{ptr @be_i2s1_platforms, !178, !"be_i2s1_platforms", i1 false, i1 false}
!182 = !{ptr @.str.76, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 201, i32 1}
!184 = !{ptr @be_i2s2_cpus, !183, !"be_i2s2_cpus", i1 false, i1 false}
!185 = !{ptr @be_i2s2_codecs, !183, !"be_i2s2_codecs", i1 false, i1 false}
!186 = !{ptr @be_i2s2_platforms, !183, !"be_i2s2_platforms", i1 false, i1 false}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 206, i32 1}
!189 = !{ptr @be_i2s3_cpus, !188, !"be_i2s3_cpus", i1 false, i1 false}
!190 = !{ptr @be_i2s3_codecs, !188, !"be_i2s3_codecs", i1 false, i1 false}
!191 = !{ptr @be_i2s3_platforms, !188, !"be_i2s3_platforms", i1 false, i1 false}
!192 = !{ptr @.str.78, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 211, i32 1}
!194 = !{ptr @be_mrg_bt_cpus, !193, !"be_mrg_bt_cpus", i1 false, i1 false}
!195 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @be_mrg_bt_codecs, !193, !"be_mrg_bt_codecs", i1 false, i1 false}
!197 = !{ptr @be_mrg_bt_platforms, !193, !"be_mrg_bt_platforms", i1 false, i1 false}
!198 = !{ptr @mt2701_cs42448_machine_dt_match, !199, !"mt2701_cs42448_machine_dt_match", i1 false, i1 false}
!199 = !{!"../sound/soc/mediatek/mt2701/mt2701-cs42448.c", i32 417, i32 34}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
