; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/sta32x.c_pt.bc'
source_filename = "../sound/soc/codecs/sta32x.c"
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
%struct.sta32x_priv = type { ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, ptr, i32, i32, [62 x i32], %struct.delayed_work, i32, ptr, %struct.mutex }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.sta32x_platform_data = type { i8, i8, i8, i8, i32, i8, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.97, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.97 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.88, [64 x i8] }
%union.anon.88 = type { %struct.anon.91, [40 x i8] }
%struct.anon.91 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.92, [128 x i8] }
%union.anon.92 = type { %union.anon.94 }
%union.anon.94 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_sta32x__306_1182_sta32x_i2c_driver_init6 = internal global ptr @sta32x_i2c_driver_init, section ".initcall6.init", align 4
@sta32x_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sta32x_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st32x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sta32x_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sta32x_i2c_driver_exit = internal global ptr @sta32x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description307 = internal constant [46 x i8] c"snd_soc_sta32x.description=ASoC STA32X driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [57 x i8] c"snd_soc_sta32x.author=Johannes Stezenbach <js@sig21.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [52 x i8] c"snd_soc_sta32x.file=sound/soc/codecs/snd-soc-sta32x\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [27 x i8] c"snd_soc_sta32x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sta32x\00", [25 x i8] zeroinitializer }, align 32
@st32x_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,sta32x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sta32x_i2c_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sta326\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"sta328\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"sta329\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sta32x_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sta32x->coeff_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xti\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@sta32x_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1144, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sta32x_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/sta32x.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sta32x_i2c_probe._entry_ptr = internal global ptr @sta32x_i2c_probe._entry, section ".printk_index", align 4
@sta32x_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sta32x_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 44, ptr @sta32x_write_regs, ptr @sta32x_read_regs, ptr @sta32x_volatile_regs, ptr null, ptr null, ptr null, ptr @sta32x_regs, i32 43, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sta32x:1148:(&sta32x_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@sta32x_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1151, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to init regmap: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sta32x_i2c_probe._entry_ptr.12 = internal global ptr @sta32x_i2c_probe._entry.10, section ".printk_index", align 4
@sta32x_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @sta32x_snd_controls, i32 64, ptr @sta32x_dapm_widgets, i32 4, ptr @sta32x_dapm_routes, i32 3, ptr @sta32x_probe, ptr @sta32x_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sta32x_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sta32x_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.236, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @sta32x_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.217, i64 3517578218700, i32 7904, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@sta32x_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1160, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register component (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@sta32x_i2c_probe._entry_ptr.15 = internal global ptr @sta32x_i2c_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st,output-conf\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,ch1-output-mapping\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,ch2-output-mapping\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,ch3-output-mapping\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st,fault-detect-recovery\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"st,thermal-warning-recovery\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"st,thermal-warning-adjustment\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,needs_esd_watchdog\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st,drop-compensation-ns\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,max-power-use-mpcc\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st,max-power-correction\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st,am-reduction-mode\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,odd-pwm-speed-mode\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"st,invalid-input-detect-mute\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Vdd3\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Vcc\00", [28 x i8] zeroinitializer }, align 32
@sta32x_write_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sta32x_write_regs_range, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sta32x_read_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sta32x_read_regs_range, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sta32x_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sta32x_volatile_regs_range, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sta32x_regs = internal constant { [43 x %struct.reg_default], [72 x i8] } { [43 x %struct.reg_default] [%struct.reg_default { i32 0, i32 99 }, %struct.reg_default { i32 1, i32 128 }, %struct.reg_default { i32 2, i32 194 }, %struct.reg_default { i32 3, i32 64 }, %struct.reg_default { i32 4, i32 194 }, %struct.reg_default { i32 5, i32 92 }, %struct.reg_default { i32 6, i32 16 }, %struct.reg_default { i32 7, i32 255 }, %struct.reg_default { i32 8, i32 96 }, %struct.reg_default { i32 9, i32 96 }, %struct.reg_default { i32 10, i32 96 }, %struct.reg_default { i32 11, i32 128 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 64 }, %struct.reg_default { i32 16, i32 128 }, %struct.reg_default { i32 17, i32 119 }, %struct.reg_default { i32 18, i32 106 }, %struct.reg_default { i32 19, i32 105 }, %struct.reg_default { i32 20, i32 106 }, %struct.reg_default { i32 21, i32 105 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 45 }, %struct.reg_default { i32 40, i32 192 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 12 }], [72 x i8] zeroinitializer }, align 32
@sta32x_write_regs_range = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 44 }], [24 x i8] zeroinitializer }, align 32
@sta32x_read_regs_range = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 44 }], [24 x i8] zeroinitializer }, align 32
@sta32x_volatile_regs_range = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 22, i32 38 }], [24 x i8] zeroinitializer }, align 32
@sta32x_snd_controls = internal constant { [64 x %struct.snd_kcontrol_new], [768 x i8] } { [64 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mvol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @chvol_tlv }, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @chvol_tlv }, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @chvol_tlv }, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta32x_drc_ac_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta32x_auto_eq_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta32x_auto_gc_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta32x_auto_xo_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta32x_preset_eq_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta32x_limiter_ch1_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta32x_limiter_ch2_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta32x_limiter_ch3_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tone_tlv }, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tone_tlv }, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta32x_limiter1_attack_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta32x_limiter2_attack_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta32x_limiter1_release_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sta32x_limiter2_release_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta32x_limiter_ac_attack_tlv }, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta32x_limiter_ac_attack_tlv }, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta32x_limiter_ac_release_tlv }, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta32x_limiter_ac_release_tlv }, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta32x_limiter_drc_attack_tlv }, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta32x_limiter_drc_attack_tlv }, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta32x_limiter_drc_release_tlv }, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sta32x_limiter_drc_release_tlv }, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 327680 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 327685 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 327690 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 327695 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 327700 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 327705 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 327710 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 327715 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 327720 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 327725 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 65586 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 65587 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 65588 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 65589 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 65590 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 65591 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 65592 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 65593 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 65594 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 65595 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 65596 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @sta32x_coefficient_info, ptr @sta32x_coefficient_get, ptr @sta32x_coefficient_put, %union.anon.98 zeroinitializer, i32 65597 }], [768 x i8] zeroinitializer }, align 32
@sta32x_dapm_routes = internal constant { [3 x %struct.snd_soc_dapm_route], [36 x i8] } { [3 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.218, ptr null, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr null, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr null, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }], [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Master Volume\00", [18 x i8] zeroinitializer }, align 32
@mvol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12700, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 7, i32 7, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Master Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch1 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch2 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch3 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch1 Volume\00", [21 x i8] zeroinitializer }, align 32
@chvol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7950, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8, i32 8, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch2 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 9, i32 9, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ch3 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 10, i32 10, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"De-emphasis Filter Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Compressor/Limiter Switch\00", [38 x i8] zeroinitializer }, align 32
@sta32x_drc_ac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 3, i8 5, i8 5, i32 2, i32 1, ptr @sta32x_drc_ac, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Miami Mode Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Zero Cross Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Soft Ramp Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Auto-Mute Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Automode EQ\00", [20 x i8] zeroinitializer }, align 32
@sta32x_auto_eq_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 11, i8 0, i8 0, i32 3, i32 3, ptr @sta32x_auto_eq_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Automode GC\00", [20 x i8] zeroinitializer }, align 32
@sta32x_auto_gc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 11, i8 4, i8 4, i32 4, i32 3, ptr @sta32x_auto_gc_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Automode XO\00", [20 x i8] zeroinitializer }, align 32
@sta32x_auto_xo_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12, i8 4, i8 4, i32 16, i32 15, ptr @sta32x_auto_xo_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Preset EQ\00", [22 x i8] zeroinitializer }, align 32
@sta32x_preset_eq_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 13, i8 0, i8 0, i32 32, i32 31, ptr @sta32x_preset_eq_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ch1 Tone Control Bypass Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ch2 Tone Control Bypass Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Ch1 EQ Bypass Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Ch2 EQ Bypass Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Ch1 Master Volume Bypass Switch\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Ch2 Master Volume Bypass Switch\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Ch3 Master Volume Bypass Switch\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Ch1 Limiter Select\00", [45 x i8] zeroinitializer }, align 32
@sta32x_limiter_ch1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 4, i8 4, i32 3, i32 3, ptr @sta32x_limiter_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Ch2 Limiter Select\00", [45 x i8] zeroinitializer }, align 32
@sta32x_limiter_ch2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 4, i8 4, i32 3, i32 3, ptr @sta32x_limiter_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Ch3 Limiter Select\00", [45 x i8] zeroinitializer }, align 32
@sta32x_limiter_ch3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 16, i8 4, i8 4, i32 3, i32 3, ptr @sta32x_limiter_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bass Tone Control\00", [46 x i8] zeroinitializer }, align 32
@tone_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -120, i32 200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 17, i32 17, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Treble Tone Control\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 17, i32 17, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Limiter1 Attack Rate (dB/ms)\00", [35 x i8] zeroinitializer }, align 32
@sta32x_limiter1_attack_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 0, i8 0, i32 16, i32 15, ptr @sta32x_limiter_attack_rate, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Limiter2 Attack Rate (dB/ms)\00", [35 x i8] zeroinitializer }, align 32
@sta32x_limiter2_attack_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 20, i8 0, i8 0, i32 16, i32 15, ptr @sta32x_limiter_attack_rate, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Limiter1 Release Rate (dB/ms)\00", [34 x i8] zeroinitializer }, align 32
@sta32x_limiter1_release_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 4, i8 4, i32 16, i32 15, ptr @sta32x_limiter_release_rate, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Limiter2 Release Rate (dB/ms)\00", [34 x i8] zeroinitializer }, align 32
@sta32x_limiter2_release_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 20, i8 4, i8 4, i32 16, i32 15, ptr @sta32x_limiter_release_rate, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Limiter1 Attack Threshold (AC Mode)\00", [60 x i8] zeroinitializer }, align 32
@sta32x_limiter_ac_attack_tlv = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 7, i32 1, i32 8, i32 -1200, i32 200, i32 8, i32 16, i32 1, i32 8, i32 300, i32 100], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 19, i32 19, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Limiter2 Attack Threshold (AC Mode)\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 21, i32 21, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Limiter1 Release Threshold (AC Mode)\00", [59 x i8] zeroinitializer }, align 32
@sta32x_limiter_ac_release_tlv = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 120, i32 0, i32 0, i32 1, i32 8, i32 -9999999, i32 0, i32 1, i32 1, i32 1, i32 8, i32 -2900, i32 0, i32 2, i32 2, i32 1, i32 8, i32 -2000, i32 0, i32 3, i32 8, i32 1, i32 8, i32 -1400, i32 200, i32 8, i32 16, i32 1, i32 8, i32 -700, i32 100], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 19, i32 19, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Limiter2 Release Threshold (AC Mode)\00", [59 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 21, i32 21, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Limiter1 Attack Threshold (DRC Mode)\00", [59 x i8] zeroinitializer }, align 32
@sta32x_limiter_drc_attack_tlv = internal global { [20 x i32], [48 x i8] } { [20 x i32] [i32 3, i32 72, i32 0, i32 7, i32 1, i32 8, i32 -3100, i32 200, i32 8, i32 13, i32 1, i32 8, i32 -1600, i32 100, i32 14, i32 16, i32 1, i32 8, i32 -1000, i32 300], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 19, i32 19, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Limiter2 Attack Threshold (DRC Mode)\00", [59 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 21, i32 21, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Limiter1 Release Threshold (DRC Mode)\00", [58 x i8] zeroinitializer }, align 32
@sta32x_limiter_drc_release_tlv = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 120, i32 0, i32 0, i32 1, i32 8, i32 -9999999, i32 0, i32 1, i32 2, i32 1, i32 8, i32 -3800, i32 200, i32 3, i32 4, i32 1, i32 8, i32 -3300, i32 200, i32 5, i32 12, i32 1, i32 8, i32 -3000, i32 200, i32 13, i32 16, i32 1, i32 8, i32 -1500, i32 300], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 19, i32 19, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Limiter2 Release Threshold (DRC Mode)\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 21, i32 21, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch1 - Biquad 1\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch1 - Biquad 2\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch1 - Biquad 3\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch1 - Biquad 4\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch2 - Biquad 1\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch2 - Biquad 2\00", [17 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch2 - Biquad 3\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch2 - Biquad 4\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"High-pass\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Low-pass\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch1 - Prescale\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ch2 - Prescale\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Ch1 - Postscale\00", [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Ch2 - Postscale\00", [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Ch3 - Postscale\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Thermal warning - Postscale\00", [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ch1 - Mix 1\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ch1 - Mix 2\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ch2 - Mix 1\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ch2 - Mix 2\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ch3 - Mix 1\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ch3 - Mix 2\00", [20 x i8] zeroinitializer }, align 32
@sta32x_drc_ac = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.126, ptr @.str.127], [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Anti-Clipping\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dynamic Range Compression\00", [38 x i8] zeroinitializer }, align 32
@sta32x_auto_eq_mode = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.128, ptr @.str.129, ptr @.str.130], [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"User\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Preset\00", [25 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Loudness\00", [23 x i8] zeroinitializer }, align 32
@sta32x_auto_gc_mode = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.128, ptr @.str.131, ptr @.str.132, ptr @.str.133], [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AC no clipping\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AC limited clipping (10%)\00", [38 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DRC nighttime listening mode\00", [35 x i8] zeroinitializer }, align 32
@sta32x_auto_xo_mode = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.128, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148], [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"80Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"120Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"140Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"160Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"180Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"220Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"240Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"260Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"280Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"320Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"340Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"360Hz\00", [26 x i8] zeroinitializer }, align 32
@sta32x_preset_eq_mode = internal global { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180], [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Flat\00", [27 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Rock\00", [27 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Soft Rock\00", [22 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Jazz\00", [27 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Classical\00", [22 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Dance\00", [26 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Pop\00", [28 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Soft\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Hard\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Party\00", [26 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Vocal\00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Hip-Hop\00", [24 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Dialog\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bass-boost #1\00", [18 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bass-boost #2\00", [18 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bass-boost #3\00", [18 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Loudness 1\00", [21 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Loudness 2\00", [21 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Loudness 3\00", [21 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Loudness 4\00", [21 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Loudness 5\00", [21 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Loudness 6\00", [21 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Loudness 7\00", [21 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Loudness 8\00", [21 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Loudness 9\00", [21 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Loudness 10\00", [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Loudness 11\00", [20 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Loudness 12\00", [20 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Loudness 13\00", [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Loudness 14\00", [20 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Loudness 15\00", [20 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Loudness 16\00", [20 x i8] zeroinitializer }, align 32
@sta32x_limiter_select = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.181, ptr @.str.182, ptr @.str.183], [20 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Limiter Disabled\00", [47 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Limiter #1\00", [21 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Limiter #2\00", [21 x i8] zeroinitializer }, align 32
@sta32x_limiter_attack_rate = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199], [32 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3.1584\00", [25 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.7072\00", [25 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.2560\00", [25 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.8048\00", [25 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.3536\00", [25 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.9024\00", [25 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.4512\00", [25 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.2256\00", [25 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.1504\00", [25 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.1123\00", [25 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0902\00", [25 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0752\00", [25 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0645\00", [25 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0564\00", [25 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0501\00", [25 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0451\00", [25 x i8] zeroinitializer }, align 32
@sta32x_limiter_release_rate = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215], [32 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.5116\00", [25 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.1370\00", [25 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0744\00", [25 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0499\00", [25 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0360\00", [25 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0299\00", [25 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0264\00", [25 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0208\00", [25 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0198\00", [25 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0172\00", [25 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0147\00", [25 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0137\00", [25 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0134\00", [25 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0117\00", [25 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0110\00", [25 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0104\00", [25 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LEFT\00", [27 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RIGHT\00", [26 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SUB\00", [28 x i8] zeroinitializer }, align 32
@sta32x_dapm_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.216, ptr @.str.217, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.219, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.220, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@sta32x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str.6, i32 887, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sta32x_probe\00", [19 x i8] zeroinitializer }, align 32
@sta32x_probe._entry_ptr = internal global ptr @sta32x_probe._entry, section ".printk_index", align 4
@sta32x_probe._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.223, ptr @.str.6, i32 895, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@sta32x_probe._entry_ptr.226 = internal global ptr @sta32x_probe._entry.224, section ".printk_index", align 4
@sta32x_probe._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.223, ptr @.str.6, i32 901, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to startup device\0A\00", [38 x i8] zeroinitializer }, align 32
@sta32x_probe._entry_ptr.229 = internal global ptr @sta32x_probe._entry.227, section ".printk_index", align 4
@sta32x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.230 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&sta32x->watchdog_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@sta32x_probe.__key.231 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.232 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&sta32x->watchdog_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@sta32x_set_bias_level.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.233, ptr @.str.234, ptr @.str.6, ptr @.str.235, i8 0, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.233 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_sta32x\00", [17 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sta32x_set_bias_level\00", [42 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"level = %d\0A\00", [20 x i8] zeroinitializer }, align 32
@sta32x_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.234, ptr @.str.6, i32 825, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@sta32x_set_bias_level._entry_ptr = internal global ptr @sta32x_set_bias_level._entry, section ".printk_index", align 4
@.str.236 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sta32x-hifi\00", [20 x i8] zeroinitializer }, align 32
@sta32x_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @sta32x_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @sta32x_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sta32x_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sta32x_set_dai_sysclk.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.233, ptr @.str.237, ptr @.str.6, ptr @.str.238, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.237 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sta32x_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mclk=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@sta32x_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.240, ptr @.str.6, i32 661, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sta32x->mclk is unset. Unable to determine ratio\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sta32x_hw_params\00", [47 x i8] zeroinitializer }, align 32
@sta32x_hw_params._entry_ptr = internal global ptr @sta32x_hw_params._entry, section ".printk_index", align 4
@sta32x_hw_params.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.233, ptr @.str.240, ptr @.str.6, ptr @.str.241, i8 0, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.241 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rate: %u, ratio: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@interpolation_ratios = internal constant { [7 x %struct.anon.108], [40 x i8] } { [7 x %struct.anon.108] [%struct.anon.108 { i32 32000, i32 0 }, %struct.anon.108 { i32 44100, i32 0 }, %struct.anon.108 { i32 48000, i32 0 }, %struct.anon.108 { i32 88200, i32 1 }, %struct.anon.108 { i32 96000, i32 1 }, %struct.anon.108 { i32 176400, i32 2 }, %struct.anon.108 { i32 192000, i32 2 }], [40 x i8] zeroinitializer }, align 32
@sta32x_hw_params._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.240, ptr @.str.6, i32 677, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported samplerate: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@sta32x_hw_params._entry_ptr.244 = internal global ptr @sta32x_hw_params._entry.242, section ".printk_index", align 4
@mcs_ratio_table = internal constant { [3 x [7 x i32]], [44 x i8] } { [3 x [7 x i32]] [[7 x i32] [i32 768, i32 512, i32 384, i32 256, i32 128, i32 576, i32 0], [7 x i32] [i32 384, i32 256, i32 192, i32 128, i32 64, i32 0, i32 0], [7 x i32] [i32 384, i32 256, i32 192, i32 128, i32 64, i32 0, i32 0]], [44 x i8] zeroinitializer }, align 32
@sta32x_hw_params._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.240, ptr @.str.6, i32 689, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unresolvable ratio: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@sta32x_hw_params._entry_ptr.247 = internal global ptr @sta32x_hw_params._entry.245, section ".printk_index", align 4
@sta32x_hw_params.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.233, ptr @.str.240, ptr @.str.6, ptr @.str.248, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.248 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"24bit\0A\00", [25 x i8] zeroinitializer }, align 32
@sta32x_hw_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.233, ptr @.str.240, ptr @.str.6, ptr @.str.249, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.249 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"24bit or 32bit\0A\00", [16 x i8] zeroinitializer }, align 32
@sta32x_hw_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.233, ptr @.str.240, ptr @.str.6, ptr @.str.250, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.250 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"20bit\0A\00", [25 x i8] zeroinitializer }, align 32
@sta32x_hw_params.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.233, ptr @.str.240, ptr @.str.6, ptr @.str.251, i8 0, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.251 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"18bit\0A\00", [25 x i8] zeroinitializer }, align 32
@sta32x_hw_params.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.233, ptr @.str.240, ptr @.str.6, ptr @.str.252, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.252 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"16bit\0A\00", [25 x i8] zeroinitializer }, align 32
@switch.table.sta32x_hw_params = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 6, i32 5], [20 x i8] zeroinitializer }, align 32
@switch.table.sta32x_hw_params.253 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 10, i32 9], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.254 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.255 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 512]
@__sancov_gen_cov_switch_values.257 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.258 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.259 = private unnamed_addr constant [18 x i8] c"sta32x_i2c_driver\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1173, i32 26 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1175, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant [13 x i8] c"st32x_dt_ids\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1036, i32 34 }
@___asan_gen_.268 = private unnamed_addr constant [14 x i8] c"sta32x_i2c_id\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1165, i32 35 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1109, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1121, i32 38 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1132, i32 54 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1144, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [14 x i8] c"sta32x_regmap\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1023, i32 35 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1148, i32 19 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1151, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant [17 x i8] c"sta32x_component\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1006, i32 46 }
@___asan_gen_.319 = private unnamed_addr constant [11 x i8] c"sta32x_dai\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 863, i32 34 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1160, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1052, i32 26 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1054, i32 26 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1056, i32 26 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1058, i32 26 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1061, i32 26 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1063, i32 26 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1065, i32 26 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1067, i32 26 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1071, i32 27 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1075, i32 26 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1078, i32 26 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1081, i32 26 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1084, i32 26 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 1088, i32 26 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 134, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 135, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 136, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [18 x i8] c"sta32x_write_regs\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 117, i32 41 }
@___asan_gen_.382 = private unnamed_addr constant [17 x i8] c"sta32x_read_regs\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 122, i32 41 }
@___asan_gen_.385 = private unnamed_addr constant [21 x i8] c"sta32x_volatile_regs\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 127, i32 41 }
@___asan_gen_.388 = private unnamed_addr constant [12 x i8] c"sta32x_regs\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 59, i32 33 }
@___asan_gen_.391 = private unnamed_addr constant [24 x i8] c"sta32x_write_regs_range\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 105, i32 34 }
@___asan_gen_.394 = private unnamed_addr constant [23 x i8] c"sta32x_read_regs_range\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 109, i32 34 }
@___asan_gen_.397 = private unnamed_addr constant [27 x i8] c"sta32x_volatile_regs_range\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 113, i32 34 }
@___asan_gen_.400 = private unnamed_addr constant [20 x i8] c"sta32x_snd_controls\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 447, i32 38 }
@___asan_gen_.403 = private unnamed_addr constant [19 x i8] c"sta32x_dapm_routes\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 534, i32 40 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 448, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant [9 x i8] c"mvol_tlv\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 157, i32 14 }
@___asan_gen_.412 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 449, i32 1 }
@___asan_gen_.416 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 450, i32 1 }
@___asan_gen_.420 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 451, i32 1 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 452, i32 1 }
@___asan_gen_.428 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 453, i32 1 }
@___asan_gen_.432 = private unnamed_addr constant [10 x i8] c"chvol_tlv\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 158, i32 14 }
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 454, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 455, i32 1 }
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 456, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 457, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant [19 x i8] c"sta32x_drc_ac_enum\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 215, i32 8 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 458, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 459, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 460, i32 1 }
@___asan_gen_.465 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 461, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 462, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant [20 x i8] c"sta32x_auto_eq_enum\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 218, i32 8 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 463, i32 1 }
@___asan_gen_.479 = private unnamed_addr constant [20 x i8] c"sta32x_auto_gc_enum\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 221, i32 8 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 464, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant [20 x i8] c"sta32x_auto_xo_enum\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 224, i32 8 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 465, i32 1 }
@___asan_gen_.491 = private unnamed_addr constant [22 x i8] c"sta32x_preset_eq_enum\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 227, i32 8 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 466, i32 1 }
@___asan_gen_.497 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 467, i32 1 }
@___asan_gen_.501 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 468, i32 1 }
@___asan_gen_.505 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 469, i32 1 }
@___asan_gen_.509 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 470, i32 1 }
@___asan_gen_.513 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 471, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 472, i32 1 }
@___asan_gen_.521 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 473, i32 1 }
@___asan_gen_.525 = private unnamed_addr constant [24 x i8] c"sta32x_limiter_ch1_enum\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 230, i32 8 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 474, i32 1 }
@___asan_gen_.531 = private unnamed_addr constant [24 x i8] c"sta32x_limiter_ch2_enum\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 233, i32 8 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 475, i32 1 }
@___asan_gen_.537 = private unnamed_addr constant [24 x i8] c"sta32x_limiter_ch3_enum\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 236, i32 8 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 476, i32 1 }
@___asan_gen_.543 = private unnamed_addr constant [9 x i8] c"tone_tlv\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 159, i32 14 }
@___asan_gen_.546 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 477, i32 1 }
@___asan_gen_.550 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 478, i32 1 }
@___asan_gen_.554 = private unnamed_addr constant [33 x i8] c"sta32x_limiter1_attack_rate_enum\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 239, i32 8 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 479, i32 1 }
@___asan_gen_.560 = private unnamed_addr constant [33 x i8] c"sta32x_limiter2_attack_rate_enum\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 242, i32 8 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 480, i32 1 }
@___asan_gen_.566 = private unnamed_addr constant [34 x i8] c"sta32x_limiter1_release_rate_enum\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 245, i32 8 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 481, i32 1 }
@___asan_gen_.572 = private unnamed_addr constant [34 x i8] c"sta32x_limiter2_release_rate_enum\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 248, i32 8 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 486, i32 1 }
@___asan_gen_.578 = private unnamed_addr constant [29 x i8] c"sta32x_limiter_ac_attack_tlv\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 188, i32 8 }
@___asan_gen_.581 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 488, i32 1 }
@___asan_gen_.585 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 490, i32 1 }
@___asan_gen_.589 = private unnamed_addr constant [30 x i8] c"sta32x_limiter_ac_release_tlv\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 193, i32 8 }
@___asan_gen_.592 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 492, i32 1 }
@___asan_gen_.596 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 494, i32 1 }
@___asan_gen_.600 = private unnamed_addr constant [30 x i8] c"sta32x_limiter_drc_attack_tlv\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 201, i32 8 }
@___asan_gen_.603 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 496, i32 1 }
@___asan_gen_.607 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 498, i32 1 }
@___asan_gen_.611 = private unnamed_addr constant [31 x i8] c"sta32x_limiter_drc_release_tlv\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 207, i32 8 }
@___asan_gen_.614 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 500, i32 1 }
@___asan_gen_.618 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 503, i32 1 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 504, i32 1 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 505, i32 1 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 506, i32 1 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 507, i32 1 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 508, i32 1 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 509, i32 1 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 510, i32 1 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 511, i32 1 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 512, i32 1 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 513, i32 1 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 514, i32 1 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 515, i32 1 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 516, i32 1 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 517, i32 1 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 518, i32 1 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 519, i32 1 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 520, i32 1 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 521, i32 1 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 522, i32 1 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 523, i32 1 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 524, i32 1 }
@___asan_gen_.685 = private unnamed_addr constant [14 x i8] c"sta32x_drc_ac\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 161, i32 20 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 162, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 162, i32 19 }
@___asan_gen_.694 = private unnamed_addr constant [20 x i8] c"sta32x_auto_eq_mode\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 163, i32 20 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 164, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 164, i32 10 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 164, i32 20 }
@___asan_gen_.706 = private unnamed_addr constant [20 x i8] c"sta32x_auto_gc_mode\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 165, i32 20 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 166, i32 10 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 166, i32 28 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 167, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant [20 x i8] c"sta32x_auto_xo_mode\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 168, i32 20 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 169, i32 10 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 169, i32 18 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 169, i32 27 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 169, i32 36 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 169, i32 45 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 169, i32 54 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 169, i32 63 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 170, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 170, i32 11 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 170, i32 20 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 170, i32 29 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 170, i32 38 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 170, i32 47 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 170, i32 56 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 170, i32 65 }
@___asan_gen_.766 = private unnamed_addr constant [22 x i8] c"sta32x_preset_eq_mode\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 171, i32 20 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 172, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 172, i32 10 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 172, i32 18 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 172, i32 31 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 172, i32 39 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 172, i32 52 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 172, i32 61 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 172, i32 68 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 173, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 173, i32 10 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 173, i32 19 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 173, i32 28 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 173, i32 39 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 173, i32 49 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 174, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 174, i32 19 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 174, i32 36 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 174, i32 50 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 175, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 175, i32 16 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 175, i32 30 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 175, i32 44 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 175, i32 58 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 176, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 176, i32 16 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 176, i32 30 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 176, i32 45 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 176, i32 60 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 177, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 177, i32 17 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 177, i32 32 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 177, i32 47 }
@___asan_gen_.865 = private unnamed_addr constant [22 x i8] c"sta32x_limiter_select\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 178, i32 20 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 179, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 179, i32 22 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 179, i32 36 }
@___asan_gen_.877 = private unnamed_addr constant [27 x i8] c"sta32x_limiter_attack_rate\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 180, i32 20 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 181, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 181, i32 12 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 181, i32 22 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 181, i32 32 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 181, i32 42 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 181, i32 52 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 182, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 182, i32 12 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 182, i32 22 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 182, i32 32 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 182, i32 42 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 182, i32 52 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 183, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 183, i32 12 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 183, i32 22 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 183, i32 32 }
@___asan_gen_.928 = private unnamed_addr constant [28 x i8] c"sta32x_limiter_release_rate\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 184, i32 20 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 185, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 185, i32 12 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 185, i32 22 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 185, i32 32 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 185, i32 42 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 185, i32 52 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 186, i32 2 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 186, i32 12 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 186, i32 22 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 186, i32 32 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 186, i32 42 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 186, i32 52 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 187, i32 2 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 187, i32 12 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 187, i32 22 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 187, i32 32 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 528, i32 1 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 529, i32 1 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 530, i32 1 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 531, i32 1 }
@___asan_gen_.994 = private unnamed_addr constant [20 x i8] c"sta32x_dapm_widgets\00", align 1
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 527, i32 41 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 886, i32 4 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 895, i32 3 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 901, i32 3 }
@___asan_gen_.1024 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 979, i32 3 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 807, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 824, i32 5 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 864, i32 10 }
@___asan_gen_.1045 = private unnamed_addr constant [15 x i8] c"sta32x_dai_ops\00", align 1
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 857, i32 37 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 586, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 660, i32 3 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 667, i32 2 }
@___asan_gen_.1066 = private unnamed_addr constant [21 x i8] c"interpolation_ratios\00", align 1
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 544, i32 3 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 677, i32 3 }
@___asan_gen_.1075 = private unnamed_addr constant [16 x i8] c"mcs_ratio_table\00", align 1
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 555, i32 12 }
@___asan_gen_.1078 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 689, i32 3 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 699, i32 3 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 702, i32 3 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 717, i32 3 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 732, i32 3 }
@___asan_gen_.1096 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1097 = private constant [29 x i8] c"../sound/soc/codecs/sta32x.c\00", align 1
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1097, i32 747, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant [30 x i8] c"switch.table.sta32x_hw_params\00", align 1
@___asan_gen_.1100 = private unnamed_addr constant [34 x i8] c"switch.table.sta32x_hw_params.253\00", align 1
@llvm.compiler.used = appending global [319 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_sta32x_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_sta32x__306_1182_sta32x_i2c_driver_init6, ptr @sta32x_hw_params._entry, ptr @sta32x_hw_params._entry.242, ptr @sta32x_hw_params._entry.245, ptr @sta32x_hw_params._entry_ptr, ptr @sta32x_hw_params._entry_ptr.244, ptr @sta32x_hw_params._entry_ptr.247, ptr @sta32x_i2c_driver_exit, ptr @sta32x_i2c_probe._entry, ptr @sta32x_i2c_probe._entry.10, ptr @sta32x_i2c_probe._entry.13, ptr @sta32x_i2c_probe._entry_ptr, ptr @sta32x_i2c_probe._entry_ptr.12, ptr @sta32x_i2c_probe._entry_ptr.15, ptr @sta32x_probe._entry, ptr @sta32x_probe._entry.224, ptr @sta32x_probe._entry.227, ptr @sta32x_probe._entry_ptr, ptr @sta32x_probe._entry_ptr.226, ptr @sta32x_probe._entry_ptr.229, ptr @sta32x_set_bias_level._entry, ptr @sta32x_set_bias_level._entry_ptr, ptr @sta32x_i2c_driver, ptr @.str, ptr @st32x_dt_ids, ptr @sta32x_i2c_id, ptr @sta32x_i2c_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sta32x_i2c_probe._key, ptr @sta32x_regmap, ptr @.str.9, ptr @.str.11, ptr @sta32x_component, ptr @sta32x_dai, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @sta32x_write_regs, ptr @sta32x_read_regs, ptr @sta32x_volatile_regs, ptr @sta32x_regs, ptr @sta32x_write_regs_range, ptr @sta32x_read_regs_range, ptr @sta32x_volatile_regs_range, ptr @sta32x_snd_controls, ptr @sta32x_dapm_routes, ptr @.str.33, ptr @mvol_tlv, ptr @.compoundliteral, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @chvol_tlv, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @sta32x_drc_ac_enum, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @sta32x_auto_eq_enum, ptr @.str.60, ptr @sta32x_auto_gc_enum, ptr @.str.61, ptr @sta32x_auto_xo_enum, ptr @.str.62, ptr @sta32x_preset_eq_enum, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @sta32x_limiter_ch1_enum, ptr @.str.78, ptr @sta32x_limiter_ch2_enum, ptr @.str.79, ptr @sta32x_limiter_ch3_enum, ptr @.str.80, ptr @tone_tlv, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @sta32x_limiter1_attack_rate_enum, ptr @.str.85, ptr @sta32x_limiter2_attack_rate_enum, ptr @.str.86, ptr @sta32x_limiter1_release_rate_enum, ptr @.str.87, ptr @sta32x_limiter2_release_rate_enum, ptr @.str.88, ptr @sta32x_limiter_ac_attack_tlv, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @sta32x_limiter_ac_release_tlv, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @sta32x_limiter_drc_attack_tlv, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @sta32x_limiter_drc_release_tlv, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @sta32x_drc_ac, ptr @.str.126, ptr @.str.127, ptr @sta32x_auto_eq_mode, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @sta32x_auto_gc_mode, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @sta32x_auto_xo_mode, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @sta32x_preset_eq_mode, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @sta32x_limiter_select, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @sta32x_limiter_attack_rate, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @sta32x_limiter_release_rate, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @sta32x_dapm_widgets, ptr @.str.222, ptr @.str.223, ptr @.str.225, ptr @.str.228, ptr @sta32x_probe.__key, ptr @.str.230, ptr @sta32x_probe.__key.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @sta32x_dai_ops, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @interpolation_ratios, ptr @.str.243, ptr @mcs_ratio_table, ptr @.str.246, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @switch.table.sta32x_hw_params, ptr @switch.table.sta32x_hw_params.253], section "llvm.metadata"
@0 = internal global [302 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st32x_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_i2c_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_write_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_read_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_regs to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_write_regs_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_read_regs_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_volatile_regs_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_snd_controls to i32), i32 3072, i32 3840, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_dapm_routes to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chvol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_drc_ac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_auto_eq_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_auto_gc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_auto_xo_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_preset_eq_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter_ch1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter_ch2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter_ch3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tone_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter1_attack_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter2_attack_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter1_release_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter2_release_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter_ac_attack_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter_ac_release_tlv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter_drc_attack_tlv to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter_drc_release_tlv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_drc_ac to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_auto_eq_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_auto_gc_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_auto_xo_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_preset_eq_mode to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter_select to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter_attack_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_limiter_release_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_dapm_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_probe._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_probe._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_probe.__key.231 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interpolation_ratios to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_hw_params._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs_ratio_table to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta32x_hw_params._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sta32x_hw_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sta32x_hw_params.253 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sta32x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sta32x_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sta32x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @sta32x_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta32x_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 508, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %coeff_lock = getelementptr inbounds %struct.sta32x_priv, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %coeff_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sta32x_i2c_probe.__key) #7
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.sta32x_priv, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pdata, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %do.body.if.end9_crit_edge, label %if.then5

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %do.body
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #7
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sta32x_probe_dt.exit.thread, label %if.end.i

sta32x_probe_dt.exit.thread:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  %call.i.i.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %6, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0) #7
  %ch1_output_mapping.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %call.i.i, i32 0, i32 1
  %call.i.i117.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %6, ptr noundef nonnull @.str.17, ptr noundef %ch1_output_mapping.i, i32 noundef 1, i32 noundef 0) #7
  %ch2_output_mapping.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %call.i.i, i32 0, i32 2
  %call.i.i118.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef %ch2_output_mapping.i, i32 noundef 1, i32 noundef 0) #7
  %ch3_output_mapping.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %call.i.i, i32 0, i32 3
  %call.i.i119.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %6, ptr noundef nonnull @.str.19, ptr noundef %ch3_output_mapping.i, i32 noundef 1, i32 noundef 0) #7
  %call5.i = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef null) #7
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then7.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fault_detect_recovery.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %call.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %fault_detect_recovery.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %fault_detect_recovery.i, align 1
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %fault_detect_recovery.i, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i.if.end8.i_crit_edge
  %call9.i = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.21, ptr noundef null) #7
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end8.i.if.end15.i_crit_edge, label %if.then11.i

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %thermal_warning_recovery.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %call.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %thermal_warning_recovery.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load12.i = load i8, ptr %thermal_warning_recovery.i, align 1
  %bf.set14.i = or i8 %bf.load12.i, -128
  store i8 %bf.set14.i, ptr %thermal_warning_recovery.i, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end15.i_crit_edge
  %call16.i = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.22, ptr noundef null) #7
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end22.i_crit_edge, label %if.then18.i

if.end15.i.if.end22.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %thermal_warning_adjustment.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %thermal_warning_adjustment.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load19.i = load i8, ptr %thermal_warning_adjustment.i, align 1
  %bf.set21.i = or i8 %bf.load19.i, 64
  store i8 %bf.set21.i, ptr %thermal_warning_adjustment.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end22.i_crit_edge
  %call23.i = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.23, ptr noundef null) #7
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %if.end22.i.if.end26.i_crit_edge, label %if.then25.i

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %needs_esd_watchdog.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %call.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %needs_esd_watchdog.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %needs_esd_watchdog.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end26.i_crit_edge
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 140, ptr %tmp.i, align 2
  %call.i.i120.i = call i32 @of_property_read_variable_u16_array(ptr noundef %6, ptr noundef nonnull @.str.24, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #7
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tmp.i, align 2
  %14 = call i16 @llvm.umin.i16(i16 %13, i16 300) #7
  %div121122.i = udiv i16 %14, 20
  %conv45.i = trunc i16 %div121122.i to i8
  %drop_compensation_ns.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %call.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %drop_compensation_ns.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv45.i, ptr %drop_compensation_ns.i, align 4
  %call46.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.25, ptr noundef null) #7
  %tobool47.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool47.not.i, label %if.end26.i.if.end52.i_crit_edge, label %if.then48.i

if.end26.i.if.end52.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

if.then48.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_power_use_mpcc.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %call.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %max_power_use_mpcc.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load49.i = load i8, ptr %max_power_use_mpcc.i, align 1
  %bf.set51.i = or i8 %bf.load49.i, 16
  store i8 %bf.set51.i, ptr %max_power_use_mpcc.i, align 1
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then48.i, %if.end26.i.if.end52.i_crit_edge
  %call53.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.26, ptr noundef null) #7
  %tobool54.not.i = icmp eq ptr %call53.i, null
  br i1 %tobool54.not.i, label %if.end52.i.if.end59.i_crit_edge, label %if.then55.i

if.end52.i.if.end59.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.then55.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_power_correction.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %call.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %max_power_correction.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load56.i = load i8, ptr %max_power_correction.i, align 1
  %bf.set58.i = or i8 %bf.load56.i, 8
  store i8 %bf.set58.i, ptr %max_power_correction.i, align 1
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then55.i, %if.end52.i.if.end59.i_crit_edge
  %call60.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.27, ptr noundef null) #7
  %tobool61.not.i = icmp eq ptr %call60.i, null
  br i1 %tobool61.not.i, label %if.end59.i.if.end66.i_crit_edge, label %if.then62.i

if.end59.i.if.end66.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

if.then62.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  %am_reduction_mode.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %call.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %am_reduction_mode.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load63.i = load i8, ptr %am_reduction_mode.i, align 1
  %bf.set65.i = or i8 %bf.load63.i, 4
  store i8 %bf.set65.i, ptr %am_reduction_mode.i, align 1
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then62.i, %if.end59.i.if.end66.i_crit_edge
  %call67.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.28, ptr noundef null) #7
  %tobool68.not.i = icmp eq ptr %call67.i, null
  br i1 %tobool68.not.i, label %if.end66.i.if.end73.i_crit_edge, label %if.then69.i

if.end66.i.if.end73.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i

if.then69.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  %odd_pwm_speed_mode.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %call.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %odd_pwm_speed_mode.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load70.i = load i8, ptr %odd_pwm_speed_mode.i, align 1
  %bf.set72.i = or i8 %bf.load70.i, 2
  store i8 %bf.set72.i, ptr %odd_pwm_speed_mode.i, align 1
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then69.i, %if.end66.i.if.end73.i_crit_edge
  %call74.i = call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.29, ptr noundef null) #7
  %tobool75.not.i = icmp eq ptr %call74.i, null
  br i1 %tobool75.not.i, label %if.end73.i.sta32x_probe_dt.exit_crit_edge, label %if.then76.i

if.end73.i.sta32x_probe_dt.exit_crit_edge:        ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sta32x_probe_dt.exit

if.then76.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  %invalid_input_detect_mute.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %call.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %invalid_input_detect_mute.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load77.i = load i8, ptr %invalid_input_detect_mute.i, align 1
  %bf.set79.i = or i8 %bf.load77.i, 1
  store i8 %bf.set79.i, ptr %invalid_input_detect_mute.i, align 1
  br label %sta32x_probe_dt.exit

sta32x_probe_dt.exit:                             ; preds = %if.then76.i, %if.end73.i.sta32x_probe_dt.exit_crit_edge
  %21 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %pdata, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #7
  br label %if.end9

if.end9:                                          ; preds = %sta32x_probe_dt.exit, %do.body.if.end9_crit_edge
  %call10 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  %xti_clk = getelementptr inbounds %struct.sta32x_priv, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %xti_clk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call10, ptr %xti_clk, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then13:                                        ; preds = %if.end9
  %cmp16 = icmp eq ptr %call10, inttoptr (i32 -517 to ptr)
  br i1 %cmp16, label %if.then13.cleanup_crit_edge, label %if.end18

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %xti_clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %xti_clk, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end9.if.end20_crit_edge
  %call21 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 3) #7
  %gpiod_nreset = getelementptr inbounds %struct.sta32x_priv, ptr %call.i, i32 0, i32 10
  %24 = ptrtoint ptr %gpiod_nreset to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call21, ptr %gpiod_nreset, align 4
  %cmp.i102 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102, label %if.then24, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end20
  %arrayidx29 = getelementptr %struct.sta32x_priv, ptr %call.i, i32 0, i32 2, i32 0
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.30, ptr %arrayidx29, align 4
  %arrayidx29.1 = getelementptr %struct.sta32x_priv, ptr %call.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.31, ptr %arrayidx29.1, align 4
  %arrayidx29.2 = getelementptr %struct.sta32x_priv, ptr %call.i, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.32, ptr %arrayidx29.2, align 4
  %call32 = call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.end39, label %do.end37

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %call21 to i32
  br label %cleanup

do.end37:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call32) #10
  br label %cleanup

if.end39:                                         ; preds = %for.body.preheader
  %call40 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @sta32x_regmap, ptr noundef nonnull @sta32x_i2c_probe._key, ptr noundef nonnull @.str.9) #7
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call40, ptr %call.i, align 4
  %cmp.i103 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then43, label %if.end49

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call40 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %30) #10
  br label %cleanup

if.end49:                                         ; preds = %if.end39
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call50 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @sta32x_component, ptr noundef nonnull @sta32x_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end55, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call50) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end49.cleanup_crit_edge, %if.then43, %do.end37, %if.then24, %if.then13.cleanup_crit_edge, %sta32x_probe_dt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %if.then24 ], [ %call32, %do.end37 ], [ %30, %if.then43 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then13.cleanup_crit_edge ], [ %call50, %do.end55 ], [ %call50, %if.end49.cleanup_crit_edge ], [ -12, %sta32x_probe_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta32x_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  %component2 = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %component2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %component, ptr %component2, align 4
  %xti_clk = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %xti_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xti_clk, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6_crit_edge, label %if.then3.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef nonnull %8) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.222, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %supplies = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 2
  %call7 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.225, i32 noundef %call7) #10
  %13 = ptrtoint ptr %xti_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xti_clk, align 4
  %tobool149.not = icmp eq ptr %14, null
  br i1 %tobool149.not, label %do.end12.cleanup_crit_edge, label %if.then150

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %gpiod_nreset.i = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %gpiod_nreset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpiod_nreset.i, align 4
  %tobool.not.i223 = icmp eq ptr %16, null
  br i1 %tobool.not.i223, label %if.end14.sta32x_startup_sequence.exit_crit_edge, label %if.then.i

if.end14.sta32x_startup_sequence.exit_crit_edge:  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sta32x_startup_sequence.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %16, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  %18 = ptrtoint ptr %gpiod_nreset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpiod_nreset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #7
  br label %sta32x_startup_sequence.exit

sta32x_startup_sequence.exit:                     ; preds = %if.then.i, %if.end14.sta32x_startup_sequence.exit_crit_edge
  %thermal_warning_recovery = getelementptr inbounds %struct.sta32x_platform_data, ptr %5, i32 0, i32 6
  %21 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %thermal_warning_recovery, align 1
  %22 = lshr i8 %bf.load, 1
  %23 = and i8 %22, 64
  %24 = xor i8 %23, 64
  %25 = zext i8 %24 to i32
  %26 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool29.not = icmp eq i8 %26, 0
  %or31 = or i32 %25, 32
  %thermal.1 = select i1 %tobool29.not, i32 %or31, i32 %25
  %27 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool37.not = icmp eq i8 %27, 0
  %or39 = or i32 %thermal.1, 128
  %thermal.2 = select i1 %tobool37.not, i32 %or39, i32 %thermal.1
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %call.i225 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 0, i32 noundef 224, i32 noundef %thermal.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %drop_compensation_ns = getelementptr inbounds %struct.sta32x_platform_data, ptr %5, i32 0, i32 5
  %32 = ptrtoint ptr %drop_compensation_ns to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %drop_compensation_ns, align 4
  %conv = zext i8 %33 to i32
  %shl = shl nuw nsw i32 %conv, 2
  %call.i226 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 2, i32 noundef 124, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %36 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load45 = load i8, ptr %thermal_warning_recovery, align 1
  %37 = lshr i8 %bf.load45, 4
  %.lobit = and i8 %37, 1
  %38 = zext i8 %.lobit to i32
  %call.i227 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 4, i32 noundef 1, i32 noundef %38, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %41 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load52 = load i8, ptr %thermal_warning_recovery, align 1
  %42 = lshr i8 %bf.load52, 2
  %43 = and i8 %42, 2
  %44 = zext i8 %43 to i32
  %call.i228 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 4, i32 noundef 2, i32 noundef %44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %47 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load60 = load i8, ptr %thermal_warning_recovery, align 1
  %48 = shl i8 %bf.load60, 1
  %49 = and i8 %48, 8
  %50 = zext i8 %49 to i32
  %call.i229 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 4, i32 noundef 8, i32 noundef %50, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %3, align 4
  %53 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load68 = load i8, ptr %thermal_warning_recovery, align 1
  %54 = shl i8 %bf.load68, 3
  %55 = and i8 %54, 16
  %56 = zext i8 %55 to i32
  %call.i230 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 4, i32 noundef 16, i32 noundef %56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  %59 = ptrtoint ptr %thermal_warning_recovery to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load76 = load i8, ptr %thermal_warning_recovery, align 1
  %bf.clear77 = shl i8 %bf.load76, 2
  %60 = and i8 %bf.clear77, 4
  %61 = zext i8 %60 to i32
  %call.i231 = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 5, i32 noundef 4, i32 noundef %61, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %5, align 4
  %conv83 = zext i8 %65 to i32
  %call.i232 = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 5, i32 noundef 3, i32 noundef %conv83, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %3, align 4
  %ch1_output_mapping = getelementptr inbounds %struct.sta32x_platform_data, ptr %5, i32 0, i32 1
  %68 = ptrtoint ptr %ch1_output_mapping to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ch1_output_mapping, align 1
  %conv87 = zext i8 %69 to i32
  %shl88 = shl nuw nsw i32 %conv87, 6
  %call.i233 = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 14, i32 noundef 192, i32 noundef %shl88, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %3, align 4
  %ch2_output_mapping = getelementptr inbounds %struct.sta32x_platform_data, ptr %5, i32 0, i32 2
  %72 = ptrtoint ptr %ch2_output_mapping to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ch2_output_mapping, align 2
  %conv91 = zext i8 %73 to i32
  %shl92 = shl nuw nsw i32 %conv91, 6
  %call.i234 = tail call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 15, i32 noundef 192, i32 noundef %shl92, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %3, align 4
  %ch3_output_mapping = getelementptr inbounds %struct.sta32x_platform_data, ptr %5, i32 0, i32 3
  %76 = ptrtoint ptr %ch3_output_mapping to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ch3_output_mapping, align 1
  %conv95 = zext i8 %77 to i32
  %shl96 = shl nuw nsw i32 %conv95, 6
  %call.i235 = tail call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 16, i32 noundef 192, i32 noundef %shl96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %arrayidx = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 4
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4194304, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 9
  %79 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4194304, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 14
  %80 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4194304, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 19
  %81 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4194304, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 24
  %82 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 4194304, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 29
  %83 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4194304, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 34
  %84 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4194304, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 39
  %85 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 4194304, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 44
  %86 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 4194304, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 49
  %87 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4194304, ptr %arrayidx.9, align 4
  %arrayidx105 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 50
  %88 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 8388607, ptr %arrayidx105, align 4
  %arrayidx105.1 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 51
  %89 = ptrtoint ptr %arrayidx105.1 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 8388607, ptr %arrayidx105.1, align 4
  %arrayidx105.2 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 52
  %90 = ptrtoint ptr %arrayidx105.2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 8388607, ptr %arrayidx105.2, align 4
  %arrayidx105.3 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 53
  %91 = ptrtoint ptr %arrayidx105.3 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 8388607, ptr %arrayidx105.3, align 4
  %arrayidx105.4 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 54
  %92 = ptrtoint ptr %arrayidx105.4 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 8388607, ptr %arrayidx105.4, align 4
  %arrayidx109 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 55
  %93 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 5938679, ptr %arrayidx109, align 4
  %arrayidx111 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 56
  %94 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 8388607, ptr %arrayidx111, align 4
  %arrayidx113 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 59
  %95 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 8388607, ptr %arrayidx113, align 4
  %arrayidx115 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 60
  %96 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 4194304, ptr %arrayidx115, align 4
  %arrayidx117 = getelementptr %struct.sta32x_priv, ptr %3, i32 0, i32 7, i32 61
  %97 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 4194304, ptr %arrayidx117, align 4
  %98 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdata1, align 4
  %needs_esd_watchdog = getelementptr inbounds %struct.sta32x_platform_data, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %needs_esd_watchdog to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %needs_esd_watchdog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool119.not = icmp eq i32 %101, 0
  br i1 %tobool119.not, label %sta32x_startup_sequence.exit.if.end140_crit_edge, label %do.body122

sta32x_startup_sequence.exit.if.end140_crit_edge: ; preds = %sta32x_startup_sequence.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

do.body122:                                       ; preds = %sta32x_startup_sequence.exit
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_work = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 8
  tail call void @__init_work(ptr noundef %watchdog_work, i32 noundef 0) #7
  %102 = ptrtoint ptr %watchdog_work to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -64, ptr %watchdog_work, align 4
  %lockdep_map = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.230, ptr noundef nonnull @sta32x_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry129 = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 8, i32 0, i32 1
  %103 = ptrtoint ptr %entry129 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %entry129, ptr %entry129, align 4
  %prev.i = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 8, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %entry129, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 8, i32 0, i32 2
  %105 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @sta32x_watchdog, ptr %func, align 4
  %timer = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.232, ptr noundef nonnull @sta32x_probe.__key.231) #7
  br label %if.end140

if.end140:                                        ; preds = %do.body122, %sta32x_startup_sequence.exit.if.end140_crit_edge
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i236 = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 1) #7
  %call144 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  br label %cleanup

if.then150:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef nonnull %14) #7
  tail call void @clk_unprepare(ptr noundef nonnull %14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then150, %if.end140, %do.end12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end140 ], [ %call7, %if.then150 ], [ %call7, %do.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sta32x_remove(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata.i = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 4
  %needs_esd_watchdog.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %needs_esd_watchdog.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %needs_esd_watchdog.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.sta32x_watchdog_stop.exit_crit_edge, label %if.then.i

entry.sta32x_watchdog_stop.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sta32x_watchdog_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shutdown.i = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %shutdown.i, align 4
  %watchdog_work.i = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 8
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %watchdog_work.i) #7
  br label %sta32x_watchdog_stop.exit

sta32x_watchdog_stop.exit:                        ; preds = %if.then.i, %entry.sta32x_watchdog_stop.exit_crit_edge
  %supplies = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 2
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  %xti_clk = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %xti_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xti_clk, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %sta32x_watchdog_stop.exit.if.end_crit_edge, label %if.then

sta32x_watchdog_stop.exit.if.end_crit_edge:       ; preds = %sta32x_watchdog_stop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sta32x_watchdog_stop.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef nonnull %10) #7
  tail call void @clk_unprepare(ptr noundef nonnull %10) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %sta32x_watchdog_stop.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta32x_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta32x_set_bias_level.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta32x_set_bias_level, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !555

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta32x_set_bias_level.__UNIQUE_ID_ddebug301, ptr noundef %5, ptr noundef nonnull @.str.235, i32 noundef %level) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 5, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then7:                                         ; preds = %sw.bb5
  %supplies = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 2
  %call8 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.225, i32 noundef %call8) #10
  br label %cleanup

if.end15:                                         ; preds = %if.then7
  %gpiod_nreset.i = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %gpiod_nreset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpiod_nreset.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end15.sta32x_startup_sequence.exit_crit_edge, label %if.then.i

if.end15.sta32x_startup_sequence.exit_crit_edge:  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sta32x_startup_sequence.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %14, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #7
  %16 = ptrtoint ptr %gpiod_nreset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpiod_nreset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %17, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #7
  br label %sta32x_startup_sequence.exit

sta32x_startup_sequence.exit:                     ; preds = %if.then.i, %if.end15.sta32x_startup_sequence.exit_crit_edge
  tail call fastcc void @sta32x_cache_sync(ptr noundef %component)
  %pdata.i = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata.i, align 4
  %needs_esd_watchdog.i = getelementptr inbounds %struct.sta32x_platform_data, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %needs_esd_watchdog.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %needs_esd_watchdog.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i43 = icmp eq i32 %22, 0
  br i1 %tobool.not.i43, label %sta32x_startup_sequence.exit.if.end18_crit_edge, label %if.then.i45

sta32x_startup_sequence.exit.if.end18_crit_edge:  ; preds = %sta32x_startup_sequence.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then.i45:                                      ; preds = %sta32x_startup_sequence.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shutdown.i = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 9
  %23 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %shutdown.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %24 = load ptr, ptr @system_power_efficient_wq, align 4
  %watchdog_work.i = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 8
  %call.i44 = tail call i32 @round_jiffies_relative(i32 noundef 100) #7
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %watchdog_work.i, i32 noundef %call.i44) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then.i45, %sta32x_startup_sequence.exit.if.end18_crit_edge, %sw.bb5.if.end18_crit_edge
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 5, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb21:                                          ; preds = %do.end
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 5, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @msleep(i32 noundef 300) #7
  %pdata.i48 = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %pdata.i48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdata.i48, align 4
  %needs_esd_watchdog.i49 = getelementptr inbounds %struct.sta32x_platform_data, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %needs_esd_watchdog.i49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %needs_esd_watchdog.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i50 = icmp eq i32 %32, 0
  br i1 %tobool.not.i50, label %sw.bb21.sta32x_watchdog_stop.exit_crit_edge, label %if.then.i54

sw.bb21.sta32x_watchdog_stop.exit_crit_edge:      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sta32x_watchdog_stop.exit

if.then.i54:                                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %shutdown.i51 = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 9
  %33 = ptrtoint ptr %shutdown.i51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %shutdown.i51, align 4
  %watchdog_work.i52 = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 8
  %call.i53 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %watchdog_work.i52) #7
  br label %sta32x_watchdog_stop.exit

sta32x_watchdog_stop.exit:                        ; preds = %if.then.i54, %sw.bb21.sta32x_watchdog_stop.exit_crit_edge
  %gpiod_nreset = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 10
  %34 = ptrtoint ptr %gpiod_nreset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gpiod_nreset, align 4
  tail call void @gpiod_set_value(ptr noundef %35, i32 noundef 0) #7
  %supplies24 = getelementptr inbounds %struct.sta32x_priv, ptr %3, i32 0, i32 2
  %call26 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies24) #7
  br label %cleanup

cleanup:                                          ; preds = %sta32x_watchdog_stop.exit, %if.end18, %do.end13, %sw.bb, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end13 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %sta32x_watchdog_stop.exit ], [ 0, %if.end18 ], [ 0, %sw.bb ]
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sta32x_coefficient_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
define internal i32 @sta32x_coefficient_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %cfud = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfud) #7
  %8 = ptrtoint ptr %cfud to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %cfud, align 4, !annotation !556
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val, align 4, !annotation !556
  %coeff_lock = getelementptr inbounds %struct.sta32x_priv, ptr %5, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %coeff_lock, i32 noundef 0) #7
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %call3 = call i32 @regmap_read(ptr noundef %11, i32 noundef 38, ptr noundef nonnull %cfud) #7
  %12 = ptrtoint ptr %cfud to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfud, align 4
  %and4 = and i32 %13, 240
  store i32 %and4, ptr %cfud, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %call6 = call i32 @regmap_write(ptr noundef %15, i32 noundef 38, i32 noundef %and4) #7
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %call8 = call i32 @regmap_write(ptr noundef %17, i32 noundef 22, i32 noundef %and) #7
  %trunc = trunc i32 %shr to i16
  %18 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.254)
  switch i16 %trunc, label %entry.exit_unlock_crit_edge [
    i16 1, label %if.then
    i16 5, label %if.then12
  ]

entry.exit_unlock_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %21 = ptrtoint ptr %cfud to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfud, align 4
  %or = or i32 %22, 4
  %call10 = call i32 @regmap_write(ptr noundef %20, i32 noundef 38, i32 noundef %or) #7
  br label %if.end17

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %25 = ptrtoint ptr %cfud to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cfud, align 4
  %or14 = or i32 %26, 8
  %call15 = call i32 @regmap_write(ptr noundef %24, i32 noundef 38, i32 noundef %or14) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %cmp1836.not = icmp ult i32 %7, 65536
  br i1 %cmp1836.not, label %if.end17.exit_unlock_crit_edge, label %for.body.lr.ph

if.end17.exit_unlock_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
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
  %call20 = call i32 @regmap_read(ptr noundef %28, i32 noundef %add, ptr noundef nonnull %val) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.exit_unlock_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

exit_unlock:                                      ; preds = %for.body.exit_unlock_crit_edge, %if.end17.exit_unlock_crit_edge, %entry.exit_unlock_crit_edge
  %ret.0 = phi i32 [ -22, %entry.exit_unlock_crit_edge ], [ 0, %if.end17.exit_unlock_crit_edge ], [ 0, %for.body.exit_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %coeff_lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfud) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta32x_coefficient_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  %cfud = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfud) #7
  %8 = ptrtoint ptr %cfud to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %cfud, align 4, !annotation !556
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call3 = call i32 @regmap_read(ptr noundef %10, i32 noundef 38, ptr noundef nonnull %cfud) #7
  %11 = ptrtoint ptr %cfud to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfud, align 4
  %and4 = and i32 %12, 240
  store i32 %and4, ptr %cfud, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call6 = call i32 @regmap_write(ptr noundef %14, i32 noundef 38, i32 noundef %and4) #7
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %call8 = call i32 @regmap_write(ptr noundef %16, i32 noundef 22, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %cmp82.not = icmp ult i32 %7, 65536
  br i1 %cmp82.not, label %entry.for.end37_crit_edge, label %land.rhs.lr.ph

entry.for.end37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  %arrayidx23 = getelementptr %struct.sta32x_priv, ptr %5, i32 0, i32 7, i32 %add
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or21, ptr %arrayidx23, align 4
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond86.not = icmp eq i32 %inc, %umax
  br i1 %exitcond86.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge
  br i1 %cmp82.not, label %for.end.for.end37_crit_edge, label %for.body28.lr.ph

for.end.for.end37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
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
  %call34 = call i32 @regmap_write(ptr noundef %26, i32 noundef %add30, i32 noundef %conv33) #7
  %inc36 = add nuw nsw i32 %i.185, 1
  %exitcond88.not = icmp eq i32 %inc36, %umax87
  br i1 %exitcond88.not, label %for.body28.for.end37_crit_edge, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

for.body28.for.end37_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37

for.end37:                                        ; preds = %for.body28.for.end37_crit_edge, %for.end.for.end37_crit_edge, %entry.for.end37_crit_edge
  %trunc = trunc i32 %shr to i16
  %29 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.255)
  switch i16 %trunc, label %for.end37.cleanup_crit_edge [
    i16 1, label %if.then
    i16 5, label %if.then45
  ]

for.end37.cleanup_crit_edge:                      ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %32 = ptrtoint ptr %cfud to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cfud, align 4
  %or41 = or i32 %33, 1
  %call42 = call i32 @regmap_write(ptr noundef %31, i32 noundef 38, i32 noundef %or41) #7
  br label %cleanup

if.then45:                                        ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %36 = ptrtoint ptr %cfud to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfud, align 4
  %or47 = or i32 %37, 2
  %call48 = call i32 @regmap_write(ptr noundef %35, i32 noundef 38, i32 noundef %or47) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.then, %for.end37.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.end37.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfud) #7
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
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sta32x_watchdog(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -308
  %component1 = getelementptr i8, ptr %work, i32 -264
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 0) #7
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_cache_bypass(ptr noundef %3, i1 noundef zeroext true) #7
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 0) #7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_cache_bypass(ptr noundef %5, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %call)
  %cmp.not = icmp eq i32 %call2, %call
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #7
  tail call fastcc void @sta32x_cache_sync(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %shutdown = getelementptr i8, ptr %work, i32 100
  %8 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %10 = load ptr, ptr @system_power_efficient_wq, align 4
  %call7 = tail call i32 @round_jiffies_relative(i32 noundef 100) #7
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work, i32 noundef %call7) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sta32x_cache_sync(ptr nocapture noundef readonly %component) unnamed_addr #2 align 64 {
entry:
  %cfud.i = alloca i32, align 4
  %mute = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mute) #7
  %4 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mute, align 4, !annotation !556
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 6, ptr noundef nonnull %mute) #7
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %9 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mute, align 4
  %or = or i32 %10, 1
  %call3 = call i32 @regmap_write(ptr noundef %8, i32 noundef 6, i32 noundef %or) #7
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfud.i) #7
  %15 = ptrtoint ptr %cfud.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %cfud.i, align 4, !annotation !556
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %14, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %17, i32 noundef 38, ptr noundef nonnull %cfud.i) #7
  %18 = ptrtoint ptr %cfud.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cfud.i, align 4
  %and.i = and i32 %19, 240
  store i32 %and.i, ptr %cfud.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %14, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %21, i32 noundef 22, i32 noundef %i.01.i) #7
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %14, align 4
  %arrayidx.i = getelementptr %struct.sta32x_priv, ptr %14, i32 0, i32 7, i32 %i.01.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %25, 16
  %and5.i = and i32 %shr.i, 255
  %call6.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 23, i32 noundef %and5.i) #7
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %14, align 4
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %shr10.i = lshr i32 %29, 8
  %and11.i = and i32 %shr10.i, 255
  %call12.i = call i32 @regmap_write(ptr noundef %27, i32 noundef 24, i32 noundef %and11.i) #7
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %14, align 4
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %and16.i = and i32 %33, 255
  %call17.i = call i32 @regmap_write(ptr noundef %31, i32 noundef 25, i32 noundef %and16.i) #7
  %34 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %14, align 4
  %36 = ptrtoint ptr %cfud.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfud.i, align 4
  %call19.i = call i32 @regmap_write(ptr noundef %35, i32 noundef 38, i32 noundef %37) #7
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %14, align 4
  %40 = ptrtoint ptr %cfud.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cfud.i, align 4
  %or.i = or i32 %41, 1
  %call21.i = call i32 @regmap_write(ptr noundef %39, i32 noundef 38, i32 noundef %or.i) #7
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 62
  br i1 %exitcond.not.i, label %sta32x_sync_coef_shadow.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

sta32x_sync_coef_shadow.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfud.i) #7
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %call6 = call i32 @regcache_sync(ptr noundef %43) #7
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %46 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mute, align 4
  %call8 = call i32 @regmap_write(ptr noundef %45, i32 noundef 6, i32 noundef %47) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mute) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta32x_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta32x_set_dai_sysclk.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta32x_set_dai_sysclk, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !555

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta32x_set_dai_sysclk.__UNIQUE_ID_ddebug294, ptr noundef %7, ptr noundef nonnull @.str.238, i32 noundef %freq) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mclk = getelementptr inbounds %struct.sta32x_priv, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq, ptr %mclk, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta32x_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %and2 = and i32 %fmt, 15
  %and2.off = add nsw i32 %and2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2.off)
  %switch = icmp ult i32 %and2.off, 3
  br i1 %switch, label %sw.bb, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %sw.epilog
  %format = getelementptr inbounds %struct.sta32x_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and2, ptr %format, align 4
  %and6 = and i32 %fmt, 3840
  %7 = zext i32 %and6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.256)
  switch i32 %and6, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.sw.epilog14_crit_edge
    i32 512, label %sw.bb9
  ]

sw.bb.sw.epilog14_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog14

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %sw.bb9, %sw.bb.sw.epilog14_crit_edge
  %confb.0 = phi i32 [ 64, %sw.bb9 ], [ 128, %sw.bb.sw.epilog14_crit_edge ]
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 1, i32 noundef 192, i32 noundef %confb.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog14, %sw.bb.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog14 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sta32x_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %mclk = getelementptr inbounds %struct.sta32x_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.239) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %div = udiv i32 %7, %9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta32x_hw_params.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta32x_hw_params, %if.then9)) #7
          to label %do.end13 [label %if.then9], !srcloc !555

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta32x_hw_params.__UNIQUE_ID_ddebug295, ptr noundef %11, ptr noundef nonnull @.str.241, i32 noundef %9, i32 noundef %div) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %if.end
  %12 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.257)
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.6:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.243, i32 noundef %9) #10
  br label %cleanup

for.end.fold.split:                               ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split269:                            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split270:                            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split271:                            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split272:                            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end.fold.split273:                            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split273, %for.end.fold.split272, %for.end.fold.split271, %for.end.fold.split270, %for.end.fold.split269, %for.end.fold.split, %do.end13.for.end_crit_edge
  %i.0265.lcssa = phi i32 [ 0, %do.end13.for.end_crit_edge ], [ 1, %for.end.fold.split ], [ 2, %for.end.fold.split269 ], [ 3, %for.end.fold.split270 ], [ 4, %for.end.fold.split271 ], [ 5, %for.end.fold.split272 ], [ 6, %for.end.fold.split273 ]
  %ir17 = getelementptr [7 x %struct.anon.108], ptr @interpolation_ratios, i32 0, i32 %i.0265.lcssa, i32 1
  %15 = ptrtoint ptr %ir17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ir17, align 4
  %arrayidx30 = getelementptr [3 x [7 x i32]], ptr @mcs_ratio_table, i32 0, i32 %16, i32 0
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %div)
  %cmp31 = icmp eq i32 %18, %div
  br i1 %cmp31, label %for.end.if.end43_crit_edge, label %for.inc34

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc34:                                        ; preds = %for.end
  %arrayidx30.1 = getelementptr [3 x [7 x i32]], ptr @mcs_ratio_table, i32 0, i32 %16, i32 1
  %19 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx30.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %div)
  %cmp31.1 = icmp eq i32 %20, %div
  br i1 %cmp31.1, label %for.inc34.if.end43_crit_edge, label %for.inc34.1

for.inc34.if.end43_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc34.1:                                      ; preds = %for.inc34
  %arrayidx30.2 = getelementptr [3 x [7 x i32]], ptr @mcs_ratio_table, i32 0, i32 %16, i32 2
  %21 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx30.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %div)
  %cmp31.2 = icmp eq i32 %22, %div
  br i1 %cmp31.2, label %for.inc34.1.if.end43_crit_edge, label %for.inc34.2

for.inc34.1.if.end43_crit_edge:                   ; preds = %for.inc34.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc34.2:                                      ; preds = %for.inc34.1
  %arrayidx30.3 = getelementptr [3 x [7 x i32]], ptr @mcs_ratio_table, i32 0, i32 %16, i32 3
  %23 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx30.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %div)
  %cmp31.3 = icmp eq i32 %24, %div
  br i1 %cmp31.3, label %for.inc34.2.if.end43_crit_edge, label %for.inc34.3

for.inc34.2.if.end43_crit_edge:                   ; preds = %for.inc34.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc34.3:                                      ; preds = %for.inc34.2
  %arrayidx30.4 = getelementptr [3 x [7 x i32]], ptr @mcs_ratio_table, i32 0, i32 %16, i32 4
  %25 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx30.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %div)
  %cmp31.4 = icmp eq i32 %26, %div
  br i1 %cmp31.4, label %for.inc34.3.if.end43_crit_edge, label %for.inc34.4

for.inc34.3.if.end43_crit_edge:                   ; preds = %for.inc34.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc34.4:                                      ; preds = %for.inc34.3
  %arrayidx30.5 = getelementptr [3 x [7 x i32]], ptr @mcs_ratio_table, i32 0, i32 %16, i32 5
  %27 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx30.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %div)
  %cmp31.5 = icmp eq i32 %28, %div
  br i1 %cmp31.5, label %for.inc34.4.if.end43_crit_edge, label %for.inc34.5

for.inc34.4.if.end43_crit_edge:                   ; preds = %for.inc34.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc34.5:                                      ; preds = %for.inc34.4
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.246, i32 noundef %div) #10
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end43.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end43.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %32, %if.end43.if.then.i.i.i_crit_edge ], [ %35, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %33 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !557
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  %36 = add i32 %call1.i, -16
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 31)
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %37, label %params_width.exit.cleanup_crit_edge [
    i32 4, label %do.body46
    i32 8, label %params_width.exit.do.body64_crit_edge
    i32 2, label %do.body88
    i32 1, label %do.body114
    i32 0, label %do.body140
  ]

params_width.exit.do.body64_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body64

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body46:                                        ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta32x_hw_params.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta32x_hw_params, %if.then58)) #7
          to label %do.body64 [label %if.then58], !srcloc !555

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta32x_hw_params.__UNIQUE_ID_ddebug296, ptr noundef %40, ptr noundef nonnull @.str.248) #7
  br label %do.body64

do.body64:                                        ; preds = %if.then58, %do.body46, %params_width.exit.do.body64_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta32x_hw_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta32x_hw_params, %if.then76)) #7
          to label %do.end80 [label %if.then76], !srcloc !555

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta32x_hw_params.__UNIQUE_ID_ddebug297, ptr noundef %42, ptr noundef nonnull @.str.249) #7
  br label %do.end80

do.end80:                                         ; preds = %if.then76, %do.body64
  %format = getelementptr inbounds %struct.sta32x_priv, ptr %5, i32 0, i32 6
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta32x_hw_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta32x_hw_params, %if.then100)) #7
          to label %do.end104 [label %if.then100], !srcloc !555

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta32x_hw_params.__UNIQUE_ID_ddebug298, ptr noundef %46, ptr noundef nonnull @.str.250) #7
  br label %do.end104

do.end104:                                        ; preds = %if.then100, %do.body88
  %format105 = getelementptr inbounds %struct.sta32x_priv, ptr %5, i32 0, i32 6
  %47 = ptrtoint ptr %format105 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %format105, align 4
  %switch.tableidx = add i32 %48, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %49 = icmp ult i32 %switch.tableidx, 3
  br i1 %49, label %switch.lookup, label %do.end104.sw.epilog165_crit_edge

do.end104.sw.epilog165_crit_edge:                 ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

do.body114:                                       ; preds = %params_width.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta32x_hw_params.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta32x_hw_params, %if.then126)) #7
          to label %do.end130 [label %if.then126], !srcloc !555

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta32x_hw_params.__UNIQUE_ID_ddebug299, ptr noundef %51, ptr noundef nonnull @.str.251) #7
  br label %do.end130

do.end130:                                        ; preds = %if.then126, %do.body114
  %format131 = getelementptr inbounds %struct.sta32x_priv, ptr %5, i32 0, i32 6
  %52 = ptrtoint ptr %format131 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %format131, align 4
  %switch.tableidx275 = add i32 %53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx275)
  %54 = icmp ult i32 %switch.tableidx275, 3
  br i1 %54, label %switch.lookup274, label %do.end130.sw.epilog165_crit_edge

do.end130.sw.epilog165_crit_edge:                 ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

do.body140:                                       ; preds = %params_width.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sta32x_hw_params.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sta32x_hw_params, %if.then152)) #7
          to label %do.end156 [label %if.then152], !srcloc !555

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sta32x_hw_params.__UNIQUE_ID_ddebug300, ptr noundef %56, ptr noundef nonnull @.str.252) #7
  br label %do.end156

do.end156:                                        ; preds = %if.then152, %do.body140
  %format157 = getelementptr inbounds %struct.sta32x_priv, ptr %5, i32 0, i32 6
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
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.sta32x_hw_params, i32 0, i32 %switch.tableidx
  %59 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog165

switch.lookup274:                                 ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep276 = getelementptr inbounds [3 x i32], ptr @switch.table.sta32x_hw_params.253, i32 0, i32 %switch.tableidx275
  %60 = ptrtoint ptr %switch.gep276 to i32
  call void @__asan_load4_noabort(i32 %60)
  %switch.load277 = load i32, ptr %switch.gep276, align 4
  br label %sw.epilog165

sw.epilog165:                                     ; preds = %switch.lookup274, %switch.lookup, %do.end156, %do.end130.sw.epilog165_crit_edge, %do.end104.sw.epilog165_crit_edge, %do.end80
  %confb.0 = phi i32 [ 0, %do.end130.sw.epilog165_crit_edge ], [ 0, %do.end104.sw.epilog165_crit_edge ], [ %switch.select232, %do.end80 ], [ %switch.select236, %do.end156 ], [ %switch.load, %switch.lookup ], [ %switch.load277, %switch.lookup274 ]
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 0, i32 noundef 27, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp167 = icmp slt i32 %call.i, 0
  br i1 %cmp167, label %sw.epilog165.cleanup_crit_edge, label %if.end169

sw.epilog165.cleanup_crit_edge:                   ; preds = %sw.epilog165
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end169:                                        ; preds = %sw.epilog165
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 4
  %call.i252 = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 1, i32 noundef 31, i32 noundef %confb.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %65 = tail call i32 @llvm.smin.i32(i32 %call.i252, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end169, %sw.epilog165.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %for.inc34.5, %for.inc.6, %do.end
  %retval.0 = phi i32 [ -22, %for.inc.6 ], [ -22, %for.inc34.5 ], [ -5, %do.end ], [ -22, %params_width.exit.cleanup_crit_edge ], [ %call.i, %sw.epilog165.cleanup_crit_edge ], [ %65, %if.end169 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 302)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 302)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !461, !463, !465, !467, !469, !471, !473, !474, !475, !476, !478, !479, !480, !482, !483, !484, !486, !487, !488, !489, !491, !492, !493, !494, !496, !497, !499, !501, !503, !505, !506, !507, !509, !510, !511, !512, !514, !515, !517, !518, !519, !521, !522, !523, !525, !526, !528, !529, !531, !532, !534, !535, !537, !538, !540, !542, !544}
!llvm.module.flags = !{!546, !547, !548, !549, !550, !551, !552, !553}
!llvm.ident = !{!554}

!0 = !{ptr @__initcall__kmod_snd_soc_sta32x__306_1182_sta32x_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_sta32x__306_1182_sta32x_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/sta32x.c", i32 1182, i32 1}
!2 = !{ptr @__exitcall_sta32x_i2c_driver_exit, !1, !"__exitcall_sta32x_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description307, !4, !"__UNIQUE_ID_description307", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/sta32x.c", i32 1184, i32 1}
!5 = !{ptr @__UNIQUE_ID_author308, !6, !"__UNIQUE_ID_author308", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/sta32x.c", i32 1185, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/sta32x.c", i32 1186, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/sta32x.c", i32 1175, i32 11}
!12 = !{ptr @sta32x_i2c_driver, !13, !"sta32x_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/sta32x.c", i32 1173, i32 26}
!14 = !{ptr @sta32x_i2c_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/sta32x.c", i32 1109, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/sta32x.c", i32 1121, i32 38}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/sta32x.c", i32 1132, i32 54}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/sta32x.c", i32 1144, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sta32x_i2c_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @sta32x_i2c_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @sta32x_i2c_probe._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/sta32x.c", i32 1148, i32 19}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/sta32x.c", i32 1151, i32 3}
!34 = !{ptr @sta32x_i2c_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sta32x_i2c_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/sta32x.c", i32 1160, i32 3}
!38 = !{ptr @sta32x_i2c_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sta32x_i2c_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/sta32x.c", i32 1052, i32 26}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/sta32x.c", i32 1054, i32 26}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/sta32x.c", i32 1056, i32 26}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/sta32x.c", i32 1058, i32 26}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/sta32x.c", i32 1061, i32 26}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/sta32x.c", i32 1063, i32 26}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/sta32x.c", i32 1065, i32 26}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/sta32x.c", i32 1067, i32 26}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/sta32x.c", i32 1071, i32 27}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/sta32x.c", i32 1075, i32 26}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/sta32x.c", i32 1078, i32 26}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/sta32x.c", i32 1081, i32 26}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/sta32x.c", i32 1084, i32 26}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/sta32x.c", i32 1088, i32 26}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/sta32x.c", i32 134, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/sta32x.c", i32 135, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/sta32x.c", i32 136, i32 2}
!74 = distinct !{null, !75, !"sta32x_supply_names", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/sta32x.c", i32 133, i32 20}
!76 = !{ptr @sta32x_regmap, !77, !"sta32x_regmap", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/sta32x.c", i32 1023, i32 35}
!78 = !{ptr @sta32x_write_regs, !79, !"sta32x_write_regs", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/sta32x.c", i32 117, i32 41}
!80 = !{ptr @sta32x_write_regs_range, !81, !"sta32x_write_regs_range", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/sta32x.c", i32 105, i32 34}
!82 = !{ptr @sta32x_read_regs, !83, !"sta32x_read_regs", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/sta32x.c", i32 122, i32 41}
!84 = !{ptr @sta32x_read_regs_range, !85, !"sta32x_read_regs_range", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/sta32x.c", i32 109, i32 34}
!86 = !{ptr @sta32x_volatile_regs, !87, !"sta32x_volatile_regs", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/sta32x.c", i32 127, i32 41}
!88 = !{ptr @sta32x_volatile_regs_range, !89, !"sta32x_volatile_regs_range", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/sta32x.c", i32 113, i32 34}
!90 = !{ptr @sta32x_regs, !91, !"sta32x_regs", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/sta32x.c", i32 59, i32 33}
!92 = !{ptr @sta32x_component, !93, !"sta32x_component", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/sta32x.c", i32 1006, i32 46}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/sta32x.c", i32 448, i32 1}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/sta32x.c", i32 449, i32 1}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/sta32x.c", i32 450, i32 1}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/sta32x.c", i32 451, i32 1}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/sta32x.c", i32 452, i32 1}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/sta32x.c", i32 453, i32 1}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/sta32x.c", i32 454, i32 1}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/sta32x.c", i32 455, i32 1}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/sta32x.c", i32 456, i32 1}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/sta32x.c", i32 457, i32 1}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/sta32x.c", i32 458, i32 1}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/sta32x.c", i32 459, i32 1}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/sta32x.c", i32 460, i32 1}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/sta32x.c", i32 461, i32 1}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/sta32x.c", i32 462, i32 1}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/sta32x.c", i32 463, i32 1}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/sta32x.c", i32 464, i32 1}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/sta32x.c", i32 465, i32 1}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/sta32x.c", i32 466, i32 1}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/sta32x.c", i32 467, i32 1}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/sta32x.c", i32 468, i32 1}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/sta32x.c", i32 469, i32 1}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/sta32x.c", i32 470, i32 1}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/sta32x.c", i32 471, i32 1}
!142 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/sta32x.c", i32 472, i32 1}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/sta32x.c", i32 473, i32 1}
!146 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/sta32x.c", i32 474, i32 1}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/sta32x.c", i32 475, i32 1}
!150 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/sta32x.c", i32 476, i32 1}
!152 = !{ptr @.str.82, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/sta32x.c", i32 477, i32 1}
!154 = !{ptr @.str.84, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/sta32x.c", i32 478, i32 1}
!156 = !{ptr @.str.85, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/sta32x.c", i32 479, i32 1}
!158 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/sta32x.c", i32 480, i32 1}
!160 = !{ptr @.str.87, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/sta32x.c", i32 481, i32 1}
!162 = !{ptr @.str.88, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/sta32x.c", i32 486, i32 1}
!164 = !{ptr @.str.90, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/sta32x.c", i32 488, i32 1}
!166 = !{ptr @.str.92, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/sta32x.c", i32 490, i32 1}
!168 = !{ptr @.str.94, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/sta32x.c", i32 492, i32 1}
!170 = !{ptr @.str.96, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/sta32x.c", i32 494, i32 1}
!172 = !{ptr @.str.98, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/sta32x.c", i32 496, i32 1}
!174 = !{ptr @.str.100, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/sta32x.c", i32 498, i32 1}
!176 = !{ptr @.str.102, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/sta32x.c", i32 500, i32 1}
!178 = !{ptr @.str.104, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/sta32x.c", i32 503, i32 1}
!180 = !{ptr @.str.105, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/sta32x.c", i32 504, i32 1}
!182 = !{ptr @.str.106, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/sta32x.c", i32 505, i32 1}
!184 = !{ptr @.str.107, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/sta32x.c", i32 506, i32 1}
!186 = !{ptr @.str.108, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/sta32x.c", i32 507, i32 1}
!188 = !{ptr @.str.109, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/sta32x.c", i32 508, i32 1}
!190 = !{ptr @.str.110, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/sta32x.c", i32 509, i32 1}
!192 = !{ptr @.str.111, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/sta32x.c", i32 510, i32 1}
!194 = !{ptr @.str.112, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/sta32x.c", i32 511, i32 1}
!196 = !{ptr @.str.113, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/sta32x.c", i32 512, i32 1}
!198 = !{ptr @.str.114, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/sta32x.c", i32 513, i32 1}
!200 = !{ptr @.str.115, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/sta32x.c", i32 514, i32 1}
!202 = !{ptr @.str.116, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/sta32x.c", i32 515, i32 1}
!204 = !{ptr @.str.117, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/sta32x.c", i32 516, i32 1}
!206 = !{ptr @.str.118, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/sta32x.c", i32 517, i32 1}
!208 = !{ptr @.str.119, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/sta32x.c", i32 518, i32 1}
!210 = !{ptr @.str.120, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/sta32x.c", i32 519, i32 1}
!212 = !{ptr @.str.121, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/sta32x.c", i32 520, i32 1}
!214 = !{ptr @.str.122, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/sta32x.c", i32 521, i32 1}
!216 = !{ptr @.str.123, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/sta32x.c", i32 522, i32 1}
!218 = !{ptr @.str.124, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/sta32x.c", i32 523, i32 1}
!220 = !{ptr @.str.125, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/sta32x.c", i32 524, i32 1}
!222 = !{ptr @sta32x_snd_controls, !223, !"sta32x_snd_controls", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/sta32x.c", i32 447, i32 38}
!224 = !{ptr @mvol_tlv, !225, !"mvol_tlv", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/sta32x.c", i32 157, i32 14}
!226 = !{ptr @chvol_tlv, !227, !"chvol_tlv", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/sta32x.c", i32 158, i32 14}
!228 = !{ptr @sta32x_drc_ac_enum, !229, !"sta32x_drc_ac_enum", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/sta32x.c", i32 215, i32 8}
!230 = !{ptr @.str.126, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/sta32x.c", i32 162, i32 2}
!232 = !{ptr @.str.127, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/sta32x.c", i32 162, i32 19}
!234 = !{ptr @sta32x_drc_ac, !235, !"sta32x_drc_ac", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/sta32x.c", i32 161, i32 20}
!236 = !{ptr @sta32x_auto_eq_enum, !237, !"sta32x_auto_eq_enum", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/sta32x.c", i32 218, i32 8}
!238 = !{ptr @.str.128, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/sta32x.c", i32 164, i32 2}
!240 = !{ptr @.str.129, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/sta32x.c", i32 164, i32 10}
!242 = !{ptr @.str.130, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/sta32x.c", i32 164, i32 20}
!244 = !{ptr @sta32x_auto_eq_mode, !245, !"sta32x_auto_eq_mode", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/sta32x.c", i32 163, i32 20}
!246 = !{ptr @sta32x_auto_gc_enum, !247, !"sta32x_auto_gc_enum", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/sta32x.c", i32 221, i32 8}
!248 = !{ptr @.str.131, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/sta32x.c", i32 166, i32 10}
!250 = !{ptr @.str.132, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/sta32x.c", i32 166, i32 28}
!252 = !{ptr @.str.133, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/sta32x.c", i32 167, i32 2}
!254 = !{ptr @sta32x_auto_gc_mode, !255, !"sta32x_auto_gc_mode", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/sta32x.c", i32 165, i32 20}
!256 = !{ptr @sta32x_auto_xo_enum, !257, !"sta32x_auto_xo_enum", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/sta32x.c", i32 224, i32 8}
!258 = !{ptr @.str.134, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/sta32x.c", i32 169, i32 10}
!260 = !{ptr @.str.135, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/sta32x.c", i32 169, i32 18}
!262 = !{ptr @.str.136, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/sta32x.c", i32 169, i32 27}
!264 = !{ptr @.str.137, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/sta32x.c", i32 169, i32 36}
!266 = !{ptr @.str.138, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/sta32x.c", i32 169, i32 45}
!268 = !{ptr @.str.139, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/sta32x.c", i32 169, i32 54}
!270 = !{ptr @.str.140, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/sta32x.c", i32 169, i32 63}
!272 = !{ptr @.str.141, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/sta32x.c", i32 170, i32 2}
!274 = !{ptr @.str.142, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/sta32x.c", i32 170, i32 11}
!276 = !{ptr @.str.143, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/sta32x.c", i32 170, i32 20}
!278 = !{ptr @.str.144, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/sta32x.c", i32 170, i32 29}
!280 = !{ptr @.str.145, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/sta32x.c", i32 170, i32 38}
!282 = !{ptr @.str.146, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/sta32x.c", i32 170, i32 47}
!284 = !{ptr @.str.147, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/sta32x.c", i32 170, i32 56}
!286 = !{ptr @.str.148, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/sta32x.c", i32 170, i32 65}
!288 = !{ptr @sta32x_auto_xo_mode, !289, !"sta32x_auto_xo_mode", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/sta32x.c", i32 168, i32 20}
!290 = !{ptr @sta32x_preset_eq_enum, !291, !"sta32x_preset_eq_enum", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/sta32x.c", i32 227, i32 8}
!292 = !{ptr @.str.149, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/sta32x.c", i32 172, i32 2}
!294 = !{ptr @.str.150, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/sta32x.c", i32 172, i32 10}
!296 = !{ptr @.str.151, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/sta32x.c", i32 172, i32 18}
!298 = !{ptr @.str.152, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/sta32x.c", i32 172, i32 31}
!300 = !{ptr @.str.153, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/sta32x.c", i32 172, i32 39}
!302 = !{ptr @.str.154, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/sta32x.c", i32 172, i32 52}
!304 = !{ptr @.str.155, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/sta32x.c", i32 172, i32 61}
!306 = !{ptr @.str.156, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/sta32x.c", i32 172, i32 68}
!308 = !{ptr @.str.157, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/sta32x.c", i32 173, i32 2}
!310 = !{ptr @.str.158, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/sta32x.c", i32 173, i32 10}
!312 = !{ptr @.str.159, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/sta32x.c", i32 173, i32 19}
!314 = !{ptr @.str.160, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/sta32x.c", i32 173, i32 28}
!316 = !{ptr @.str.161, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/sta32x.c", i32 173, i32 39}
!318 = !{ptr @.str.162, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/sta32x.c", i32 173, i32 49}
!320 = !{ptr @.str.163, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/sta32x.c", i32 174, i32 2}
!322 = !{ptr @.str.164, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/sta32x.c", i32 174, i32 19}
!324 = !{ptr @.str.165, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/sta32x.c", i32 174, i32 36}
!326 = !{ptr @.str.166, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/sta32x.c", i32 174, i32 50}
!328 = !{ptr @.str.167, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/sta32x.c", i32 175, i32 2}
!330 = !{ptr @.str.168, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/sta32x.c", i32 175, i32 16}
!332 = !{ptr @.str.169, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/sta32x.c", i32 175, i32 30}
!334 = !{ptr @.str.170, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/sta32x.c", i32 175, i32 44}
!336 = !{ptr @.str.171, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/sta32x.c", i32 175, i32 58}
!338 = !{ptr @.str.172, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/sta32x.c", i32 176, i32 2}
!340 = !{ptr @.str.173, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/sta32x.c", i32 176, i32 16}
!342 = !{ptr @.str.174, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/sta32x.c", i32 176, i32 30}
!344 = !{ptr @.str.175, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/sta32x.c", i32 176, i32 45}
!346 = !{ptr @.str.176, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/sta32x.c", i32 176, i32 60}
!348 = !{ptr @.str.177, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/sta32x.c", i32 177, i32 2}
!350 = !{ptr @.str.178, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/sta32x.c", i32 177, i32 17}
!352 = !{ptr @.str.179, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/sta32x.c", i32 177, i32 32}
!354 = !{ptr @.str.180, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/sta32x.c", i32 177, i32 47}
!356 = !{ptr @sta32x_preset_eq_mode, !357, !"sta32x_preset_eq_mode", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/sta32x.c", i32 171, i32 20}
!358 = !{ptr @sta32x_limiter_ch1_enum, !359, !"sta32x_limiter_ch1_enum", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/sta32x.c", i32 230, i32 8}
!360 = !{ptr @.str.181, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/sta32x.c", i32 179, i32 2}
!362 = !{ptr @.str.182, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/sta32x.c", i32 179, i32 22}
!364 = !{ptr @.str.183, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/sta32x.c", i32 179, i32 36}
!366 = !{ptr @sta32x_limiter_select, !367, !"sta32x_limiter_select", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/sta32x.c", i32 178, i32 20}
!368 = !{ptr @sta32x_limiter_ch2_enum, !369, !"sta32x_limiter_ch2_enum", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/sta32x.c", i32 233, i32 8}
!370 = !{ptr @sta32x_limiter_ch3_enum, !371, !"sta32x_limiter_ch3_enum", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/sta32x.c", i32 236, i32 8}
!372 = !{ptr @tone_tlv, !373, !"tone_tlv", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/sta32x.c", i32 159, i32 14}
!374 = !{ptr @sta32x_limiter1_attack_rate_enum, !375, !"sta32x_limiter1_attack_rate_enum", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/sta32x.c", i32 239, i32 8}
!376 = !{ptr @.str.184, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/sta32x.c", i32 181, i32 2}
!378 = !{ptr @.str.185, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/sta32x.c", i32 181, i32 12}
!380 = !{ptr @.str.186, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/sta32x.c", i32 181, i32 22}
!382 = !{ptr @.str.187, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/sta32x.c", i32 181, i32 32}
!384 = !{ptr @.str.188, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/sta32x.c", i32 181, i32 42}
!386 = !{ptr @.str.189, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/sta32x.c", i32 181, i32 52}
!388 = !{ptr @.str.190, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/sta32x.c", i32 182, i32 2}
!390 = !{ptr @.str.191, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/sta32x.c", i32 182, i32 12}
!392 = !{ptr @.str.192, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/sta32x.c", i32 182, i32 22}
!394 = !{ptr @.str.193, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/sta32x.c", i32 182, i32 32}
!396 = !{ptr @.str.194, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/sta32x.c", i32 182, i32 42}
!398 = !{ptr @.str.195, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/sta32x.c", i32 182, i32 52}
!400 = !{ptr @.str.196, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/sta32x.c", i32 183, i32 2}
!402 = !{ptr @.str.197, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/sta32x.c", i32 183, i32 12}
!404 = !{ptr @.str.198, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/sta32x.c", i32 183, i32 22}
!406 = !{ptr @.str.199, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/sta32x.c", i32 183, i32 32}
!408 = !{ptr @sta32x_limiter_attack_rate, !409, !"sta32x_limiter_attack_rate", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/sta32x.c", i32 180, i32 20}
!410 = !{ptr @sta32x_limiter2_attack_rate_enum, !411, !"sta32x_limiter2_attack_rate_enum", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/sta32x.c", i32 242, i32 8}
!412 = !{ptr @sta32x_limiter1_release_rate_enum, !413, !"sta32x_limiter1_release_rate_enum", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/sta32x.c", i32 245, i32 8}
!414 = !{ptr @.str.200, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/sta32x.c", i32 185, i32 2}
!416 = !{ptr @.str.201, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/sta32x.c", i32 185, i32 12}
!418 = !{ptr @.str.202, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/sta32x.c", i32 185, i32 22}
!420 = !{ptr @.str.203, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/sta32x.c", i32 185, i32 32}
!422 = !{ptr @.str.204, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/sta32x.c", i32 185, i32 42}
!424 = !{ptr @.str.205, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/sta32x.c", i32 185, i32 52}
!426 = !{ptr @.str.206, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/sta32x.c", i32 186, i32 2}
!428 = !{ptr @.str.207, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/sta32x.c", i32 186, i32 12}
!430 = !{ptr @.str.208, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/sta32x.c", i32 186, i32 22}
!432 = !{ptr @.str.209, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/sta32x.c", i32 186, i32 32}
!434 = !{ptr @.str.210, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/sta32x.c", i32 186, i32 42}
!436 = !{ptr @.str.211, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/sta32x.c", i32 186, i32 52}
!438 = !{ptr @.str.212, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/sta32x.c", i32 187, i32 2}
!440 = !{ptr @.str.213, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/sta32x.c", i32 187, i32 12}
!442 = !{ptr @.str.214, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/sta32x.c", i32 187, i32 22}
!444 = !{ptr @.str.215, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/sta32x.c", i32 187, i32 32}
!446 = !{ptr @sta32x_limiter_release_rate, !447, !"sta32x_limiter_release_rate", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/sta32x.c", i32 184, i32 20}
!448 = !{ptr @sta32x_limiter2_release_rate_enum, !449, !"sta32x_limiter2_release_rate_enum", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/sta32x.c", i32 248, i32 8}
!450 = !{ptr @sta32x_limiter_ac_attack_tlv, !451, !"sta32x_limiter_ac_attack_tlv", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/sta32x.c", i32 188, i32 8}
!452 = !{ptr @sta32x_limiter_ac_release_tlv, !453, !"sta32x_limiter_ac_release_tlv", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/sta32x.c", i32 193, i32 8}
!454 = !{ptr @sta32x_limiter_drc_attack_tlv, !455, !"sta32x_limiter_drc_attack_tlv", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/sta32x.c", i32 201, i32 8}
!456 = !{ptr @sta32x_limiter_drc_release_tlv, !457, !"sta32x_limiter_drc_release_tlv", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/sta32x.c", i32 207, i32 8}
!458 = !{ptr @.str.216, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/soc/codecs/sta32x.c", i32 528, i32 1}
!460 = !{ptr @.str.217, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.218, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/sta32x.c", i32 529, i32 1}
!463 = !{ptr @.str.219, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/sta32x.c", i32 530, i32 1}
!465 = !{ptr @.str.220, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/sta32x.c", i32 531, i32 1}
!467 = !{ptr @sta32x_dapm_widgets, !468, !"sta32x_dapm_widgets", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/sta32x.c", i32 527, i32 41}
!469 = !{ptr @sta32x_dapm_routes, !470, !"sta32x_dapm_routes", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/sta32x.c", i32 534, i32 40}
!471 = !{ptr @.str.222, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/sta32x.c", i32 886, i32 4}
!473 = !{ptr @.str.223, !472, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @sta32x_probe._entry, !472, !"_entry", i1 false, i1 false}
!475 = !{ptr @sta32x_probe._entry_ptr, !472, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.225, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/sta32x.c", i32 895, i32 3}
!478 = !{ptr @sta32x_probe._entry.224, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @sta32x_probe._entry_ptr.226, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.228, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/soc/codecs/sta32x.c", i32 901, i32 3}
!482 = !{ptr @sta32x_probe._entry.227, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @sta32x_probe._entry_ptr.229, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @sta32x_probe.__key, !485, !"__key", i1 false, i1 false}
!485 = !{!"../sound/soc/codecs/sta32x.c", i32 979, i32 3}
!486 = !{ptr @.str.230, !485, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @sta32x_probe.__key.231, !485, !"__key", i1 false, i1 false}
!488 = !{ptr @.str.232, !485, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @.str.233, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/sta32x.c", i32 807, i32 2}
!491 = !{ptr @.str.234, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @.str.235, !490, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @sta32x_set_bias_level.__UNIQUE_ID_ddebug301, !490, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!494 = !{ptr @sta32x_set_bias_level._entry, !495, !"_entry", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/sta32x.c", i32 824, i32 5}
!496 = !{ptr @sta32x_set_bias_level._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.236, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/sta32x.c", i32 864, i32 10}
!499 = !{ptr @sta32x_dai, !500, !"sta32x_dai", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/sta32x.c", i32 863, i32 34}
!501 = !{ptr @sta32x_dai_ops, !502, !"sta32x_dai_ops", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/sta32x.c", i32 857, i32 37}
!503 = !{ptr @.str.237, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/sta32x.c", i32 586, i32 2}
!505 = !{ptr @.str.238, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @sta32x_set_dai_sysclk.__UNIQUE_ID_ddebug294, !504, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!507 = !{ptr @.str.239, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/sta32x.c", i32 660, i32 3}
!509 = !{ptr @.str.240, !508, !"<string literal>", i1 false, i1 false}
!510 = !{ptr @sta32x_hw_params._entry, !508, !"_entry", i1 false, i1 false}
!511 = !{ptr @sta32x_hw_params._entry_ptr, !508, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @.str.241, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/soc/codecs/sta32x.c", i32 667, i32 2}
!514 = !{ptr @sta32x_hw_params.__UNIQUE_ID_ddebug295, !513, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!515 = !{ptr @.str.243, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/sta32x.c", i32 677, i32 3}
!517 = !{ptr @sta32x_hw_params._entry.242, !516, !"_entry", i1 false, i1 false}
!518 = !{ptr @sta32x_hw_params._entry_ptr.244, !516, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @.str.246, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/sta32x.c", i32 689, i32 3}
!521 = !{ptr @sta32x_hw_params._entry.245, !520, !"_entry", i1 false, i1 false}
!522 = !{ptr @sta32x_hw_params._entry_ptr.247, !520, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @.str.248, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/sta32x.c", i32 699, i32 3}
!525 = !{ptr @sta32x_hw_params.__UNIQUE_ID_ddebug296, !524, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!526 = !{ptr @.str.249, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/soc/codecs/sta32x.c", i32 702, i32 3}
!528 = !{ptr @sta32x_hw_params.__UNIQUE_ID_ddebug297, !527, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!529 = !{ptr @.str.250, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../sound/soc/codecs/sta32x.c", i32 717, i32 3}
!531 = !{ptr @sta32x_hw_params.__UNIQUE_ID_ddebug298, !530, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!532 = !{ptr @.str.251, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../sound/soc/codecs/sta32x.c", i32 732, i32 3}
!534 = !{ptr @sta32x_hw_params.__UNIQUE_ID_ddebug299, !533, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!535 = !{ptr @.str.252, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../sound/soc/codecs/sta32x.c", i32 747, i32 3}
!537 = !{ptr @sta32x_hw_params.__UNIQUE_ID_ddebug300, !536, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!538 = !{ptr @interpolation_ratios, !539, !"interpolation_ratios", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/sta32x.c", i32 544, i32 3}
!540 = !{ptr @mcs_ratio_table, !541, !"mcs_ratio_table", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/sta32x.c", i32 555, i32 12}
!542 = !{ptr @st32x_dt_ids, !543, !"st32x_dt_ids", i1 false, i1 false}
!543 = !{!"../sound/soc/codecs/sta32x.c", i32 1036, i32 34}
!544 = !{ptr @sta32x_i2c_id, !545, !"sta32x_i2c_id", i1 false, i1 false}
!545 = !{!"../sound/soc/codecs/sta32x.c", i32 1165, i32 35}
!546 = !{i32 1, !"wchar_size", i32 2}
!547 = !{i32 1, !"min_enum_size", i32 4}
!548 = !{i32 8, !"branch-target-enforcement", i32 0}
!549 = !{i32 8, !"sign-return-address", i32 0}
!550 = !{i32 8, !"sign-return-address-all", i32 0}
!551 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!552 = !{i32 7, !"uwtable", i32 1}
!553 = !{i32 7, !"frame-pointer", i32 2}
!554 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!555 = !{i64 2148987051, i64 2148987056, i64 2148987069, i64 2148987113, i64 2148987147, i64 2148987168}
!556 = !{!"auto-init"}
!557 = !{i32 0, i32 33}
