; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/sta350.c_pt.bc'
source_filename = "../sound/soc/codecs/sta350.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.108 = type { i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.sta350_priv = type { ptr, [3 x %struct.regulator_bulk_data], ptr, i32, i32, [62 x i32], i32, ptr, ptr, %struct.mutex }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.sta350_platform_data = type <{ i8, i8, i8, i8, i8, i8, i8, i16, [3 x i8] }>
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.92, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.92 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.94, [64 x i8] }
%union.anon.94 = type { %struct.anon.97, [40 x i8] }
%struct.anon.97 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.87, [128 x i8] }
%union.anon.87 = type { %union.anon.89 }
%union.anon.89 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_sta350__306_1271_sta350_i2c_driver_init6 = internal global ptr @sta350_i2c_driver_init, section ".initcall6.init", align 4
@sta350_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sta350_i2c_probe, ptr @sta350_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st350_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sta350_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sta350_i2c_driver_exit = internal global ptr @sta350_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description307 = internal constant [46 x i8] c"snd_soc_sta350.description=ASoC STA350 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [54 x i8] c"snd_soc_sta350.author=Sven Brandau <info@brandau.biz>\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [52 x i8] c"snd_soc_sta350.file=sound/soc/codecs/snd-soc-sta350\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [27 x i8] c"snd_soc_sta350.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sta350\00", [25 x i8] zeroinitializer }, align 32
@st350_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,sta350\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sta350_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sta350\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sta350_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sta350->coeff_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power-down\00", [21 x i8] zeroinitializer }, align 32
@sta350_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1230, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sta350_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/sta350.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sta350_i2c_probe._entry_ptr = internal global ptr @sta350_i2c_probe._entry, section ".printk_index", align 4
@sta350_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sta350_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 76, ptr @sta350_write_regs, ptr @sta350_read_regs, ptr @sta350_volatile_regs, ptr null, ptr null, ptr null, ptr @sta350_regs, i32 61, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sta350:1234:(&sta350_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@sta350_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1237, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to init regmap: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sta350_i2c_probe._entry_ptr.12 = internal global ptr @sta350_i2c_probe._entry.10, section ".printk_index", align 4
@sta350_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @sta350_snd_controls, i32 70, ptr @sta350_dapm_widgets, i32 4, ptr @sta350_dapm_routes, i32 4, ptr @sta350_probe, ptr @sta350_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sta350_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sta350_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.227, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @sta350_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.218, i64 3517578218700, i32 7904, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@sta350_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1245, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register component (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@sta350_i2c_probe._entry_ptr.15 = internal global ptr @sta350_i2c_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st,output-conf\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,ch1-output-mapping\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,ch2-output-mapping\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,ch3-output-mapping\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"st,thermal-warning-recovery\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"st,thermal-warning-adjustment\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st,fault-detect-recovery\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st,ffx-power-output-mode\00", [39 x i8] zeroinitializer }, align 32
@sta350_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 1131, ptr @.str.26, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported ffx output mode: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sta350_probe_dt\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sta350_probe_dt._entry_ptr = internal global ptr @sta350_probe_dt._entry, section ".printk_index", align 4
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st,drop-compensation-ns\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"st,overcurrent-warning-adjustment\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,max-power-use-mpcc\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st,max-power-correction\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st,am-reduction-mode\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,odd-pwm-speed-mode\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"st,distortion-compensation\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"st,invalid-input-detect-mute\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st,activate-mute-output\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st,bridge-immediate-off\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,noise-shape-dc-cut\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"st,powerdown-master-volume\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"st,powerdown-delay-divider\00", [37 x i8] zeroinitializer }, align 32
@sta350_probe_dt._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.25, ptr @.str.6, i32 1181, ptr @.str.26, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unsupported powerdown delay divider %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sta350_probe_dt._entry_ptr.42 = internal global ptr @sta350_probe_dt._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drop-compensation\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tapered-compensation\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"full-power-mode\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"variable-drop-compensation\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-dig\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-pll\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@sta350_write_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sta350_write_regs_range, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sta350_read_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sta350_read_regs_range, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sta350_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sta350_volatile_regs_range, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sta350_regs = internal constant { [61 x %struct.reg_default], [120 x i8] } { [61 x %struct.reg_default] [%struct.reg_default { i32 0, i32 99 }, %struct.reg_default { i32 1, i32 128 }, %struct.reg_default { i32 2, i32 223 }, %struct.reg_default { i32 3, i32 64 }, %struct.reg_default { i32 4, i32 194 }, %struct.reg_default { i32 5, i32 92 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 255 }, %struct.reg_default { i32 8, i32 96 }, %struct.reg_default { i32 9, i32 96 }, %struct.reg_default { i32 10, i32 96 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 64 }, %struct.reg_default { i32 16, i32 128 }, %struct.reg_default { i32 17, i32 119 }, %struct.reg_default { i32 18, i32 106 }, %struct.reg_default { i32 19, i32 105 }, %struct.reg_default { i32 20, i32 106 }, %struct.reg_default { i32 21, i32 105 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 42 }, %struct.reg_default { i32 40, i32 192 }, %struct.reg_default { i32 41, i32 243 }, %struct.reg_default { i32 42, i32 51 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 12 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 1 }, %struct.reg_default { i32 58, i32 238 }, %struct.reg_default { i32 59, i32 255 }, %struct.reg_default { i32 60, i32 126 }, %struct.reg_default { i32 61, i32 192 }, %struct.reg_default { i32 62, i32 38 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 73, i32 0 }, %struct.reg_default { i32 74, i32 0 }, %struct.reg_default { i32 75, i32 4 }, %struct.reg_default { i32 76, i32 0 }], [120 x i8] zeroinitializer }, align 32
@sta350_write_regs_range = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 12 }, %struct.regmap_range { i32 14, i32 44 }, %struct.regmap_range { i32 49, i32 63 }, %struct.regmap_range { i32 72, i32 76 }], [32 x i8] zeroinitializer }, align 32
@sta350_read_regs_range = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 12 }, %struct.regmap_range { i32 14, i32 45 }, %struct.regmap_range { i32 49, i32 63 }, %struct.regmap_range { i32 72, i32 76 }], [32 x i8] zeroinitializer }, align 32
@sta350_volatile_regs_range = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 22, i32 38 }, %struct.regmap_range { i32 45, i32 45 }], [16 x i8] zeroinitializer }, align 32
@sta350_snd_controls = internal constant { [70 x %struct.snd_kcontrol_new], [832 x i8] } { [70 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mvol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @chvol_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @chvol_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @chvol_tlv }, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_drc_ac_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_noise_shaper_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_auto_gc_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_auto_xo_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_binary_output_ch1_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_binary_output_ch2_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_binary_output_ch3_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_limiter_ch1_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_limiter_ch2_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_limiter_ch3_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.98 { ptr @tone_tlv }, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.98 { ptr @tone_tlv }, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_limiter1_attack_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_limiter2_attack_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_limiter1_release_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta350_limiter2_release_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta350_limiter_ac_attack_tlv }, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta350_limiter_ac_attack_tlv }, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta350_limiter_ac_release_tlv }, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta350_limiter_ac_release_tlv }, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta350_limiter_drc_attack_tlv }, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta350_limiter_drc_attack_tlv }, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta350_limiter_drc_release_tlv }, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta350_limiter_drc_release_tlv }, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 327680 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 327685 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 327690 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 327695 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 327700 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 327705 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 327710 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 327715 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 327720 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 327725 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 65586 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 65587 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 65588 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 65589 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 65590 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 65591 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 65592 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 65593 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 65594 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 65595 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 65596 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @sta350_coefficient_info, ptr @sta350_coefficient_get, ptr @sta350_coefficient_put, %union.anon.98 zeroinitializer, i32 65597 }], [832 x i8] zeroinitializer }, align 32
@sta350_dapm_routes = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Master Volume\00", [18 x i8] zeroinitializer }, align 32
@mvol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12750, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 7, i32 7, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch1 Volume\00", [21 x i8] zeroinitializer }, align 32
@chvol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7950, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8, i32 8, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch2 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 9, i32 9, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch3 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 10, i32 10, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"High Pass Filter Bypass Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"De-emphasis Filter Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSP Bypass Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Post-scale Link Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Biquad Coefficient Link Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Compressor/Limiter Switch\00", [38 x i8] zeroinitializer }, align 32
@sta350_drc_ac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 3, i8 5, i8 5, i32 2, i32 1, ptr @sta350_drc_ac, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Noise Shaper Bandwidth\00", [41 x i8] zeroinitializer }, align 32
@sta350_noise_shaper_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4, i8 2, i8 2, i32 2, i32 1, ptr @sta350_noise_shaper_type, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Zero-detect Mute Enable Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Submix Mode Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Zero Cross Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Soft Ramp Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Master Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch1 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch2 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch3 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Automode GC\00", [20 x i8] zeroinitializer }, align 32
@sta350_auto_gc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 11, i8 4, i8 4, i32 4, i32 3, ptr @sta350_auto_gc_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Automode XO\00", [20 x i8] zeroinitializer }, align 32
@sta350_auto_xo_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12, i8 4, i8 4, i32 16, i32 15, ptr @sta350_auto_xo_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ch1 Tone Control Bypass Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ch2 Tone Control Bypass Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Ch1 EQ Bypass Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Ch2 EQ Bypass Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Ch1 Master Volume Bypass Switch\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Ch2 Master Volume Bypass Switch\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Ch3 Master Volume Bypass Switch\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Ch1 Binary Output Select\00", [39 x i8] zeroinitializer }, align 32
@sta350_binary_output_ch1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 3, i8 3, i32 2, i32 1, ptr @sta350_binary_output, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Ch2 Binary Output Select\00", [39 x i8] zeroinitializer }, align 32
@sta350_binary_output_ch2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 3, i8 3, i32 2, i32 1, ptr @sta350_binary_output, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Ch3 Binary Output Select\00", [39 x i8] zeroinitializer }, align 32
@sta350_binary_output_ch3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 16, i8 3, i8 3, i32 2, i32 1, ptr @sta350_binary_output, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Ch1 Limiter Select\00", [45 x i8] zeroinitializer }, align 32
@sta350_limiter_ch1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 4, i8 4, i32 3, i32 3, ptr @sta350_limiter_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Ch2 Limiter Select\00", [45 x i8] zeroinitializer }, align 32
@sta350_limiter_ch2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 4, i8 4, i32 3, i32 3, ptr @sta350_limiter_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Ch3 Limiter Select\00", [45 x i8] zeroinitializer }, align 32
@sta350_limiter_ch3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 16, i8 4, i8 4, i32 3, i32 3, ptr @sta350_limiter_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bass Tone Control Volume\00", [39 x i8] zeroinitializer }, align 32
@tone_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 1, i32 13, i32 13, i32 17, i32 17, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Treble Tone Control Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 1, i32 13, i32 13, i32 17, i32 17, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Limiter1 Attack Rate (dB/ms)\00", [35 x i8] zeroinitializer }, align 32
@sta350_limiter1_attack_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 0, i8 0, i32 16, i32 15, ptr @sta350_limiter_attack_rate, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Limiter2 Attack Rate (dB/ms)\00", [35 x i8] zeroinitializer }, align 32
@sta350_limiter2_attack_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 20, i8 0, i8 0, i32 16, i32 15, ptr @sta350_limiter_attack_rate, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Limiter1 Release Rate (dB/ms)\00", [34 x i8] zeroinitializer }, align 32
@sta350_limiter1_release_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 4, i8 4, i32 16, i32 15, ptr @sta350_limiter_release_rate, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Limiter2 Release Rate (dB/ms)\00", [34 x i8] zeroinitializer }, align 32
@sta350_limiter2_release_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 20, i8 4, i8 4, i32 16, i32 15, ptr @sta350_limiter_release_rate, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Limiter1 Attack Threshold (AC Mode)\00", [60 x i8] zeroinitializer }, align 32
@sta350_limiter_ac_attack_tlv = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 7, i32 1, i32 8, i32 -1200, i32 200, i32 8, i32 16, i32 1, i32 8, i32 300, i32 100], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 19, i32 19, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Limiter2 Attack Threshold (AC Mode)\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 21, i32 21, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Limiter1 Release Threshold (AC Mode)\00", [59 x i8] zeroinitializer }, align 32
@sta350_limiter_ac_release_tlv = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 120, i32 0, i32 0, i32 1, i32 8, i32 -9999999, i32 0, i32 1, i32 1, i32 1, i32 8, i32 -2900, i32 0, i32 2, i32 2, i32 1, i32 8, i32 -2000, i32 0, i32 3, i32 8, i32 1, i32 8, i32 -1400, i32 200, i32 8, i32 16, i32 1, i32 8, i32 -700, i32 100], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 19, i32 19, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Limiter2 Release Threshold (AC Mode)\00", [59 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 21, i32 21, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Limiter1 Attack Threshold (DRC Mode)\00", [59 x i8] zeroinitializer }, align 32
@sta350_limiter_drc_attack_tlv = internal global { [20 x i32], [48 x i8] } { [20 x i32] [i32 3, i32 72, i32 0, i32 7, i32 1, i32 8, i32 -3100, i32 200, i32 8, i32 13, i32 1, i32 8, i32 -1600, i32 100, i32 14, i32 16, i32 1, i32 8, i32 -1000, i32 300], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 19, i32 19, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Limiter2 Attack Threshold (DRC Mode)\00", [59 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 21, i32 21, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Limiter1 Release Threshold (DRC Mode)\00", [58 x i8] zeroinitializer }, align 32
@sta350_limiter_drc_release_tlv = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 120, i32 0, i32 0, i32 1, i32 8, i32 -9999999, i32 0, i32 1, i32 2, i32 1, i32 8, i32 -3800, i32 200, i32 3, i32 4, i32 1, i32 8, i32 -3300, i32 200, i32 5, i32 12, i32 1, i32 8, i32 -3000, i32 200, i32 13, i32 16, i32 1, i32 8, i32 -1500, i32 300], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 19, i32 19, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Limiter2 Release Threshold (DRC Mode)\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 21, i32 21, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch1 - Biquad 1\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch1 - Biquad 2\00", [17 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch1 - Biquad 3\00", [17 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch1 - Biquad 4\00", [17 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch2 - Biquad 1\00", [17 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch2 - Biquad 2\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch2 - Biquad 3\00", [17 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch2 - Biquad 4\00", [17 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"High-pass\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Low-pass\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch1 - Prescale\00", [17 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch2 - Prescale\00", [17 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Ch1 - Postscale\00", [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Ch2 - Postscale\00", [16 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Ch3 - Postscale\00", [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Thermal warning - Postscale\00", [36 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ch1 - Mix 1\00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ch1 - Mix 2\00", [20 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ch2 - Mix 1\00", [20 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ch2 - Mix 2\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ch3 - Mix 1\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ch3 - Mix 2\00", [20 x i8] zeroinitializer }, align 32
@sta350_drc_ac = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.153, ptr @.str.154], [24 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Anti-Clipping\00", [18 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dynamic Range Compression\00", [38 x i8] zeroinitializer }, align 32
@sta350_noise_shaper_type = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.155, ptr @.str.156], [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Third order\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Fourth order\00", [19 x i8] zeroinitializer }, align 32
@sta350_auto_gc_mode = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160], [16 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"User\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AC no clipping\00", [17 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AC limited clipping (10%)\00", [38 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DRC nighttime listening mode\00", [35 x i8] zeroinitializer }, align 32
@sta350_auto_xo_mode = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.157, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175], [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"80Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"120Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"140Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"160Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"180Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"220Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"240Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"260Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"280Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"320Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"340Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"360Hz\00", [26 x i8] zeroinitializer }, align 32
@sta350_binary_output = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.176, ptr @.str.177], [24 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FFX 3-state output - normal operation\00", [58 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Binary output\00", [18 x i8] zeroinitializer }, align 32
@sta350_limiter_select = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.178, ptr @.str.179, ptr @.str.180], [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Limiter Disabled\00", [47 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Limiter #1\00", [21 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Limiter #2\00", [21 x i8] zeroinitializer }, align 32
@sta350_limiter_attack_rate = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196], [32 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3.1584\00", [25 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.7072\00", [25 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.2560\00", [25 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.8048\00", [25 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.3536\00", [25 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.9024\00", [25 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.4512\00", [25 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.2256\00", [25 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.1504\00", [25 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.1123\00", [25 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0902\00", [25 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0752\00", [25 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0645\00", [25 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0564\00", [25 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0501\00", [25 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0451\00", [25 x i8] zeroinitializer }, align 32
@sta350_limiter_release_rate = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212], [32 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.5116\00", [25 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.1370\00", [25 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0744\00", [25 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0499\00", [25 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0360\00", [25 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0299\00", [25 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0264\00", [25 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0208\00", [25 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0198\00", [25 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0172\00", [25 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0147\00", [25 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0137\00", [25 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0134\00", [25 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0117\00", [25 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0110\00", [25 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0104\00", [25 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LEFT\00", [27 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RIGHT\00", [26 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SUB\00", [28 x i8] zeroinitializer }, align 32
@sta350_dapm_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.213, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.216, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@sta350_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.6, i32 919, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sta350_probe\00", [19 x i8] zeroinitializer }, align 32
@sta350_probe._entry_ptr = internal global ptr @sta350_probe._entry, section ".printk_index", align 4
@sta350_probe._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.220, ptr @.str.6, i32 925, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to startup device\0A\00", [38 x i8] zeroinitializer }, align 32
@sta350_probe._entry_ptr.223 = internal global ptr @sta350_probe._entry.221, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sta350_set_bias_level.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.224, ptr @.str.225, ptr @.str.6, ptr @.str.226, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.224 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_sta350\00", [17 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sta350_set_bias_level\00", [42 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"level = %d\0A\00", [20 x i8] zeroinitializer }, align 32
@sta350_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.225, ptr @.str.6, i32 859, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@sta350_set_bias_level._entry_ptr = internal global ptr @sta350_set_bias_level._entry, section ".printk_index", align 4
@.str.227 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sta350-hifi\00", [20 x i8] zeroinitializer }, align 32
@sta350_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @sta350_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @sta350_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sta350_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sta350_set_dai_sysclk.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.224, ptr @.str.228, ptr @.str.6, ptr @.str.229, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.228 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sta350_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mclk=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@sta350_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.6, i32 690, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sta350->mclk is unset. Unable to determine ratio\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sta350_hw_params\00", [47 x i8] zeroinitializer }, align 32
@sta350_hw_params._entry_ptr = internal global ptr @sta350_hw_params._entry, section ".printk_index", align 4
@sta350_hw_params.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.224, ptr @.str.231, ptr @.str.6, ptr @.str.232, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.232 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rate: %u, ratio: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@interpolation_ratios = internal constant { [7 x %struct.anon.108], [40 x i8] } { [7 x %struct.anon.108] [%struct.anon.108 { i32 32000, i32 0 }, %struct.anon.108 { i32 44100, i32 0 }, %struct.anon.108 { i32 48000, i32 0 }, %struct.anon.108 { i32 88200, i32 1 }, %struct.anon.108 { i32 96000, i32 1 }, %struct.anon.108 { i32 176400, i32 2 }, %struct.anon.108 { i32 192000, i32 2 }], [40 x i8] zeroinitializer }, align 32
@sta350_hw_params._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.231, ptr @.str.6, i32 706, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported samplerate: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@sta350_hw_params._entry_ptr.235 = internal global ptr @sta350_hw_params._entry.233, section ".printk_index", align 4
@mcs_ratio_table = internal constant { [3 x [6 x i32]], [56 x i8] } { [3 x [6 x i32]] [[6 x i32] [i32 768, i32 512, i32 384, i32 256, i32 128, i32 576], [6 x i32] [i32 384, i32 256, i32 192, i32 128, i32 64, i32 0], [6 x i32] [i32 192, i32 128, i32 96, i32 64, i32 32, i32 0]], [56 x i8] zeroinitializer }, align 32
@sta350_hw_params._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.231, ptr @.str.6, i32 718, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unresolvable ratio: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@sta350_hw_params._entry_ptr.238 = internal global ptr @sta350_hw_params._entry.236, section ".printk_index", align 4
@sta350_hw_params.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.224, ptr @.str.231, ptr @.str.6, ptr @.str.239, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.239 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"24bit\0A\00", [25 x i8] zeroinitializer }, align 32
@sta350_hw_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.224, ptr @.str.231, ptr @.str.6, ptr @.str.240, i8 0, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.240 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"24bit or 32bit\0A\00", [16 x i8] zeroinitializer }, align 32
@sta350_hw_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.224, ptr @.str.231, ptr @.str.6, ptr @.str.241, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.241 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"20bit\0A\00", [25 x i8] zeroinitializer }, align 32
@sta350_hw_params.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.224, ptr @.str.231, ptr @.str.6, ptr @.str.242, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.242 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"18bit\0A\00", [25 x i8] zeroinitializer }, align 32
@sta350_hw_params.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.224, ptr @.str.231, ptr @.str.6, ptr @.str.243, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.243 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"16bit\0A\00", [25 x i8] zeroinitializer }, align 32
@switch.table.sta350_hw_params = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 6, i32 5], [20 x i8] zeroinitializer }, align 32
@switch.table.sta350_hw_params.244 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 10, i32 9], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 512]
@__sancov_gen_cov_switch_values.248 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.249 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.250 = private unnamed_addr constant [18 x i8] c"sta350_i2c_driver\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1261, i32 26 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1263, i32 11 }
@___asan_gen_.256 = private unnamed_addr constant [13 x i8] c"st350_dt_ids\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1079, i32 34 }
@___asan_gen_.259 = private unnamed_addr constant [14 x i8] c"sta350_i2c_id\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1255, i32 35 }
@___asan_gen_.262 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1201, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1213, i32 54 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1218, i32 58 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1230, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [14 x i8] c"sta350_regmap\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1066, i32 35 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1234, i32 19 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1237, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"sta350_component\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1049, i32 46 }
@___asan_gen_.310 = private unnamed_addr constant [11 x i8] c"sta350_dai\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 898, i32 34 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1245, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1104, i32 26 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1106, i32 26 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1108, i32 26 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1110, i32 26 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1113, i32 26 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1115, i32 26 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1117, i32 26 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1121, i32 35 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1130, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1137, i32 27 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1140, i32 26 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1144, i32 26 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1147, i32 26 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1150, i32 26 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1153, i32 26 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1156, i32 26 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1160, i32 26 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1164, i32 26 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1167, i32 26 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1170, i32 26 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1173, i32 26 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1176, i32 31 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1180, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1086, i32 31 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1087, i32 34 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1088, i32 32 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 1089, i32 39 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 159, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 160, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 161, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant [18 x i8] c"sta350_write_regs\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 142, i32 41 }
@___asan_gen_.424 = private unnamed_addr constant [17 x i8] c"sta350_read_regs\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 147, i32 41 }
@___asan_gen_.427 = private unnamed_addr constant [21 x i8] c"sta350_volatile_regs\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 152, i32 41 }
@___asan_gen_.430 = private unnamed_addr constant [12 x i8] c"sta350_regs\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 59, i32 33 }
@___asan_gen_.433 = private unnamed_addr constant [24 x i8] c"sta350_write_regs_range\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 123, i32 34 }
@___asan_gen_.436 = private unnamed_addr constant [23 x i8] c"sta350_read_regs_range\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 130, i32 34 }
@___asan_gen_.439 = private unnamed_addr constant [27 x i8] c"sta350_volatile_regs_range\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 137, i32 34 }
@___asan_gen_.442 = private unnamed_addr constant [20 x i8] c"sta350_snd_controls\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 442, i32 38 }
@___asan_gen_.445 = private unnamed_addr constant [19 x i8] c"sta350_dapm_routes\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 567, i32 40 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 443, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant [9 x i8] c"mvol_tlv\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 182, i32 14 }
@___asan_gen_.454 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 445, i32 1 }
@___asan_gen_.458 = private unnamed_addr constant [10 x i8] c"chvol_tlv\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 183, i32 14 }
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 446, i32 1 }
@___asan_gen_.465 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 447, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 449, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 451, i32 1 }
@___asan_gen_.477 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 453, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 455, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 457, i32 1 }
@___asan_gen_.489 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 459, i32 1 }
@___asan_gen_.493 = private unnamed_addr constant [19 x i8] c"sta350_drc_ac_enum\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 245, i32 8 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 460, i32 1 }
@___asan_gen_.499 = private unnamed_addr constant [25 x i8] c"sta350_noise_shaper_enum\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 248, i32 8 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 461, i32 1 }
@___asan_gen_.505 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 463, i32 1 }
@___asan_gen_.509 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 466, i32 1 }
@___asan_gen_.513 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 467, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 469, i32 1 }
@___asan_gen_.521 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 470, i32 1 }
@___asan_gen_.525 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 471, i32 1 }
@___asan_gen_.529 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 472, i32 1 }
@___asan_gen_.533 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 474, i32 1 }
@___asan_gen_.537 = private unnamed_addr constant [20 x i8] c"sta350_auto_gc_enum\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 251, i32 8 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 475, i32 1 }
@___asan_gen_.543 = private unnamed_addr constant [20 x i8] c"sta350_auto_xo_enum\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 254, i32 8 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 477, i32 1 }
@___asan_gen_.549 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 479, i32 1 }
@___asan_gen_.553 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 481, i32 1 }
@___asan_gen_.557 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 483, i32 1 }
@___asan_gen_.561 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 485, i32 1 }
@___asan_gen_.565 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 487, i32 1 }
@___asan_gen_.569 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 489, i32 1 }
@___asan_gen_.573 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 491, i32 1 }
@___asan_gen_.577 = private unnamed_addr constant [30 x i8] c"sta350_binary_output_ch1_enum\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 257, i32 8 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 492, i32 1 }
@___asan_gen_.583 = private unnamed_addr constant [30 x i8] c"sta350_binary_output_ch2_enum\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 260, i32 8 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 493, i32 1 }
@___asan_gen_.589 = private unnamed_addr constant [30 x i8] c"sta350_binary_output_ch3_enum\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 263, i32 8 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 494, i32 1 }
@___asan_gen_.595 = private unnamed_addr constant [24 x i8] c"sta350_limiter_ch1_enum\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 266, i32 8 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 495, i32 1 }
@___asan_gen_.601 = private unnamed_addr constant [24 x i8] c"sta350_limiter_ch2_enum\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 269, i32 8 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 496, i32 1 }
@___asan_gen_.607 = private unnamed_addr constant [24 x i8] c"sta350_limiter_ch3_enum\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 272, i32 8 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 498, i32 1 }
@___asan_gen_.613 = private unnamed_addr constant [9 x i8] c"tone_tlv\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 184, i32 14 }
@___asan_gen_.616 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 500, i32 1 }
@___asan_gen_.620 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 502, i32 1 }
@___asan_gen_.624 = private unnamed_addr constant [33 x i8] c"sta350_limiter1_attack_rate_enum\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 275, i32 8 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 503, i32 1 }
@___asan_gen_.630 = private unnamed_addr constant [33 x i8] c"sta350_limiter2_attack_rate_enum\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 278, i32 8 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 504, i32 1 }
@___asan_gen_.636 = private unnamed_addr constant [34 x i8] c"sta350_limiter1_release_rate_enum\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 281, i32 8 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 505, i32 1 }
@___asan_gen_.642 = private unnamed_addr constant [34 x i8] c"sta350_limiter2_release_rate_enum\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 284, i32 8 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 511, i32 1 }
@___asan_gen_.648 = private unnamed_addr constant [29 x i8] c"sta350_limiter_ac_attack_tlv\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 218, i32 8 }
@___asan_gen_.651 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 514, i32 1 }
@___asan_gen_.655 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 517, i32 1 }
@___asan_gen_.659 = private unnamed_addr constant [30 x i8] c"sta350_limiter_ac_release_tlv\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 223, i32 8 }
@___asan_gen_.662 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 520, i32 1 }
@___asan_gen_.666 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 523, i32 1 }
@___asan_gen_.670 = private unnamed_addr constant [30 x i8] c"sta350_limiter_drc_attack_tlv\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 231, i32 8 }
@___asan_gen_.673 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 526, i32 1 }
@___asan_gen_.677 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 529, i32 1 }
@___asan_gen_.681 = private unnamed_addr constant [31 x i8] c"sta350_limiter_drc_release_tlv\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 237, i32 8 }
@___asan_gen_.684 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 532, i32 1 }
@___asan_gen_.688 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 536, i32 1 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 537, i32 1 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 538, i32 1 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 539, i32 1 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 540, i32 1 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 541, i32 1 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 542, i32 1 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 543, i32 1 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 544, i32 1 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 545, i32 1 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 546, i32 1 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 547, i32 1 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 548, i32 1 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 549, i32 1 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 550, i32 1 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 551, i32 1 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 552, i32 1 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 553, i32 1 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 554, i32 1 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 555, i32 1 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 556, i32 1 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 557, i32 1 }
@___asan_gen_.755 = private unnamed_addr constant [14 x i8] c"sta350_drc_ac\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 186, i32 27 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 187, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 187, i32 19 }
@___asan_gen_.764 = private unnamed_addr constant [25 x i8] c"sta350_noise_shaper_type\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 214, i32 27 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 215, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 215, i32 17 }
@___asan_gen_.773 = private unnamed_addr constant [20 x i8] c"sta350_auto_gc_mode\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 189, i32 27 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 190, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 190, i32 10 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 190, i32 28 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 191, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant [20 x i8] c"sta350_auto_xo_mode\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 193, i32 27 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 194, i32 10 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 194, i32 18 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 194, i32 27 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 194, i32 36 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 194, i32 45 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 194, i32 54 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 195, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 195, i32 11 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 195, i32 20 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 195, i32 29 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 195, i32 38 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 195, i32 47 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 195, i32 56 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 196, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 196, i32 11 }
@___asan_gen_.836 = private unnamed_addr constant [21 x i8] c"sta350_binary_output\00", align 1
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 198, i32 27 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 199, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 199, i32 43 }
@___asan_gen_.845 = private unnamed_addr constant [22 x i8] c"sta350_limiter_select\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 201, i32 27 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 202, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 202, i32 22 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 202, i32 36 }
@___asan_gen_.857 = private unnamed_addr constant [27 x i8] c"sta350_limiter_attack_rate\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 204, i32 27 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 205, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 205, i32 12 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 205, i32 22 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 205, i32 32 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 205, i32 42 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 205, i32 52 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 206, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 206, i32 12 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 206, i32 22 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 206, i32 32 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 206, i32 42 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 206, i32 52 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 207, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 207, i32 12 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 207, i32 22 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 207, i32 32 }
@___asan_gen_.908 = private unnamed_addr constant [28 x i8] c"sta350_limiter_release_rate\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 209, i32 27 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 210, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 210, i32 12 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 210, i32 22 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 210, i32 32 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 210, i32 42 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 210, i32 52 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 211, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 211, i32 12 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 211, i32 22 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 211, i32 32 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 211, i32 42 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 211, i32 52 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 212, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 212, i32 12 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 212, i32 22 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 212, i32 32 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 561, i32 1 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 562, i32 1 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 563, i32 1 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 564, i32 1 }
@___asan_gen_.971 = private unnamed_addr constant [20 x i8] c"sta350_dapm_widgets\00", align 1
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 560, i32 41 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 571, i32 17 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 919, i32 3 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 925, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 839, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 857, i32 5 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 899, i32 10 }
@___asan_gen_.1007 = private unnamed_addr constant [15 x i8] c"sta350_dai_ops\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 892, i32 37 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 615, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 689, i32 3 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 696, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant [21 x i8] c"interpolation_ratios\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 578, i32 3 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 706, i32 3 }
@___asan_gen_.1037 = private unnamed_addr constant [16 x i8] c"mcs_ratio_table\00", align 1
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 589, i32 12 }
@___asan_gen_.1040 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 718, i32 3 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 728, i32 3 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 731, i32 3 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 746, i32 3 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 761, i32 3 }
@___asan_gen_.1058 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1059 = private constant [29 x i8] c"../sound/soc/codecs/sta350.c\00", align 1
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1059, i32 776, i32 3 }
@___asan_gen_.1061 = private unnamed_addr constant [30 x i8] c"switch.table.sta350_hw_params\00", align 1
@___asan_gen_.1062 = private unnamed_addr constant [34 x i8] c"switch.table.sta350_hw_params.244\00", align 1
@llvm.compiler.used = appending global [313 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_sta350_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_sta350__306_1271_sta350_i2c_driver_init6, ptr @sta350_hw_params._entry, ptr @sta350_hw_params._entry.233, ptr @sta350_hw_params._entry.236, ptr @sta350_hw_params._entry_ptr, ptr @sta350_hw_params._entry_ptr.235, ptr @sta350_hw_params._entry_ptr.238, ptr @sta350_i2c_driver_exit, ptr @sta350_i2c_probe._entry, ptr @sta350_i2c_probe._entry.10, ptr @sta350_i2c_probe._entry.13, ptr @sta350_i2c_probe._entry_ptr, ptr @sta350_i2c_probe._entry_ptr.12, ptr @sta350_i2c_probe._entry_ptr.15, ptr @sta350_probe._entry, ptr @sta350_probe._entry.221, ptr @sta350_probe._entry_ptr, ptr @sta350_probe._entry_ptr.223, ptr @sta350_probe_dt._entry, ptr @sta350_probe_dt._entry.40, ptr @sta350_probe_dt._entry_ptr, ptr @sta350_probe_dt._entry_ptr.42, ptr @sta350_set_bias_level._entry, ptr @sta350_set_bias_level._entry_ptr, ptr @sta350_i2c_driver, ptr @.str, ptr @st350_dt_ids, ptr @sta350_i2c_id, ptr @sta350_i2c_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sta350_i2c_probe._key, ptr @sta350_regmap, ptr @.str.9, ptr @.str.11, ptr @sta350_component, ptr @sta350_dai, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @sta350_write_regs, ptr @sta350_read_regs, ptr @sta350_volatile_regs, ptr @sta350_regs, ptr @sta350_write_regs_range, ptr @sta350_read_regs_range, ptr @sta350_volatile_regs_range, ptr @sta350_snd_controls, ptr @sta350_dapm_routes, ptr @.str.50, ptr @mvol_tlv, ptr @.compoundliteral, ptr @.str.51, ptr @chvol_tlv, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @sta350_drc_ac_enum, ptr @.str.68, ptr @sta350_noise_shaper_enum, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @sta350_auto_gc_enum, ptr @.str.86, ptr @sta350_auto_xo_enum, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @sta350_binary_output_ch1_enum, ptr @.str.102, ptr @sta350_binary_output_ch2_enum, ptr @.str.103, ptr @sta350_binary_output_ch3_enum, ptr @.str.104, ptr @sta350_limiter_ch1_enum, ptr @.str.105, ptr @sta350_limiter_ch2_enum, ptr @.str.106, ptr @sta350_limiter_ch3_enum, ptr @.str.107, ptr @tone_tlv, ptr @.compoundliteral.108, ptr @.str.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @sta350_limiter1_attack_rate_enum, ptr @.str.112, ptr @sta350_limiter2_attack_rate_enum, ptr @.str.113, ptr @sta350_limiter1_release_rate_enum, ptr @.str.114, ptr @sta350_limiter2_release_rate_enum, ptr @.str.115, ptr @sta350_limiter_ac_attack_tlv, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @sta350_limiter_ac_release_tlv, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @sta350_limiter_drc_attack_tlv, ptr @.compoundliteral.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.str.127, ptr @sta350_limiter_drc_release_tlv, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @sta350_drc_ac, ptr @.str.153, ptr @.str.154, ptr @sta350_noise_shaper_type, ptr @.str.155, ptr @.str.156, ptr @sta350_auto_gc_mode, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @sta350_auto_xo_mode, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @sta350_binary_output, ptr @.str.176, ptr @.str.177, ptr @sta350_limiter_select, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @sta350_limiter_attack_rate, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @sta350_limiter_release_rate, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @sta350_dapm_widgets, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.222, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @sta350_dai_ops, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @interpolation_ratios, ptr @.str.234, ptr @mcs_ratio_table, ptr @.str.237, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @switch.table.sta350_hw_params, ptr @switch.table.sta350_hw_params.244], section "llvm.metadata"
@0 = internal global [295 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st350_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_probe_dt._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_write_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_read_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_regs to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_write_regs_range to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_read_regs_range to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_volatile_regs_range to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_snd_controls to i32), i32 3360, i32 4192, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_dapm_routes to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chvol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_drc_ac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_noise_shaper_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_auto_gc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_auto_xo_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_binary_output_ch1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_binary_output_ch2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_binary_output_ch3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter_ch1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter_ch2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter_ch3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tone_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter1_attack_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter2_attack_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter1_release_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter2_release_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter_ac_attack_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter_ac_release_tlv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter_drc_attack_tlv to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter_drc_release_tlv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_drc_ac to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_noise_shaper_type to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_auto_gc_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_auto_xo_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_binary_output to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter_select to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter_attack_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_limiter_release_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_dapm_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_probe._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interpolation_ratios to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_hw_params._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs_ratio_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta350_hw_params._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sta350_hw_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sta350_hw_params.244 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sta350_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sta350_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sta350_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @sta350_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta350_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ffx_power_mode.i = alloca ptr, align 4
  %tmp.i = alloca i16, align 2
  %tmp8.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 404, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %coeff_lock = getelementptr inbounds %struct.sta350_priv, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %coeff_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sta350_i2c_probe.__key) #9
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.sta350_priv, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pdata, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %do.body.if.end8_crit_edge, label %if.then4

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %do.body
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ffx_power_mode.i) #9
  %7 = ptrtoint ptr %ffx_power_mode.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %ffx_power_mode.i, align 4, !annotation !537
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #9
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %tmp.i, align 2, !annotation !537
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8.i) #9
  %9 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %tmp8.i, align 1, !annotation !537
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sta350_probe_dt.exit.thread, label %if.end.i

sta350_probe_dt.exit.thread:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ffx_power_mode.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then4
  %call.i.i.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %6, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0) #9
  %ch1_output_mapping.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 1
  %call.i.i229.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %6, ptr noundef nonnull @.str.17, ptr noundef %ch1_output_mapping.i, i32 noundef 1, i32 noundef 0) #9
  %ch2_output_mapping.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 2
  %call.i.i230.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef %ch2_output_mapping.i, i32 noundef 1, i32 noundef 0) #9
  %ch3_output_mapping.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 3
  %call.i.i231.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %6, ptr noundef nonnull @.str.19, ptr noundef %ch3_output_mapping.i, i32 noundef 1, i32 noundef 0) #9
  %call5.i = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef null) #9
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then7.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %thermal_warning_recovery.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %thermal_warning_recovery.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %bf.load.i = load i16, ptr %thermal_warning_recovery.i, align 1
  %bf.set.i = or i16 %bf.load.i, -32768
  store i16 %bf.set.i, ptr %thermal_warning_recovery.i, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i.if.end8.i_crit_edge
  %call9.i = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.21, ptr noundef null) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end8.i.if.end15.i_crit_edge, label %if.then11.i

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %thermal_warning_adjustment.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %thermal_warning_adjustment.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %bf.load12.i = load i16, ptr %thermal_warning_adjustment.i, align 1
  %bf.set14.i = or i16 %bf.load12.i, 16384
  store i16 %bf.set14.i, ptr %thermal_warning_adjustment.i, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end15.i_crit_edge
  %call16.i = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.22, ptr noundef null) #9
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end22.i_crit_edge, label %if.then18.i

if.end15.i.if.end22.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %fault_detect_recovery.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %fault_detect_recovery.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %bf.load19.i = load i16, ptr %fault_detect_recovery.i, align 1
  %bf.set21.i = or i16 %bf.load19.i, 8192
  store i16 %bf.set21.i, ptr %fault_detect_recovery.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end22.i_crit_edge
  %ffx_power_output_mode.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %ffx_power_output_mode.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %ffx_power_output_mode.i, align 4
  %call23.i = call i32 @of_property_read_string(ptr noundef %6, ptr noundef nonnull @.str.23, ptr noundef nonnull %ffx_power_mode.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %for.cond.preheader.i, label %if.end22.i.if.end34.i_crit_edge

if.end22.i.if.end34.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.cond.preheader.i:                             ; preds = %if.end22.i
  %14 = ptrtoint ptr %ffx_power_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ffx_power_mode.i, align 4
  %call26.i = call i32 @strcasecmp(ptr noundef %15, ptr noundef nonnull @.str.43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  %spec.select.i = select i1 %tobool27.not.i, i32 0, i32 -22
  %call26.1.i = call i32 @strcasecmp(ptr noundef %15, ptr noundef nonnull @.str.44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.1.i)
  %tobool27.not.1.i = icmp eq i32 %call26.1.i, 0
  %spec.select.1.i = select i1 %tobool27.not.1.i, i32 1, i32 %spec.select.i
  %call26.2.i = call i32 @strcasecmp(ptr noundef %15, ptr noundef nonnull @.str.45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.2.i)
  %tobool27.not.2.i = icmp eq i32 %call26.2.i, 0
  %spec.select.2.i = select i1 %tobool27.not.2.i, i32 2, i32 %spec.select.1.i
  %call26.3.i = call i32 @strcasecmp(ptr noundef %15, ptr noundef nonnull @.str.46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.3.i)
  %tobool27.not.3.i = icmp eq i32 %call26.3.i, 0
  %spec.select.3.i = select i1 %tobool27.not.3.i, i32 3, i32 %spec.select.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.3.i)
  %cmp30.i = icmp slt i32 %spec.select.3.i, 0
  br i1 %cmp30.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef %15) #12
  br label %if.end34.i

if.else.i:                                        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i32 %spec.select.3.i to i8
  %16 = ptrtoint ptr %ffx_power_output_mode.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %ffx_power_output_mode.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %do.end.i, %if.end22.i.if.end34.i_crit_edge
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 140, ptr %tmp.i, align 2
  %call.i.i232.i = call i32 @of_property_read_variable_u16_array(ptr noundef %6, ptr noundef nonnull @.str.27, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #9
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tmp.i, align 2
  %20 = call i16 @llvm.umin.i16(i16 %19, i16 300) #9
  %div.i = udiv i16 %20, 20
  %conv55.i = trunc i16 %div.i to i8
  %drop_compensation_ns.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %drop_compensation_ns.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv55.i, ptr %drop_compensation_ns.i, align 1
  %call56.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.28, ptr noundef null) #9
  %tobool57.not.i = icmp eq ptr %call56.i, null
  br i1 %tobool57.not.i, label %if.end34.i.if.end62.i_crit_edge, label %if.then58.i

if.end34.i.if.end62.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.then58.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %oc_warning_adjustment.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %oc_warning_adjustment.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %bf.load59.i = load i16, ptr %oc_warning_adjustment.i, align 1
  %bf.set61.i = or i16 %bf.load59.i, 4096
  store i16 %bf.set61.i, ptr %oc_warning_adjustment.i, align 1
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then58.i, %if.end34.i.if.end62.i_crit_edge
  %call63.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.29, ptr noundef null) #9
  %tobool64.not.i = icmp eq ptr %call63.i, null
  br i1 %tobool64.not.i, label %if.end62.i.if.end69.i_crit_edge, label %if.then65.i

if.end62.i.if.end69.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then65.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  %max_power_use_mpcc.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %max_power_use_mpcc.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %bf.load66.i = load i16, ptr %max_power_use_mpcc.i, align 1
  %bf.set68.i = or i16 %bf.load66.i, 2048
  store i16 %bf.set68.i, ptr %max_power_use_mpcc.i, align 1
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then65.i, %if.end62.i.if.end69.i_crit_edge
  %call70.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef null) #9
  %tobool71.not.i = icmp eq ptr %call70.i, null
  br i1 %tobool71.not.i, label %if.end69.i.if.end76.i_crit_edge, label %if.then72.i

if.end69.i.if.end76.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

if.then72.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  %max_power_correction.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %max_power_correction.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %bf.load73.i = load i16, ptr %max_power_correction.i, align 1
  %bf.set75.i = or i16 %bf.load73.i, 1024
  store i16 %bf.set75.i, ptr %max_power_correction.i, align 1
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then72.i, %if.end69.i.if.end76.i_crit_edge
  %call77.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.31, ptr noundef null) #9
  %tobool78.not.i = icmp eq ptr %call77.i, null
  br i1 %tobool78.not.i, label %if.end76.i.if.end83.i_crit_edge, label %if.then79.i

if.end76.i.if.end83.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

if.then79.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  %am_reduction_mode.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %am_reduction_mode.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %bf.load80.i = load i16, ptr %am_reduction_mode.i, align 1
  %bf.set82.i = or i16 %bf.load80.i, 512
  store i16 %bf.set82.i, ptr %am_reduction_mode.i, align 1
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then79.i, %if.end76.i.if.end83.i_crit_edge
  %call84.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef null) #9
  %tobool85.not.i = icmp eq ptr %call84.i, null
  br i1 %tobool85.not.i, label %if.end83.i.if.end90.i_crit_edge, label %if.then86.i

if.end83.i.if.end90.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i

if.then86.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  %odd_pwm_speed_mode.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %odd_pwm_speed_mode.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %bf.load87.i = load i16, ptr %odd_pwm_speed_mode.i, align 1
  %bf.set89.i = or i16 %bf.load87.i, 256
  store i16 %bf.set89.i, ptr %odd_pwm_speed_mode.i, align 1
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then86.i, %if.end83.i.if.end90.i_crit_edge
  %call91.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.33, ptr noundef null) #9
  %tobool92.not.i = icmp eq ptr %call91.i, null
  br i1 %tobool92.not.i, label %if.end90.i.if.end97.i_crit_edge, label %if.then93.i

if.end90.i.if.end97.i_crit_edge:                  ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.i

if.then93.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  %distortion_compensation.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %distortion_compensation.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %bf.load94.i = load i16, ptr %distortion_compensation.i, align 1
  %bf.set96.i = or i16 %bf.load94.i, 128
  store i16 %bf.set96.i, ptr %distortion_compensation.i, align 1
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then93.i, %if.end90.i.if.end97.i_crit_edge
  %call98.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.34, ptr noundef null) #9
  %tobool99.not.i = icmp eq ptr %call98.i, null
  br i1 %tobool99.not.i, label %if.end97.i.if.end104.i_crit_edge, label %if.then100.i

if.end97.i.if.end104.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i

if.then100.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #11
  %invalid_input_detect_mute.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %invalid_input_detect_mute.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %bf.load101.i = load i16, ptr %invalid_input_detect_mute.i, align 1
  %bf.set103.i = or i16 %bf.load101.i, 64
  store i16 %bf.set103.i, ptr %invalid_input_detect_mute.i, align 1
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then100.i, %if.end97.i.if.end104.i_crit_edge
  %call105.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.35, ptr noundef null) #9
  %tobool106.not.i = icmp eq ptr %call105.i, null
  br i1 %tobool106.not.i, label %if.end104.i.if.end111.i_crit_edge, label %if.then107.i

if.end104.i.if.end111.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111.i

if.then107.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  %activate_mute_output.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %activate_mute_output.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %bf.load108.i = load i16, ptr %activate_mute_output.i, align 1
  %bf.set110.i = or i16 %bf.load108.i, 32
  store i16 %bf.set110.i, ptr %activate_mute_output.i, align 1
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then107.i, %if.end104.i.if.end111.i_crit_edge
  %call112.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.36, ptr noundef null) #9
  %tobool113.not.i = icmp eq ptr %call112.i, null
  br i1 %tobool113.not.i, label %if.end111.i.if.end118.i_crit_edge, label %if.then114.i

if.end111.i.if.end118.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118.i

if.then114.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #11
  %bridge_immediate_off.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %30 = ptrtoint ptr %bridge_immediate_off.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %bf.load115.i = load i16, ptr %bridge_immediate_off.i, align 1
  %bf.set117.i = or i16 %bf.load115.i, 16
  store i16 %bf.set117.i, ptr %bridge_immediate_off.i, align 1
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then114.i, %if.end111.i.if.end118.i_crit_edge
  %call119.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.37, ptr noundef null) #9
  %tobool120.not.i = icmp eq ptr %call119.i, null
  br i1 %tobool120.not.i, label %if.end118.i.if.end125.i_crit_edge, label %if.then121.i

if.end118.i.if.end125.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125.i

if.then121.i:                                     ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #11
  %noise_shape_dc_cut.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %noise_shape_dc_cut.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %bf.load122.i = load i16, ptr %noise_shape_dc_cut.i, align 1
  %bf.set124.i = or i16 %bf.load122.i, 8
  store i16 %bf.set124.i, ptr %noise_shape_dc_cut.i, align 1
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then121.i, %if.end118.i.if.end125.i_crit_edge
  %call126.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.38, ptr noundef null) #9
  %tobool127.not.i = icmp eq ptr %call126.i, null
  br i1 %tobool127.not.i, label %if.end125.i.if.end132.i_crit_edge, label %if.then128.i

if.end125.i.if.end132.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.i

if.then128.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #11
  %powerdown_master_vol.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %powerdown_master_vol.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %bf.load129.i = load i16, ptr %powerdown_master_vol.i, align 1
  %bf.set131.i = or i16 %bf.load129.i, 4
  store i16 %bf.set131.i, ptr %powerdown_master_vol.i, align 1
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then128.i, %if.end125.i.if.end132.i_crit_edge
  %call.i.i233.i = call i32 @of_property_read_variable_u8_array(ptr noundef %6, ptr noundef nonnull @.str.39, ptr noundef nonnull %tmp8.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i233.i)
  %tobool134.not.i = icmp sgt i32 %call.i.i233.i, -1
  br i1 %tobool134.not.i, label %if.then135.i, label %if.end132.i.sta350_probe_dt.exit_crit_edge

if.end132.i.sta350_probe_dt.exit_crit_edge:       ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sta350_probe_dt.exit

if.then135.i:                                     ; preds = %if.end132.i
  %33 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tmp8.i, align 1
  %conv136.i = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.not.i.i = icmp eq i8 %34, 0
  br i1 %cmp.not.i.i, label %if.then135.i.do.end165.i_crit_edge, label %is_power_of_2.exit.i

if.then135.i.do.end165.i_crit_edge:               ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end165.i

is_power_of_2.exit.i:                             ; preds = %if.then135.i
  %35 = call i32 @llvm.ctpop.i32(i32 %conv136.i) #9, !range !538
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp1.i.i = icmp ult i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %34)
  %cmp144.i = icmp ult i8 %34, -127
  %or.cond228.i = select i1 %cmp1.i.i, i1 %cmp144.i, i1 false
  br i1 %or.cond228.i, label %cond.end159.i, label %is_power_of_2.exit.i.do.end165.i_crit_edge

is_power_of_2.exit.i.do.end165.i_crit_edge:       ; preds = %is_power_of_2.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end165.i

cond.end159.i:                                    ; preds = %is_power_of_2.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = call i8 @llvm.ctlz.i8(i8 %34, i1 true), !range !539
  %conv161.i = xor i8 %36, 7
  %powerdown_delay_divider.i = getelementptr inbounds %struct.sta350_platform_data, ptr %call.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %powerdown_delay_divider.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv161.i, ptr %powerdown_delay_divider.i, align 2
  br label %sta350_probe_dt.exit

do.end165.i:                                      ; preds = %is_power_of_2.exit.i.do.end165.i_crit_edge, %if.then135.i.do.end165.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef %conv136.i) #12
  br label %sta350_probe_dt.exit

sta350_probe_dt.exit:                             ; preds = %do.end165.i, %cond.end159.i, %if.end132.i.sta350_probe_dt.exit_crit_edge
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i, ptr %pdata, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ffx_power_mode.i) #9
  br label %if.end8

if.end8:                                          ; preds = %sta350_probe_dt.exit, %do.body.if.end8_crit_edge
  %call9 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 3) #9
  %gpiod_nreset = getelementptr inbounds %struct.sta350_priv, ptr %call.i, i32 0, i32 7
  %39 = ptrtoint ptr %gpiod_nreset to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call9, ptr %gpiod_nreset, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 3) #9
  %gpiod_power_down = getelementptr inbounds %struct.sta350_priv, ptr %call.i, i32 0, i32 8
  %41 = ptrtoint ptr %gpiod_power_down to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call16, ptr %gpiod_power_down, align 4
  %cmp.i92 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then19, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end15
  %arrayidx24 = getelementptr %struct.sta350_priv, ptr %call.i, i32 0, i32 1, i32 0
  %42 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.47, ptr %arrayidx24, align 4
  %arrayidx24.1 = getelementptr %struct.sta350_priv, ptr %call.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.48, ptr %arrayidx24.1, align 4
  %arrayidx24.2 = getelementptr %struct.sta350_priv, ptr %call.i, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.49, ptr %arrayidx24.2, align 4
  %call26 = call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end32

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %call16 to i32
  br label %cleanup

do.end31:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call26) #12
  br label %cleanup

if.end32:                                         ; preds = %for.body.preheader
  %call33 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @sta350_regmap, ptr noundef nonnull @sta350_i2c_probe._key, ptr noundef nonnull @.str.9) #9
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call33, ptr %call.i, align 4
  %cmp.i93 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %call33 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %47) #12
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call43 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @sta350_component, ptr noundef nonnull @sta350_dai, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call43) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %if.end42.cleanup_crit_edge, %if.then36, %do.end31, %if.then19, %if.then12, %sta350_probe_dt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %40, %if.then12 ], [ %45, %if.then19 ], [ %call26, %do.end31 ], [ %47, %if.then36 ], [ -12, %entry.cleanup_crit_edge ], [ %call43, %do.end48 ], [ %call43, %if.end42.cleanup_crit_edge ], [ -12, %sta350_probe_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sta350_i2c_remove(ptr nocapture noundef readnone %client) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta350_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.sta350_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  %supplies = getelementptr inbounds %struct.sta350_priv, ptr %3, i32 0, i32 1
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.219, i32 noundef %call2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpiod_power_down.i = getelementptr inbounds %struct.sta350_priv, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %gpiod_power_down.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpiod_power_down.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %9, i32 noundef 1) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %gpiod_nreset.i = getelementptr inbounds %struct.sta350_priv, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %gpiod_nreset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpiod_nreset.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.sta350_startup_sequence.exit_crit_edge, label %if.then3.i

if.end.i.sta350_startup_sequence.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sta350_startup_sequence.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %11, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #9
  %13 = ptrtoint ptr %gpiod_nreset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpiod_nreset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %14, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #9
  br label %sta350_startup_sequence.exit

sta350_startup_sequence.exit:                     ; preds = %if.then3.i, %if.end.i.sta350_startup_sequence.exit_crit_edge
  %thermal_warning_recovery = getelementptr inbounds %struct.sta350_platform_data, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %bf.load = load i16, ptr %thermal_warning_recovery, align 1
  %17 = lshr i16 %bf.load, 9
  %18 = and i16 %17, 64
  %19 = xor i16 %18, 64
  %20 = zext i16 %19 to i32
  %21 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool16.not = icmp eq i16 %21, 0
  %or18 = or i32 %20, 32
  %thermal.1 = select i1 %tobool16.not, i32 %or18, i32 %20
  %22 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool24.not = icmp eq i16 %22, 0
  %or26 = or i32 %thermal.1, 128
  %thermal.2 = select i1 %tobool24.not, i32 %or26, i32 %thermal.1
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 0, i32 noundef 224, i32 noundef %thermal.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %ffx_power_output_mode = getelementptr inbounds %struct.sta350_platform_data, ptr %5, i32 0, i32 4
  %27 = ptrtoint ptr %ffx_power_output_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ffx_power_output_mode, align 4
  %conv = zext i8 %28 to i32
  %call.i234 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 2, i32 noundef 3, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %drop_compensation_ns = getelementptr inbounds %struct.sta350_platform_data, ptr %5, i32 0, i32 5
  %31 = ptrtoint ptr %drop_compensation_ns to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %drop_compensation_ns, align 1
  %conv32 = zext i8 %32 to i32
  %shl33 = shl nuw nsw i32 %conv32, 2
  %call.i235 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 2, i32 noundef 60, i32 noundef %shl33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %35 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %bf.load36 = load i16, ptr %thermal_warning_recovery, align 1
  %36 = lshr i16 %bf.load36, 5
  %37 = and i16 %36, 128
  %38 = zext i16 %37 to i32
  %call.i236 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 2, i32 noundef 128, i32 noundef %38, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %41 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %bf.load43 = load i16, ptr %thermal_warning_recovery, align 1
  %42 = lshr i16 %bf.load43, 11
  %.lobit = and i16 %42, 1
  %43 = zext i16 %.lobit to i32
  %call.i237 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 4, i32 noundef 1, i32 noundef %43, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %46 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %bf.load51 = load i16, ptr %thermal_warning_recovery, align 1
  %47 = lshr i16 %bf.load51, 9
  %48 = and i16 %47, 2
  %49 = zext i16 %48 to i32
  %call.i238 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 4, i32 noundef 2, i32 noundef %49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %52 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %bf.load59 = load i16, ptr %thermal_warning_recovery, align 1
  %53 = lshr i16 %bf.load59, 6
  %54 = and i16 %53, 8
  %55 = zext i16 %54 to i32
  %call.i239 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 4, i32 noundef 8, i32 noundef %55, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %58 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %bf.load67 = load i16, ptr %thermal_warning_recovery, align 1
  %59 = lshr i16 %bf.load67, 4
  %60 = and i16 %59, 16
  %61 = zext i16 %60 to i32
  %call.i240 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 4, i32 noundef 16, i32 noundef %61, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  %64 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %bf.load75 = load i16, ptr %thermal_warning_recovery, align 1
  %65 = lshr i16 %bf.load75, 2
  %66 = and i16 %65, 32
  %67 = zext i16 %66 to i32
  %call.i241 = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 4, i32 noundef 32, i32 noundef %67, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %3, align 4
  %70 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %bf.load83 = load i16, ptr %thermal_warning_recovery, align 1
  %71 = lshr i16 %bf.load83, 4
  %72 = and i16 %71, 4
  %73 = zext i16 %72 to i32
  %call.i242 = tail call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 5, i32 noundef 4, i32 noundef %73, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %3, align 4
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %5, align 4
  %conv91 = zext i8 %77 to i32
  %call.i243 = tail call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 5, i32 noundef 3, i32 noundef %conv91, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %3, align 4
  %ch1_output_mapping = getelementptr inbounds %struct.sta350_platform_data, ptr %5, i32 0, i32 1
  %80 = ptrtoint ptr %ch1_output_mapping to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ch1_output_mapping, align 1
  %conv95 = zext i8 %81 to i32
  %shl96 = shl nuw nsw i32 %conv95, 6
  %call.i244 = tail call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 14, i32 noundef 192, i32 noundef %shl96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %3, align 4
  %ch2_output_mapping = getelementptr inbounds %struct.sta350_platform_data, ptr %5, i32 0, i32 2
  %84 = ptrtoint ptr %ch2_output_mapping to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ch2_output_mapping, align 2
  %conv99 = zext i8 %85 to i32
  %shl100 = shl nuw nsw i32 %conv99, 6
  %call.i245 = tail call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 15, i32 noundef 192, i32 noundef %shl100, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %3, align 4
  %ch3_output_mapping = getelementptr inbounds %struct.sta350_platform_data, ptr %5, i32 0, i32 3
  %88 = ptrtoint ptr %ch3_output_mapping to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ch3_output_mapping, align 1
  %conv103 = zext i8 %89 to i32
  %shl104 = shl nuw nsw i32 %conv103, 6
  %call.i246 = tail call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 16, i32 noundef 192, i32 noundef %shl104, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %3, align 4
  %92 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %bf.load107 = load i16, ptr %thermal_warning_recovery, align 1
  %93 = lshr i16 %bf.load107, 3
  %94 = and i16 %93, 4
  %95 = zext i16 %94 to i32
  %call.i247 = tail call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 75, i32 noundef 4, i32 noundef %95, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %3, align 4
  %98 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %bf.load115 = load i16, ptr %thermal_warning_recovery, align 1
  %99 = shl i16 %bf.load115, 1
  %100 = and i16 %99, 32
  %101 = zext i16 %100 to i32
  %call.i248 = tail call i32 @regmap_update_bits_base(ptr noundef %97, i32 noundef 75, i32 noundef 32, i32 noundef %101, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %3, align 4
  %104 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %bf.load123 = load i16, ptr %thermal_warning_recovery, align 1
  %105 = shl i16 %bf.load123, 3
  %106 = and i16 %105, 64
  %107 = zext i16 %106 to i32
  %call.i249 = tail call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef 75, i32 noundef 64, i32 noundef %107, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %108 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %3, align 4
  %110 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %bf.load131 = load i16, ptr %thermal_warning_recovery, align 1
  %111 = shl i16 %bf.load131, 5
  %112 = and i16 %111, 128
  %113 = zext i16 %112 to i32
  %call.i250 = tail call i32 @regmap_update_bits_base(ptr noundef %109, i32 noundef 75, i32 noundef 128, i32 noundef %113, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %114 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %3, align 4
  %powerdown_delay_divider = getelementptr inbounds %struct.sta350_platform_data, ptr %5, i32 0, i32 6
  %116 = ptrtoint ptr %powerdown_delay_divider to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %powerdown_delay_divider, align 2
  %conv139 = zext i8 %117 to i32
  %shl140 = shl nuw nsw i32 %conv139, 2
  %call.i251 = tail call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef 76, i32 noundef 28, i32 noundef %shl140, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 4
  %118 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 4194304, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 9
  %119 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 4194304, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 14
  %120 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 4194304, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 19
  %121 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 4194304, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 24
  %122 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 4194304, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 29
  %123 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 4194304, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 34
  %124 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 4194304, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 39
  %125 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 4194304, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 44
  %126 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 4194304, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 49
  %127 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 4194304, ptr %arrayidx.9, align 4
  %arrayidx149 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 50
  %128 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 8388607, ptr %arrayidx149, align 4
  %arrayidx149.1 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 51
  %129 = ptrtoint ptr %arrayidx149.1 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 8388607, ptr %arrayidx149.1, align 4
  %arrayidx149.2 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 52
  %130 = ptrtoint ptr %arrayidx149.2 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 8388607, ptr %arrayidx149.2, align 4
  %arrayidx149.3 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 53
  %131 = ptrtoint ptr %arrayidx149.3 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 8388607, ptr %arrayidx149.3, align 4
  %arrayidx149.4 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 54
  %132 = ptrtoint ptr %arrayidx149.4 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 8388607, ptr %arrayidx149.4, align 4
  %arrayidx153 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 55
  %133 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 5938679, ptr %arrayidx153, align 4
  %arrayidx155 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 56
  %134 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 8388607, ptr %arrayidx155, align 4
  %arrayidx157 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 59
  %135 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 8388607, ptr %arrayidx157, align 4
  %arrayidx159 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 60
  %136 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 4194304, ptr %arrayidx159, align 4
  %arrayidx161 = getelementptr %struct.sta350_priv, ptr %3, i32 0, i32 5, i32 61
  %137 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 4194304, ptr %arrayidx161, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 1) #9
  %call165 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #9
  br label %cleanup

cleanup:                                          ; preds = %sta350_startup_sequence.exit, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %sta350_startup_sequence.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sta350_remove(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.sta350_priv, ptr %3, i32 0, i32 1
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta350_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
entry:
  %cfud.i.i = alloca i32, align 4
  %mute.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta350_set_bias_level.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta350_set_bias_level, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !540

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta350_set_bias_level.__UNIQUE_ID_ddebug301, ptr noundef %5, ptr noundef nonnull @.str.226, i32 noundef %level) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %do.end.cleanup_crit_edge [
    i32 0, label %sw.bb21
    i32 2, label %sw.bb
    i32 1, label %sw.bb5
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 5, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

sw.bb5:                                           ; preds = %do.end
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %9 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then7, label %sw.bb5.if.end18_crit_edge

sw.bb5.if.end18_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then7:                                         ; preds = %sw.bb5
  %supplies = getelementptr inbounds %struct.sta350_priv, ptr %3, i32 0, i32 1
  %call8 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.219, i32 noundef %call8) #12
  br label %cleanup

if.end15:                                         ; preds = %if.then7
  %gpiod_power_down.i = getelementptr inbounds %struct.sta350_priv, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %gpiod_power_down.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpiod_power_down.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end15.if.end.i_crit_edge, label %if.then.i

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %14, i32 noundef 1) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end15.if.end.i_crit_edge
  %gpiod_nreset.i = getelementptr inbounds %struct.sta350_priv, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %gpiod_nreset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpiod_nreset.i, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %if.end.i.sta350_startup_sequence.exit_crit_edge, label %if.then3.i

if.end.i.sta350_startup_sequence.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sta350_startup_sequence.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %16, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #9
  %18 = ptrtoint ptr %gpiod_nreset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpiod_nreset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #9
  br label %sta350_startup_sequence.exit

sta350_startup_sequence.exit:                     ; preds = %if.then3.i, %if.end.i.sta350_startup_sequence.exit_crit_edge
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mute.i) #9
  %25 = ptrtoint ptr %mute.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %mute.i, align 4, !annotation !537
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %24, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %27, i32 noundef 38, ptr noundef nonnull %mute.i) #9
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %24, align 4
  %30 = ptrtoint ptr %mute.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mute.i, align 4
  %or.i = or i32 %31, 1
  %call3.i = call i32 @regmap_write(ptr noundef %29, i32 noundef 6, i32 noundef %or.i) #9
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfud.i.i) #9
  %36 = ptrtoint ptr %cfud.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %cfud.i.i, align 4, !annotation !537
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %35, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %38, i32 noundef 38, ptr noundef nonnull %cfud.i.i) #9
  %39 = ptrtoint ptr %cfud.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cfud.i.i, align 4
  %and.i.i = and i32 %40, 240
  store i32 %and.i.i, ptr %cfud.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sta350_startup_sequence.exit
  %i.01.i.i = phi i32 [ 0, %sta350_startup_sequence.exit ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %35, align 4
  %call3.i.i = call i32 @regmap_write(ptr noundef %42, i32 noundef 22, i32 noundef %i.01.i.i) #9
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %35, align 4
  %arrayidx.i.i = getelementptr %struct.sta350_priv, ptr %35, i32 0, i32 5, i32 %i.01.i.i
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i, align 4
  %shr.i.i = lshr i32 %46, 16
  %and5.i.i = and i32 %shr.i.i, 255
  %call6.i.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 23, i32 noundef %and5.i.i) #9
  %47 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %35, align 4
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i, align 4
  %shr10.i.i = lshr i32 %50, 8
  %and11.i.i = and i32 %shr10.i.i, 255
  %call12.i.i = call i32 @regmap_write(ptr noundef %48, i32 noundef 24, i32 noundef %and11.i.i) #9
  %51 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %35, align 4
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i, align 4
  %and16.i.i = and i32 %54, 255
  %call17.i.i = call i32 @regmap_write(ptr noundef %52, i32 noundef 25, i32 noundef %and16.i.i) #9
  %55 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %35, align 4
  %57 = ptrtoint ptr %cfud.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cfud.i.i, align 4
  %call19.i.i = call i32 @regmap_write(ptr noundef %56, i32 noundef 38, i32 noundef %58) #9
  %59 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %35, align 4
  %61 = ptrtoint ptr %cfud.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cfud.i.i, align 4
  %or.i.i = or i32 %62, 1
  %call21.i.i = call i32 @regmap_write(ptr noundef %60, i32 noundef 38, i32 noundef %or.i.i) #9
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 62
  br i1 %exitcond.not.i.i, label %sta350_cache_sync.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

sta350_cache_sync.exit:                           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfud.i.i) #9
  %63 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %24, align 4
  %call6.i = call i32 @regcache_sync(ptr noundef %64) #9
  %65 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %24, align 4
  %67 = ptrtoint ptr %mute.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mute.i, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %66, i32 noundef 6, i32 noundef %68) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mute.i) #9
  br label %if.end18

if.end18:                                         ; preds = %sta350_cache_sync.exit, %sw.bb5.if.end18_crit_edge
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %3, align 4
  %call.i53 = call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 5, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

sw.bb21:                                          ; preds = %do.end
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %3, align 4
  %call.i54 = tail call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 5, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %gpiod_power_down = getelementptr inbounds %struct.sta350_priv, ptr %3, i32 0, i32 8
  %73 = ptrtoint ptr %gpiod_power_down to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %gpiod_power_down, align 4
  %tobool24.not = icmp eq ptr %74, null
  br i1 %tobool24.not, label %sw.bb21.if.end27_crit_edge, label %if.then25

sw.bb21.if.end27_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %74, i32 noundef 0) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %sw.bb21.if.end27_crit_edge
  %gpiod_nreset = getelementptr inbounds %struct.sta350_priv, ptr %3, i32 0, i32 7
  %75 = ptrtoint ptr %gpiod_nreset to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %gpiod_nreset, align 4
  %tobool28.not = icmp eq ptr %76, null
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %76, i32 noundef 0) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %supplies32 = getelementptr inbounds %struct.sta350_priv, ptr %3, i32 0, i32 1
  %call34 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies32) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end18, %do.end13, %sw.bb, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end13 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end31 ], [ 0, %if.end18 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_range(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_range(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_range(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sta350_coefficient_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 16
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %type, align 8
  %mul = mul nuw nsw i32 %shr, 3
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta350_coefficient_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %cfud = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  %shr = lshr i32 %7, 16
  %and = and i32 %7, 65535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfud) #9
  %8 = ptrtoint ptr %cfud to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %cfud, align 4, !annotation !537
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val, align 4, !annotation !537
  %coeff_lock = getelementptr inbounds %struct.sta350_priv, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %coeff_lock, i32 noundef 0) #9
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %call3 = call i32 @regmap_read(ptr noundef %11, i32 noundef 38, ptr noundef nonnull %cfud) #9
  %12 = ptrtoint ptr %cfud to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfud, align 4
  %and4 = and i32 %13, 240
  store i32 %and4, ptr %cfud, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %call6 = call i32 @regmap_write(ptr noundef %15, i32 noundef 38, i32 noundef %and4) #9
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %call8 = call i32 @regmap_write(ptr noundef %17, i32 noundef 22, i32 noundef %and) #9
  %trunc = trunc i32 %shr to i16
  %18 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.245)
  switch i16 %trunc, label %entry.exit_unlock_crit_edge [
    i16 1, label %if.then
    i16 5, label %if.then12
  ]

entry.exit_unlock_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unlock

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %21 = ptrtoint ptr %cfud to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfud, align 4
  %or = or i32 %22, 4
  %call10 = call i32 @regmap_write(ptr noundef %20, i32 noundef 38, i32 noundef %or) #9
  br label %if.end17

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %25 = ptrtoint ptr %cfud to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cfud, align 4
  %or14 = or i32 %26, 8
  %call15 = call i32 @regmap_write(ptr noundef %24, i32 noundef 38, i32 noundef %or14) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %cmp1836.not = icmp ult i32 %7, 65536
  br i1 %cmp1836.not, label %if.end17.exit_unlock_crit_edge, label %for.body.lr.ph

if.end17.exit_unlock_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unlock

for.body.lr.ph:                                   ; preds = %if.end17
  %mul = mul nuw nsw i32 %shr, 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %mul, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %add = add nuw nsw i32 %i.037, 23
  %call20 = call i32 @regmap_read(ptr noundef %28, i32 noundef %add, ptr noundef nonnull %val) #9
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %conv = trunc i32 %30 to i8
  %arrayidx = getelementptr [512 x i8], ptr %value, i32 0, i32 %i.037
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.exit_unlock_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.exit_unlock_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unlock

exit_unlock:                                      ; preds = %for.body.exit_unlock_crit_edge, %if.end17.exit_unlock_crit_edge, %entry.exit_unlock_crit_edge
  %ret.0 = phi i32 [ -22, %entry.exit_unlock_crit_edge ], [ 0, %if.end17.exit_unlock_crit_edge ], [ 0, %for.body.exit_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %coeff_lock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfud) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta350_coefficient_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  %cfud = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  %shr = lshr i32 %7, 16
  %and = and i32 %7, 65535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfud) #9
  %8 = ptrtoint ptr %cfud to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %cfud, align 4, !annotation !537
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call3 = call i32 @regmap_read(ptr noundef %10, i32 noundef 38, ptr noundef nonnull %cfud) #9
  %11 = ptrtoint ptr %cfud to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfud, align 4
  %and4 = and i32 %12, 240
  store i32 %and4, ptr %cfud, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call6 = call i32 @regmap_write(ptr noundef %14, i32 noundef 38, i32 noundef %and4) #9
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %call8 = call i32 @regmap_write(ptr noundef %16, i32 noundef 22, i32 noundef %and) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %cmp82.not = icmp ult i32 %7, 65536
  br i1 %cmp82.not, label %entry.for.end37_crit_edge, label %land.rhs.lr.ph

entry.for.end37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37

land.rhs.lr.ph:                                   ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %smax = call i32 @llvm.smax.i32(i32 %and, i32 62)
  %17 = sub nsw i32 %smax, %and
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.083 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.body.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.083, i32 %17)
  %exitcond.not = icmp eq i32 %i.083, %17
  br i1 %exitcond.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %add = add nuw nsw i32 %i.083, %and
  %mul = mul nuw nsw i32 %i.083, 3
  %arrayidx = getelementptr [512 x i8], ptr %value, i32 0, i32 %mul
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %19 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %add12 = add nuw nsw i32 %mul, 1
  %arrayidx13 = getelementptr [512 x i8], ptr %value, i32 0, i32 %add12
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %21 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %or = or i32 %shl15, %shl
  %add18 = add nuw nsw i32 %mul, 2
  %arrayidx19 = getelementptr [512 x i8], ptr %value, i32 0, i32 %add18
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %23 to i32
  %or21 = or i32 %or, %conv20
  %arrayidx23 = getelementptr %struct.sta350_priv, ptr %5, i32 0, i32 5, i32 %add
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or21, ptr %arrayidx23, align 4
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond86.not = icmp eq i32 %inc, %umax
  br i1 %exitcond86.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge
  br i1 %cmp82.not, label %for.end.for.end37_crit_edge, label %for.body28.lr.ph

for.end.for.end37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37

for.body28.lr.ph:                                 ; preds = %for.end
  %mul25 = mul nuw nsw i32 %shr, 3
  %value31 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %umax87 = call i32 @llvm.umax.i32(i32 %mul25, i32 1)
  br label %for.body28

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.body28.lr.ph
  %i.185 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc36, %for.body28.for.body28_crit_edge ]
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  %add30 = add nuw nsw i32 %i.185, 23
  %arrayidx32 = getelementptr [512 x i8], ptr %value31, i32 0, i32 %i.185
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %28 to i32
  %call34 = call i32 @regmap_write(ptr noundef %26, i32 noundef %add30, i32 noundef %conv33) #9
  %inc36 = add nuw nsw i32 %i.185, 1
  %exitcond88.not = icmp eq i32 %inc36, %umax87
  br i1 %exitcond88.not, label %for.body28.for.end37_crit_edge, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28

for.body28.for.end37_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37

for.end37:                                        ; preds = %for.body28.for.end37_crit_edge, %for.end.for.end37_crit_edge, %entry.for.end37_crit_edge
  %trunc = trunc i32 %shr to i16
  %29 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.246)
  switch i16 %trunc, label %for.end37.cleanup_crit_edge [
    i16 1, label %if.then
    i16 5, label %if.then45
  ]

for.end37.cleanup_crit_edge:                      ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %32 = ptrtoint ptr %cfud to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cfud, align 4
  %or41 = or i32 %33, 1
  %call42 = call i32 @regmap_write(ptr noundef %31, i32 noundef 38, i32 noundef %or41) #9
  br label %cleanup

if.then45:                                        ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %36 = ptrtoint ptr %cfud to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfud, align 4
  %or47 = or i32 %37, 2
  %call48 = call i32 @regmap_write(ptr noundef %35, i32 noundef 38, i32 noundef %or47) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.then, %for.end37.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.end37.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfud) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta350_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta350_set_dai_sysclk.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta350_set_dai_sysclk, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !540

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta350_set_dai_sysclk.__UNIQUE_ID_ddebug294, ptr noundef %7, ptr noundef nonnull @.str.229, i32 noundef %freq) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mclk = getelementptr inbounds %struct.sta350_priv, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq, ptr %mclk, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta350_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %and = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cond = icmp eq i32 %and, 16384
  br i1 %cond, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %and2 = and i32 %fmt, 15
  %and2.off = add nsw i32 %and2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2.off)
  %switch = icmp ult i32 %and2.off, 3
  br i1 %switch, label %sw.bb, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %sw.epilog
  %format = getelementptr inbounds %struct.sta350_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and2, ptr %format, align 4
  %and6 = and i32 %fmt, 3840
  %7 = zext i32 %and6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %and6, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.sw.epilog11_crit_edge
    i32 512, label %sw.bb8
  ]

sw.bb.sw.epilog11_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog11

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %sw.bb8, %sw.bb.sw.epilog11_crit_edge
  %confb.0 = phi i32 [ 64, %sw.bb8 ], [ 128, %sw.bb.sw.epilog11_crit_edge ]
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 1, i32 noundef 192, i32 noundef %confb.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog11, %sw.bb.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta350_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %mclk = getelementptr inbounds %struct.sta350_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.230) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %div = udiv i32 %7, %9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta350_hw_params.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta350_hw_params, %if.then9)) #9
          to label %do.end13 [label %if.then9], !srcloc !540

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta350_hw_params.__UNIQUE_ID_ddebug295, ptr noundef %11, ptr noundef nonnull @.str.232, i32 noundef %9, i32 noundef %div) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %if.end
  %12 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %9, label %for.inc.6 [
    i32 32000, label %do.end13.for.end_crit_edge
    i32 44100, label %for.end.fold.split
    i32 48000, label %for.end.fold.split269
    i32 88200, label %for.end.fold.split270
    i32 96000, label %for.end.fold.split271
    i32 176400, label %for.end.fold.split272
    i32 192000, label %for.end.fold.split273
  ]

do.end13.for.end_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.6:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.234, i32 noundef %9) #12
  br label %cleanup

for.end.fold.split:                               ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split269:                            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split270:                            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split271:                            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split272:                            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split273:                            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split273, %for.end.fold.split272, %for.end.fold.split271, %for.end.fold.split270, %for.end.fold.split269, %for.end.fold.split, %do.end13.for.end_crit_edge
  %i.0265.lcssa = phi i32 [ 0, %do.end13.for.end_crit_edge ], [ 1, %for.end.fold.split ], [ 2, %for.end.fold.split269 ], [ 3, %for.end.fold.split270 ], [ 4, %for.end.fold.split271 ], [ 5, %for.end.fold.split272 ], [ 6, %for.end.fold.split273 ]
  %ir17 = getelementptr [7 x %struct.anon.108], ptr @interpolation_ratios, i32 0, i32 %i.0265.lcssa, i32 1
  %15 = ptrtoint ptr %ir17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ir17, align 4
  %arrayidx30 = getelementptr [3 x [6 x i32]], ptr @mcs_ratio_table, i32 0, i32 %16, i32 0
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %div)
  %cmp31 = icmp eq i32 %18, %div
  br i1 %cmp31, label %for.end.if.end43_crit_edge, label %for.inc34

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

for.inc34:                                        ; preds = %for.end
  %arrayidx30.1 = getelementptr [3 x [6 x i32]], ptr @mcs_ratio_table, i32 0, i32 %16, i32 1
  %19 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx30.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %div)
  %cmp31.1 = icmp eq i32 %20, %div
  br i1 %cmp31.1, label %for.inc34.if.end43_crit_edge, label %for.inc34.1

for.inc34.if.end43_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

for.inc34.1:                                      ; preds = %for.inc34
  %arrayidx30.2 = getelementptr [3 x [6 x i32]], ptr @mcs_ratio_table, i32 0, i32 %16, i32 2
  %21 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx30.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %div)
  %cmp31.2 = icmp eq i32 %22, %div
  br i1 %cmp31.2, label %for.inc34.1.if.end43_crit_edge, label %for.inc34.2

for.inc34.1.if.end43_crit_edge:                   ; preds = %for.inc34.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

for.inc34.2:                                      ; preds = %for.inc34.1
  %arrayidx30.3 = getelementptr [3 x [6 x i32]], ptr @mcs_ratio_table, i32 0, i32 %16, i32 3
  %23 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx30.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %div)
  %cmp31.3 = icmp eq i32 %24, %div
  br i1 %cmp31.3, label %for.inc34.2.if.end43_crit_edge, label %for.inc34.3

for.inc34.2.if.end43_crit_edge:                   ; preds = %for.inc34.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

for.inc34.3:                                      ; preds = %for.inc34.2
  %arrayidx30.4 = getelementptr [3 x [6 x i32]], ptr @mcs_ratio_table, i32 0, i32 %16, i32 4
  %25 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx30.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %div)
  %cmp31.4 = icmp eq i32 %26, %div
  br i1 %cmp31.4, label %for.inc34.3.if.end43_crit_edge, label %for.inc34.4

for.inc34.3.if.end43_crit_edge:                   ; preds = %for.inc34.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

for.inc34.4:                                      ; preds = %for.inc34.3
  %arrayidx30.5 = getelementptr [3 x [6 x i32]], ptr @mcs_ratio_table, i32 0, i32 %16, i32 5
  %27 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx30.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %div)
  %cmp31.5 = icmp eq i32 %28, %div
  br i1 %cmp31.5, label %for.inc34.4.if.end43_crit_edge, label %for.inc34.5

for.inc34.4.if.end43_crit_edge:                   ; preds = %for.inc34.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

for.inc34.5:                                      ; preds = %for.inc34.4
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.237, i32 noundef %div) #12
  br label %cleanup

if.end43:                                         ; preds = %for.inc34.4.if.end43_crit_edge, %for.inc34.3.if.end43_crit_edge, %for.inc34.2.if.end43_crit_edge, %for.inc34.1.if.end43_crit_edge, %for.inc34.if.end43_crit_edge, %for.end.if.end43_crit_edge
  %i.1266.lcssa = phi i32 [ 0, %for.end.if.end43_crit_edge ], [ 1, %for.inc34.if.end43_crit_edge ], [ 2, %for.inc34.1.if.end43_crit_edge ], [ 3, %for.inc34.2.if.end43_crit_edge ], [ 4, %for.inc34.3.if.end43_crit_edge ], [ 5, %for.inc34.4.if.end43_crit_edge ]
  %shl = shl i32 %16, 3
  %or = or i32 %i.1266.lcssa, %shl
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end43.if.then.i.i.i_crit_edge

if.end43.if.then.i.i.i_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end43.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end43.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %32, %if.end43.if.then.i.i.i_crit_edge ], [ %35, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %33 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #9, !range !538
  %add.i.i.i = or i32 %33, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end43
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.1.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #9
  %36 = add i32 %call1.i, -16
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 31)
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %37, label %params_width.exit.cleanup_crit_edge [
    i32 4, label %do.body46
    i32 8, label %params_width.exit.do.body64_crit_edge
    i32 2, label %do.body88
    i32 1, label %do.body114
    i32 0, label %do.body140
  ]

params_width.exit.do.body64_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body64

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body46:                                        ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta350_hw_params.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta350_hw_params, %if.then58)) #9
          to label %do.body64 [label %if.then58], !srcloc !540

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta350_hw_params.__UNIQUE_ID_ddebug296, ptr noundef %40, ptr noundef nonnull @.str.239) #9
  br label %do.body64

do.body64:                                        ; preds = %if.then58, %do.body46, %params_width.exit.do.body64_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta350_hw_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta350_hw_params, %if.then76)) #9
          to label %do.end80 [label %if.then76], !srcloc !540

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta350_hw_params.__UNIQUE_ID_ddebug297, ptr noundef %42, ptr noundef nonnull @.str.240) #9
  br label %do.end80

do.end80:                                         ; preds = %if.then76, %do.body64
  %format = getelementptr inbounds %struct.sta350_priv, ptr %5, i32 0, i32 4
  %43 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %switch.selectcmp = icmp eq i32 %44, 3
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %switch.selectcmp231 = icmp eq i32 %44, 2
  %switch.select232 = select i1 %switch.selectcmp231, i32 2, i32 %switch.select
  br label %sw.epilog165

do.body88:                                        ; preds = %params_width.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta350_hw_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta350_hw_params, %if.then100)) #9
          to label %do.end104 [label %if.then100], !srcloc !540

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta350_hw_params.__UNIQUE_ID_ddebug298, ptr noundef %46, ptr noundef nonnull @.str.241) #9
  br label %do.end104

do.end104:                                        ; preds = %if.then100, %do.body88
  %format105 = getelementptr inbounds %struct.sta350_priv, ptr %5, i32 0, i32 4
  %47 = ptrtoint ptr %format105 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %format105, align 4
  %switch.tableidx = add i32 %48, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %49 = icmp ult i32 %switch.tableidx, 3
  br i1 %49, label %switch.lookup, label %do.end104.sw.epilog165_crit_edge

do.end104.sw.epilog165_crit_edge:                 ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog165

do.body114:                                       ; preds = %params_width.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta350_hw_params.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta350_hw_params, %if.then126)) #9
          to label %do.end130 [label %if.then126], !srcloc !540

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta350_hw_params.__UNIQUE_ID_ddebug299, ptr noundef %51, ptr noundef nonnull @.str.242) #9
  br label %do.end130

do.end130:                                        ; preds = %if.then126, %do.body114
  %format131 = getelementptr inbounds %struct.sta350_priv, ptr %5, i32 0, i32 4
  %52 = ptrtoint ptr %format131 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %format131, align 4
  %switch.tableidx275 = add i32 %53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx275)
  %54 = icmp ult i32 %switch.tableidx275, 3
  br i1 %54, label %switch.lookup274, label %do.end130.sw.epilog165_crit_edge

do.end130.sw.epilog165_crit_edge:                 ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog165

do.body140:                                       ; preds = %params_width.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta350_hw_params.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta350_hw_params, %if.then152)) #9
          to label %do.end156 [label %if.then152], !srcloc !540

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta350_hw_params.__UNIQUE_ID_ddebug300, ptr noundef %56, ptr noundef nonnull @.str.243) #9
  br label %do.end156

do.end156:                                        ; preds = %if.then152, %do.body140
  %format157 = getelementptr inbounds %struct.sta350_priv, ptr %5, i32 0, i32 4
  %57 = ptrtoint ptr %format157 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %format157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %switch.selectcmp233 = icmp eq i32 %58, 3
  %switch.select234 = select i1 %switch.selectcmp233, i32 13, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %switch.selectcmp235 = icmp eq i32 %58, 2
  %switch.select236 = select i1 %switch.selectcmp235, i32 14, i32 %switch.select234
  br label %sw.epilog165

switch.lookup:                                    ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.sta350_hw_params, i32 0, i32 %switch.tableidx
  %59 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog165

switch.lookup274:                                 ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep276 = getelementptr inbounds [3 x i32], ptr @switch.table.sta350_hw_params.244, i32 0, i32 %switch.tableidx275
  %60 = ptrtoint ptr %switch.gep276 to i32
  call void @__asan_load4_noabort(i32 %60)
  %switch.load277 = load i32, ptr %switch.gep276, align 4
  br label %sw.epilog165

sw.epilog165:                                     ; preds = %switch.lookup274, %switch.lookup, %do.end156, %do.end130.sw.epilog165_crit_edge, %do.end104.sw.epilog165_crit_edge, %do.end80
  %confb.0 = phi i32 [ 0, %do.end130.sw.epilog165_crit_edge ], [ 0, %do.end104.sw.epilog165_crit_edge ], [ %switch.select232, %do.end80 ], [ %switch.select236, %do.end156 ], [ %switch.load, %switch.lookup ], [ %switch.load277, %switch.lookup274 ]
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 0, i32 noundef 27, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp167 = icmp slt i32 %call.i, 0
  br i1 %cmp167, label %sw.epilog165.cleanup_crit_edge, label %if.end169

sw.epilog165.cleanup_crit_edge:                   ; preds = %sw.epilog165
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end169:                                        ; preds = %sw.epilog165
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 4
  %call.i252 = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 1, i32 noundef 31, i32 noundef %confb.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %65 = tail call i32 @llvm.smin.i32(i32 %call.i252, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end169, %sw.epilog165.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %for.inc34.5, %for.inc.6, %do.end
  %retval.0 = phi i32 [ -22, %for.inc.6 ], [ -22, %for.inc34.5 ], [ -5, %do.end ], [ -22, %params_width.exit.cleanup_crit_edge ], [ %call.i, %sw.epilog165.cleanup_crit_edge ], [ %65, %if.end169 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 295)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 295)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !465, !466, !467, !469, !470, !471, !473, !474, !475, !476, !478, !479, !481, !483, !485, !487, !488, !489, !491, !492, !493, !494, !496, !497, !499, !500, !501, !503, !504, !505, !507, !508, !510, !511, !513, !514, !516, !517, !519, !520, !522, !524, !526}
!llvm.module.flags = !{!528, !529, !530, !531, !532, !533, !534, !535}
!llvm.ident = !{!536}

!0 = !{ptr @__initcall__kmod_snd_soc_sta350__306_1271_sta350_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_sta350__306_1271_sta350_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/sta350.c", i32 1271, i32 1}
!2 = !{ptr @__exitcall_sta350_i2c_driver_exit, !1, !"__exitcall_sta350_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description307, !4, !"__UNIQUE_ID_description307", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/sta350.c", i32 1273, i32 1}
!5 = !{ptr @__UNIQUE_ID_author308, !6, !"__UNIQUE_ID_author308", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/sta350.c", i32 1274, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/sta350.c", i32 1275, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/sta350.c", i32 1263, i32 11}
!12 = !{ptr @sta350_i2c_driver, !13, !"sta350_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/sta350.c", i32 1261, i32 26}
!14 = !{ptr @sta350_i2c_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/sta350.c", i32 1201, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/sta350.c", i32 1213, i32 54}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/sta350.c", i32 1218, i32 58}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/sta350.c", i32 1230, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sta350_i2c_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @sta350_i2c_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @sta350_i2c_probe._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/sta350.c", i32 1234, i32 19}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/sta350.c", i32 1237, i32 3}
!34 = !{ptr @sta350_i2c_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sta350_i2c_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/sta350.c", i32 1245, i32 3}
!38 = !{ptr @sta350_i2c_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sta350_i2c_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/sta350.c", i32 1104, i32 26}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/sta350.c", i32 1106, i32 26}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/sta350.c", i32 1108, i32 26}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/sta350.c", i32 1110, i32 26}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/sta350.c", i32 1113, i32 26}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/sta350.c", i32 1115, i32 26}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/sta350.c", i32 1117, i32 26}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/sta350.c", i32 1121, i32 35}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/sta350.c", i32 1130, i32 4}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @sta350_probe_dt._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @sta350_probe_dt._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/sta350.c", i32 1137, i32 27}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/sta350.c", i32 1140, i32 26}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/sta350.c", i32 1144, i32 26}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/sta350.c", i32 1147, i32 26}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/sta350.c", i32 1150, i32 26}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/sta350.c", i32 1153, i32 26}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/sta350.c", i32 1156, i32 26}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/sta350.c", i32 1160, i32 26}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/sta350.c", i32 1164, i32 26}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/sta350.c", i32 1167, i32 26}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/sta350.c", i32 1170, i32 26}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/sta350.c", i32 1173, i32 26}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/sta350.c", i32 1176, i32 31}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/sta350.c", i32 1180, i32 4}
!90 = !{ptr @sta350_probe_dt._entry.40, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sta350_probe_dt._entry_ptr.42, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/sta350.c", i32 1086, i32 31}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/sta350.c", i32 1087, i32 34}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/sta350.c", i32 1088, i32 32}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/sta350.c", i32 1089, i32 39}
!100 = distinct !{null, !101, !"sta350_ffx_modes", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/sta350.c", i32 1085, i32 27}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/sta350.c", i32 159, i32 2}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/sta350.c", i32 160, i32 2}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/sta350.c", i32 161, i32 2}
!108 = distinct !{null, !109, !"sta350_supply_names", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/sta350.c", i32 158, i32 27}
!110 = !{ptr @sta350_regmap, !111, !"sta350_regmap", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/sta350.c", i32 1066, i32 35}
!112 = !{ptr @sta350_write_regs, !113, !"sta350_write_regs", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/sta350.c", i32 142, i32 41}
!114 = !{ptr @sta350_write_regs_range, !115, !"sta350_write_regs_range", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/sta350.c", i32 123, i32 34}
!116 = !{ptr @sta350_read_regs, !117, !"sta350_read_regs", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/sta350.c", i32 147, i32 41}
!118 = !{ptr @sta350_read_regs_range, !119, !"sta350_read_regs_range", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/sta350.c", i32 130, i32 34}
!120 = !{ptr @sta350_volatile_regs, !121, !"sta350_volatile_regs", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/sta350.c", i32 152, i32 41}
!122 = !{ptr @sta350_volatile_regs_range, !123, !"sta350_volatile_regs_range", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/sta350.c", i32 137, i32 34}
!124 = !{ptr @sta350_regs, !125, !"sta350_regs", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/sta350.c", i32 59, i32 33}
!126 = !{ptr @sta350_component, !127, !"sta350_component", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/sta350.c", i32 1049, i32 46}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/sta350.c", i32 443, i32 1}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/sta350.c", i32 445, i32 1}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/sta350.c", i32 446, i32 1}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/sta350.c", i32 447, i32 1}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/sta350.c", i32 449, i32 1}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/sta350.c", i32 451, i32 1}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/sta350.c", i32 453, i32 1}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/sta350.c", i32 455, i32 1}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/sta350.c", i32 457, i32 1}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/sta350.c", i32 459, i32 1}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/sta350.c", i32 460, i32 1}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/sta350.c", i32 461, i32 1}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/sta350.c", i32 463, i32 1}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/sta350.c", i32 466, i32 1}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/sta350.c", i32 467, i32 1}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/sta350.c", i32 469, i32 1}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/sta350.c", i32 470, i32 1}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/sta350.c", i32 471, i32 1}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/sta350.c", i32 472, i32 1}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/sta350.c", i32 474, i32 1}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/sta350.c", i32 475, i32 1}
!170 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/sta350.c", i32 477, i32 1}
!172 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/sta350.c", i32 479, i32 1}
!174 = !{ptr @.str.91, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/sta350.c", i32 481, i32 1}
!176 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/sta350.c", i32 483, i32 1}
!178 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/sta350.c", i32 485, i32 1}
!180 = !{ptr @.str.97, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/sta350.c", i32 487, i32 1}
!182 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/sta350.c", i32 489, i32 1}
!184 = !{ptr @.str.101, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/sta350.c", i32 491, i32 1}
!186 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/sta350.c", i32 492, i32 1}
!188 = !{ptr @.str.103, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/sta350.c", i32 493, i32 1}
!190 = !{ptr @.str.104, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/sta350.c", i32 494, i32 1}
!192 = !{ptr @.str.105, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/sta350.c", i32 495, i32 1}
!194 = !{ptr @.str.106, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/sta350.c", i32 496, i32 1}
!196 = !{ptr @.str.107, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/sta350.c", i32 498, i32 1}
!198 = !{ptr @.str.109, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/sta350.c", i32 500, i32 1}
!200 = !{ptr @.str.111, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/sta350.c", i32 502, i32 1}
!202 = !{ptr @.str.112, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/sta350.c", i32 503, i32 1}
!204 = !{ptr @.str.113, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/sta350.c", i32 504, i32 1}
!206 = !{ptr @.str.114, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/sta350.c", i32 505, i32 1}
!208 = !{ptr @.str.115, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/sta350.c", i32 511, i32 1}
!210 = !{ptr @.str.117, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/sta350.c", i32 514, i32 1}
!212 = !{ptr @.str.119, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/sta350.c", i32 517, i32 1}
!214 = !{ptr @.str.121, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/sta350.c", i32 520, i32 1}
!216 = !{ptr @.str.123, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/sta350.c", i32 523, i32 1}
!218 = !{ptr @.str.125, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/sta350.c", i32 526, i32 1}
!220 = !{ptr @.str.127, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/sta350.c", i32 529, i32 1}
!222 = !{ptr @.str.129, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/sta350.c", i32 532, i32 1}
!224 = !{ptr @.str.131, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/sta350.c", i32 536, i32 1}
!226 = !{ptr @.str.132, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/sta350.c", i32 537, i32 1}
!228 = !{ptr @.str.133, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/sta350.c", i32 538, i32 1}
!230 = !{ptr @.str.134, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/sta350.c", i32 539, i32 1}
!232 = !{ptr @.str.135, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/sta350.c", i32 540, i32 1}
!234 = !{ptr @.str.136, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/sta350.c", i32 541, i32 1}
!236 = !{ptr @.str.137, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/sta350.c", i32 542, i32 1}
!238 = !{ptr @.str.138, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/sta350.c", i32 543, i32 1}
!240 = !{ptr @.str.139, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/sta350.c", i32 544, i32 1}
!242 = !{ptr @.str.140, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/sta350.c", i32 545, i32 1}
!244 = !{ptr @.str.141, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/sta350.c", i32 546, i32 1}
!246 = !{ptr @.str.142, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/sta350.c", i32 547, i32 1}
!248 = !{ptr @.str.143, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/sta350.c", i32 548, i32 1}
!250 = !{ptr @.str.144, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/sta350.c", i32 549, i32 1}
!252 = !{ptr @.str.145, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/sta350.c", i32 550, i32 1}
!254 = !{ptr @.str.146, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/sta350.c", i32 551, i32 1}
!256 = !{ptr @.str.147, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/sta350.c", i32 552, i32 1}
!258 = !{ptr @.str.148, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/sta350.c", i32 553, i32 1}
!260 = !{ptr @.str.149, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/sta350.c", i32 554, i32 1}
!262 = !{ptr @.str.150, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/sta350.c", i32 555, i32 1}
!264 = !{ptr @.str.151, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/sta350.c", i32 556, i32 1}
!266 = !{ptr @.str.152, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/sta350.c", i32 557, i32 1}
!268 = !{ptr @sta350_snd_controls, !269, !"sta350_snd_controls", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/sta350.c", i32 442, i32 38}
!270 = !{ptr @mvol_tlv, !271, !"mvol_tlv", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/sta350.c", i32 182, i32 14}
!272 = !{ptr @chvol_tlv, !273, !"chvol_tlv", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/sta350.c", i32 183, i32 14}
!274 = !{ptr @sta350_drc_ac_enum, !275, !"sta350_drc_ac_enum", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/sta350.c", i32 245, i32 8}
!276 = !{ptr @.str.153, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/sta350.c", i32 187, i32 2}
!278 = !{ptr @.str.154, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/sta350.c", i32 187, i32 19}
!280 = !{ptr @sta350_drc_ac, !281, !"sta350_drc_ac", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/sta350.c", i32 186, i32 27}
!282 = !{ptr @sta350_noise_shaper_enum, !283, !"sta350_noise_shaper_enum", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/sta350.c", i32 248, i32 8}
!284 = !{ptr @.str.155, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/sta350.c", i32 215, i32 2}
!286 = !{ptr @.str.156, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/sta350.c", i32 215, i32 17}
!288 = !{ptr @sta350_noise_shaper_type, !289, !"sta350_noise_shaper_type", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/sta350.c", i32 214, i32 27}
!290 = !{ptr @sta350_auto_gc_enum, !291, !"sta350_auto_gc_enum", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/sta350.c", i32 251, i32 8}
!292 = !{ptr @.str.157, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/sta350.c", i32 190, i32 2}
!294 = !{ptr @.str.158, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/sta350.c", i32 190, i32 10}
!296 = !{ptr @.str.159, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/sta350.c", i32 190, i32 28}
!298 = !{ptr @.str.160, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/sta350.c", i32 191, i32 2}
!300 = !{ptr @sta350_auto_gc_mode, !301, !"sta350_auto_gc_mode", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/sta350.c", i32 189, i32 27}
!302 = !{ptr @sta350_auto_xo_enum, !303, !"sta350_auto_xo_enum", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/sta350.c", i32 254, i32 8}
!304 = !{ptr @.str.161, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/sta350.c", i32 194, i32 10}
!306 = !{ptr @.str.162, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/sta350.c", i32 194, i32 18}
!308 = !{ptr @.str.163, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/sta350.c", i32 194, i32 27}
!310 = !{ptr @.str.164, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/sta350.c", i32 194, i32 36}
!312 = !{ptr @.str.165, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/sta350.c", i32 194, i32 45}
!314 = !{ptr @.str.166, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/sta350.c", i32 194, i32 54}
!316 = !{ptr @.str.167, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/sta350.c", i32 195, i32 2}
!318 = !{ptr @.str.168, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/sta350.c", i32 195, i32 11}
!320 = !{ptr @.str.169, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/sta350.c", i32 195, i32 20}
!322 = !{ptr @.str.170, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/sta350.c", i32 195, i32 29}
!324 = !{ptr @.str.171, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/sta350.c", i32 195, i32 38}
!326 = !{ptr @.str.172, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/sta350.c", i32 195, i32 47}
!328 = !{ptr @.str.173, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/sta350.c", i32 195, i32 56}
!330 = !{ptr @.str.174, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/sta350.c", i32 196, i32 2}
!332 = !{ptr @.str.175, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/sta350.c", i32 196, i32 11}
!334 = !{ptr @sta350_auto_xo_mode, !335, !"sta350_auto_xo_mode", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/sta350.c", i32 193, i32 27}
!336 = !{ptr @sta350_binary_output_ch1_enum, !337, !"sta350_binary_output_ch1_enum", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/sta350.c", i32 257, i32 8}
!338 = !{ptr @.str.176, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/sta350.c", i32 199, i32 2}
!340 = !{ptr @.str.177, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/sta350.c", i32 199, i32 43}
!342 = !{ptr @sta350_binary_output, !343, !"sta350_binary_output", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/sta350.c", i32 198, i32 27}
!344 = !{ptr @sta350_binary_output_ch2_enum, !345, !"sta350_binary_output_ch2_enum", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/sta350.c", i32 260, i32 8}
!346 = !{ptr @sta350_binary_output_ch3_enum, !347, !"sta350_binary_output_ch3_enum", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/sta350.c", i32 263, i32 8}
!348 = !{ptr @sta350_limiter_ch1_enum, !349, !"sta350_limiter_ch1_enum", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/sta350.c", i32 266, i32 8}
!350 = !{ptr @.str.178, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/sta350.c", i32 202, i32 2}
!352 = !{ptr @.str.179, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/sta350.c", i32 202, i32 22}
!354 = !{ptr @.str.180, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/sta350.c", i32 202, i32 36}
!356 = !{ptr @sta350_limiter_select, !357, !"sta350_limiter_select", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/sta350.c", i32 201, i32 27}
!358 = !{ptr @sta350_limiter_ch2_enum, !359, !"sta350_limiter_ch2_enum", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/sta350.c", i32 269, i32 8}
!360 = !{ptr @sta350_limiter_ch3_enum, !361, !"sta350_limiter_ch3_enum", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/sta350.c", i32 272, i32 8}
!362 = !{ptr @tone_tlv, !363, !"tone_tlv", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/sta350.c", i32 184, i32 14}
!364 = !{ptr @sta350_limiter1_attack_rate_enum, !365, !"sta350_limiter1_attack_rate_enum", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/sta350.c", i32 275, i32 8}
!366 = !{ptr @.str.181, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/sta350.c", i32 205, i32 2}
!368 = !{ptr @.str.182, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/sta350.c", i32 205, i32 12}
!370 = !{ptr @.str.183, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/sta350.c", i32 205, i32 22}
!372 = !{ptr @.str.184, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/sta350.c", i32 205, i32 32}
!374 = !{ptr @.str.185, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/sta350.c", i32 205, i32 42}
!376 = !{ptr @.str.186, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/sta350.c", i32 205, i32 52}
!378 = !{ptr @.str.187, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/sta350.c", i32 206, i32 2}
!380 = !{ptr @.str.188, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/sta350.c", i32 206, i32 12}
!382 = !{ptr @.str.189, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/sta350.c", i32 206, i32 22}
!384 = !{ptr @.str.190, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/sta350.c", i32 206, i32 32}
!386 = !{ptr @.str.191, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/sta350.c", i32 206, i32 42}
!388 = !{ptr @.str.192, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/sta350.c", i32 206, i32 52}
!390 = !{ptr @.str.193, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/sta350.c", i32 207, i32 2}
!392 = !{ptr @.str.194, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/sta350.c", i32 207, i32 12}
!394 = !{ptr @.str.195, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/sta350.c", i32 207, i32 22}
!396 = !{ptr @.str.196, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/sta350.c", i32 207, i32 32}
!398 = !{ptr @sta350_limiter_attack_rate, !399, !"sta350_limiter_attack_rate", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/sta350.c", i32 204, i32 27}
!400 = !{ptr @sta350_limiter2_attack_rate_enum, !401, !"sta350_limiter2_attack_rate_enum", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/sta350.c", i32 278, i32 8}
!402 = !{ptr @sta350_limiter1_release_rate_enum, !403, !"sta350_limiter1_release_rate_enum", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/sta350.c", i32 281, i32 8}
!404 = !{ptr @.str.197, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/sta350.c", i32 210, i32 2}
!406 = !{ptr @.str.198, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/sta350.c", i32 210, i32 12}
!408 = !{ptr @.str.199, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/sta350.c", i32 210, i32 22}
!410 = !{ptr @.str.200, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/sta350.c", i32 210, i32 32}
!412 = !{ptr @.str.201, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/sta350.c", i32 210, i32 42}
!414 = !{ptr @.str.202, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/sta350.c", i32 210, i32 52}
!416 = !{ptr @.str.203, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/sta350.c", i32 211, i32 2}
!418 = !{ptr @.str.204, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/sta350.c", i32 211, i32 12}
!420 = !{ptr @.str.205, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/sta350.c", i32 211, i32 22}
!422 = !{ptr @.str.206, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/sta350.c", i32 211, i32 32}
!424 = !{ptr @.str.207, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/sta350.c", i32 211, i32 42}
!426 = !{ptr @.str.208, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/sta350.c", i32 211, i32 52}
!428 = !{ptr @.str.209, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/sta350.c", i32 212, i32 2}
!430 = !{ptr @.str.210, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/sta350.c", i32 212, i32 12}
!432 = !{ptr @.str.211, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/sta350.c", i32 212, i32 22}
!434 = !{ptr @.str.212, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/sta350.c", i32 212, i32 32}
!436 = !{ptr @sta350_limiter_release_rate, !437, !"sta350_limiter_release_rate", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/sta350.c", i32 209, i32 27}
!438 = !{ptr @sta350_limiter2_release_rate_enum, !439, !"sta350_limiter2_release_rate_enum", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/sta350.c", i32 284, i32 8}
!440 = !{ptr @sta350_limiter_ac_attack_tlv, !441, !"sta350_limiter_ac_attack_tlv", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/sta350.c", i32 218, i32 8}
!442 = !{ptr @sta350_limiter_ac_release_tlv, !443, !"sta350_limiter_ac_release_tlv", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/sta350.c", i32 223, i32 8}
!444 = !{ptr @sta350_limiter_drc_attack_tlv, !445, !"sta350_limiter_drc_attack_tlv", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/sta350.c", i32 231, i32 8}
!446 = !{ptr @sta350_limiter_drc_release_tlv, !447, !"sta350_limiter_drc_release_tlv", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/sta350.c", i32 237, i32 8}
!448 = !{ptr @.str.213, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/sta350.c", i32 561, i32 1}
!450 = !{ptr @.str.214, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/sta350.c", i32 562, i32 1}
!452 = !{ptr @.str.215, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/sta350.c", i32 563, i32 1}
!454 = !{ptr @.str.216, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/sta350.c", i32 564, i32 1}
!456 = !{ptr @sta350_dapm_widgets, !457, !"sta350_dapm_widgets", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/sta350.c", i32 560, i32 41}
!458 = !{ptr @.str.218, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/soc/codecs/sta350.c", i32 571, i32 17}
!460 = !{ptr @sta350_dapm_routes, !461, !"sta350_dapm_routes", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/sta350.c", i32 567, i32 40}
!462 = !{ptr @.str.219, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/soc/codecs/sta350.c", i32 919, i32 3}
!464 = !{ptr @.str.220, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @sta350_probe._entry, !463, !"_entry", i1 false, i1 false}
!466 = !{ptr @sta350_probe._entry_ptr, !463, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.222, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/sta350.c", i32 925, i32 3}
!469 = !{ptr @sta350_probe._entry.221, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @sta350_probe._entry_ptr.223, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.224, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/sta350.c", i32 839, i32 2}
!473 = !{ptr @.str.225, !472, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @.str.226, !472, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @sta350_set_bias_level.__UNIQUE_ID_ddebug301, !472, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!476 = !{ptr @sta350_set_bias_level._entry, !477, !"_entry", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/sta350.c", i32 857, i32 5}
!478 = !{ptr @sta350_set_bias_level._entry_ptr, !477, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.227, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/sta350.c", i32 899, i32 10}
!481 = !{ptr @sta350_dai, !482, !"sta350_dai", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/sta350.c", i32 898, i32 34}
!483 = !{ptr @sta350_dai_ops, !484, !"sta350_dai_ops", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/sta350.c", i32 892, i32 37}
!485 = !{ptr @.str.228, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/sta350.c", i32 615, i32 2}
!487 = !{ptr @.str.229, !486, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @sta350_set_dai_sysclk.__UNIQUE_ID_ddebug294, !486, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!489 = !{ptr @.str.230, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/sta350.c", i32 689, i32 3}
!491 = !{ptr @.str.231, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @sta350_hw_params._entry, !490, !"_entry", i1 false, i1 false}
!493 = !{ptr @sta350_hw_params._entry_ptr, !490, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.232, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/sta350.c", i32 696, i32 2}
!496 = !{ptr @sta350_hw_params.__UNIQUE_ID_ddebug295, !495, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!497 = !{ptr @.str.234, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/sta350.c", i32 706, i32 3}
!499 = !{ptr @sta350_hw_params._entry.233, !498, !"_entry", i1 false, i1 false}
!500 = !{ptr @sta350_hw_params._entry_ptr.235, !498, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @.str.237, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/sta350.c", i32 718, i32 3}
!503 = !{ptr @sta350_hw_params._entry.236, !502, !"_entry", i1 false, i1 false}
!504 = !{ptr @sta350_hw_params._entry_ptr.238, !502, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.239, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../sound/soc/codecs/sta350.c", i32 728, i32 3}
!507 = !{ptr @sta350_hw_params.__UNIQUE_ID_ddebug296, !506, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!508 = !{ptr @.str.240, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../sound/soc/codecs/sta350.c", i32 731, i32 3}
!510 = !{ptr @sta350_hw_params.__UNIQUE_ID_ddebug297, !509, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!511 = !{ptr @.str.241, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/sta350.c", i32 746, i32 3}
!513 = !{ptr @sta350_hw_params.__UNIQUE_ID_ddebug298, !512, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!514 = !{ptr @.str.242, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../sound/soc/codecs/sta350.c", i32 761, i32 3}
!516 = !{ptr @sta350_hw_params.__UNIQUE_ID_ddebug299, !515, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!517 = !{ptr @.str.243, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/sta350.c", i32 776, i32 3}
!519 = !{ptr @sta350_hw_params.__UNIQUE_ID_ddebug300, !518, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!520 = !{ptr @interpolation_ratios, !521, !"interpolation_ratios", i1 false, i1 false}
!521 = !{!"../sound/soc/codecs/sta350.c", i32 578, i32 3}
!522 = !{ptr @mcs_ratio_table, !523, !"mcs_ratio_table", i1 false, i1 false}
!523 = !{!"../sound/soc/codecs/sta350.c", i32 589, i32 12}
!524 = !{ptr @st350_dt_ids, !525, !"st350_dt_ids", i1 false, i1 false}
!525 = !{!"../sound/soc/codecs/sta350.c", i32 1079, i32 34}
!526 = !{ptr @sta350_i2c_id, !527, !"sta350_i2c_id", i1 false, i1 false}
!527 = !{!"../sound/soc/codecs/sta350.c", i32 1255, i32 35}
!528 = !{i32 1, !"wchar_size", i32 2}
!529 = !{i32 1, !"min_enum_size", i32 4}
!530 = !{i32 8, !"branch-target-enforcement", i32 0}
!531 = !{i32 8, !"sign-return-address", i32 0}
!532 = !{i32 8, !"sign-return-address-all", i32 0}
!533 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!534 = !{i32 7, !"uwtable", i32 1}
!535 = !{i32 7, !"frame-pointer", i32 2}
!536 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!537 = !{!"auto-init"}
!538 = !{i32 0, i32 33}
!539 = !{i8 0, i8 9}
!540 = !{i64 2148989177, i64 2148989182, i64 2148989195, i64 2148989239, i64 2148989273, i64 2148989294}
